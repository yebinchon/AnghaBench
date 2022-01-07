; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_daisy.c_parport_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_daisy.c_parport_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daisydev = type { i32, i32, i32, %struct.daisydev* }
%struct.pardevice = type { i32 }
%struct.parport = type { i32 }

@topology = common dso_local global %struct.daisydev* null, align 8
@topology_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pardevice* @parport_open(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.daisydev*, align 8
  %7 = alloca %struct.parport*, align 8
  %8 = alloca %struct.pardevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load %struct.daisydev*, %struct.daisydev** @topology, align 8
  store %struct.daisydev* %11, %struct.daisydev** %6, align 8
  %12 = call i32 @spin_lock(i32* @topology_lock)
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %15 = icmp ne %struct.daisydev* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %18 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %26 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %25, i32 0, i32 3
  %27 = load %struct.daisydev*, %struct.daisydev** %26, align 8
  store %struct.daisydev* %27, %struct.daisydev** %6, align 8
  br label %13

28:                                               ; preds = %22
  %29 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %30 = icmp ne %struct.daisydev* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @spin_unlock(i32* @topology_lock)
  store %struct.pardevice* null, %struct.pardevice** %3, align 8
  br label %73

33:                                               ; preds = %28
  %34 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %35 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.daisydev*, %struct.daisydev** %6, align 8
  %38 = getelementptr inbounds %struct.daisydev, %struct.daisydev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.parport* @parport_get_port(i32 %39)
  store %struct.parport* %40, %struct.parport** %7, align 8
  %41 = call i32 @spin_unlock(i32* @topology_lock)
  %42 = load %struct.parport*, %struct.parport** %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call %struct.pardevice* @parport_register_device(%struct.parport* %42, i8* %43, i32* null, i32* null, i32* null, i32 0, i32* null)
  store %struct.pardevice* %44, %struct.pardevice** %8, align 8
  %45 = load %struct.parport*, %struct.parport** %7, align 8
  %46 = call i32 @parport_put_port(%struct.parport* %45)
  %47 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  %48 = icmp ne %struct.pardevice* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  store %struct.pardevice* null, %struct.pardevice** %3, align 8
  br label %73

50:                                               ; preds = %33
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  %53 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  %58 = call i32 @parport_claim_or_block(%struct.pardevice* %57)
  %59 = load %struct.parport*, %struct.parport** %7, align 8
  %60 = getelementptr inbounds %struct.parport, %struct.parport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  %63 = call i32 @parport_release(%struct.pardevice* %62)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  %69 = call i32 @parport_unregister_device(%struct.pardevice* %68)
  store %struct.pardevice* null, %struct.pardevice** %3, align 8
  br label %73

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.pardevice*, %struct.pardevice** %8, align 8
  store %struct.pardevice* %72, %struct.pardevice** %3, align 8
  br label %73

73:                                               ; preds = %71, %67, %49, %31
  %74 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  ret %struct.pardevice* %74
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.parport* @parport_get_port(i32) #1

declare dso_local %struct.pardevice* @parport_register_device(%struct.parport*, i8*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @parport_put_port(%struct.parport*) #1

declare dso_local i32 @parport_claim_or_block(%struct.pardevice*) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
