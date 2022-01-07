; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_measure_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_measure_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.TYPE_2__ = type { i64 }

@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*)* @gameport_measure_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gameport_measure_speed(%struct.gameport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %13 = call i64 @gameport_open(%struct.gameport* %11, i32* null, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  store i64 1073741824, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 50
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @rdtscl(i64 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %31, %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp ult i32 %26, 50
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.gameport*, %struct.gameport** %3, align 8
  %30 = call i32 @gameport_read(%struct.gameport* %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %25

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @rdtscl(i64 %35)
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = mul i32 %39, 10
  %41 = call i32 @udelay(i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %47, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.gameport*, %struct.gameport** %3, align 8
  %57 = call i32 @gameport_close(%struct.gameport* %56)
  %58 = call i32 (...) @raw_smp_processor_id()
  %59 = call i64 @cpu_data(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = udiv i64 %65, 20
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %72

70:                                               ; preds = %55
  %71 = load i64, i64* %6, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i64 [ 1, %69 ], [ %71, %70 ]
  %74 = udiv i64 %66, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @gameport_open(%struct.gameport*, i32*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rdtscl(i64) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i64 @cpu_data(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
