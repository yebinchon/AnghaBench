; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_unregister_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_pc.c_parport_pc_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64, i64, i32, i32, %struct.parport_pc_private*, %struct.TYPE_2__*, i64, i64, %struct.parport_pc_private* }
%struct.TYPE_2__ = type { i32 }
%struct.parport_pc_private = type { i32, i64, i32 }
%struct.parport_operations = type { i32, i64, i32 }

@ports_lock = common dso_local global i32 0, align 4
@PARPORT_IRQ_NONE = common dso_local global i64 0, align 8
@PARPORT_MODE_ECP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PARPORT_DMA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parport_pc_unregister_port(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_pc_private*, align 8
  %4 = alloca %struct.parport_operations*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = load %struct.parport*, %struct.parport** %2, align 8
  %6 = getelementptr inbounds %struct.parport, %struct.parport* %5, i32 0, i32 4
  %7 = load %struct.parport_pc_private*, %struct.parport_pc_private** %6, align 8
  store %struct.parport_pc_private* %7, %struct.parport_pc_private** %3, align 8
  %8 = load %struct.parport*, %struct.parport** %2, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 8
  %10 = load %struct.parport_pc_private*, %struct.parport_pc_private** %9, align 8
  %11 = bitcast %struct.parport_pc_private* %10 to %struct.parport_operations*
  store %struct.parport_operations* %11, %struct.parport_operations** %4, align 8
  %12 = load %struct.parport*, %struct.parport** %2, align 8
  %13 = call i32 @parport_remove_port(%struct.parport* %12)
  %14 = call i32 @spin_lock(i32* @ports_lock)
  %15 = load %struct.parport_pc_private*, %struct.parport_pc_private** %3, align 8
  %16 = getelementptr inbounds %struct.parport_pc_private, %struct.parport_pc_private* %15, i32 0, i32 2
  %17 = call i32 @list_del_init(i32* %16)
  %18 = call i32 @spin_unlock(i32* @ports_lock)
  %19 = load %struct.parport*, %struct.parport** %2, align 8
  %20 = getelementptr inbounds %struct.parport, %struct.parport* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.parport*, %struct.parport** %2, align 8
  %26 = getelementptr inbounds %struct.parport, %struct.parport* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.parport*, %struct.parport** %2, align 8
  %29 = call i32 @free_irq(i64 %27, %struct.parport* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.parport*, %struct.parport** %2, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @release_region(i64 %33, i32 3)
  %35 = load %struct.parport*, %struct.parport** %2, align 8
  %36 = getelementptr inbounds %struct.parport, %struct.parport* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 3
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.parport*, %struct.parport** %2, align 8
  %41 = getelementptr inbounds %struct.parport, %struct.parport* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 3
  %44 = load %struct.parport*, %struct.parport** %2, align 8
  %45 = getelementptr inbounds %struct.parport, %struct.parport* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 3
  %48 = call i32 @release_region(i64 %43, i32 %47)
  br label %49

49:                                               ; preds = %39, %30
  %50 = load %struct.parport*, %struct.parport** %2, align 8
  %51 = getelementptr inbounds %struct.parport, %struct.parport* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PARPORT_MODE_ECP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.parport*, %struct.parport** %2, align 8
  %58 = getelementptr inbounds %struct.parport, %struct.parport* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @release_region(i64 %59, i32 3)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.parport*, %struct.parport** %2, align 8
  %63 = getelementptr inbounds %struct.parport, %struct.parport* %62, i32 0, i32 4
  %64 = load %struct.parport_pc_private*, %struct.parport_pc_private** %63, align 8
  %65 = call i32 @kfree(%struct.parport_pc_private* %64)
  %66 = load %struct.parport*, %struct.parport** %2, align 8
  %67 = call i32 @parport_put_port(%struct.parport* %66)
  %68 = load %struct.parport_operations*, %struct.parport_operations** %4, align 8
  %69 = bitcast %struct.parport_operations* %68 to %struct.parport_pc_private*
  %70 = call i32 @kfree(%struct.parport_pc_private* %69)
  ret void
}

declare dso_local i32 @parport_remove_port(%struct.parport*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.parport*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.parport_pc_private*) #1

declare dso_local i32 @parport_put_port(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
