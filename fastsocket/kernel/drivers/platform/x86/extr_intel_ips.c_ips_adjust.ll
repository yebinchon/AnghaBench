; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { %struct.TYPE_2__*, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"starting ips-adjust thread\0A\00", align 1
@IPS_ADJUST_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ips-adjust thread stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ips_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_adjust(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ips_driver*
  store %struct.ips_driver* %8, %struct.ips_driver** %3, align 8
  %9 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %10 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %96, %1
  %15 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %16 = call i32 @ips_cpu_busy(%struct.ips_driver* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %18 = call i32 @ips_gpu_busy(%struct.ips_driver* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %20 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %19, i32 0, i32 3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %24 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %29 = call i32 @update_turbo_limits(%struct.ips_driver* %28)
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %32 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %31, i32 0, i32 3
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %36 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %41 = call i32 @ips_enable_cpu_turbo(%struct.ips_driver* %40)
  br label %45

42:                                               ; preds = %30
  %43 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %44 = call i32 @ips_disable_cpu_turbo(%struct.ips_driver* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %47 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %52 = call i32 @ips_enable_gpu_turbo(%struct.ips_driver* %51)
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %55 = call i32 @ips_disable_gpu_turbo(%struct.ips_driver* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %58 = call i64 @mcp_exceeded(%struct.ips_driver* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %62 = call i32 @ips_cpu_lower(%struct.ips_driver* %61)
  %63 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %64 = call i32 @ips_gpu_lower(%struct.ips_driver* %63)
  br label %92

65:                                               ; preds = %56
  %66 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %67 = call i32 @cpu_exceeded(%struct.ips_driver* %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %74 = call i32 @ips_cpu_raise(%struct.ips_driver* %73)
  br label %78

75:                                               ; preds = %69, %65
  %76 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %77 = call i32 @ips_cpu_lower(%struct.ips_driver* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %80 = call i32 @mch_exceeded(%struct.ips_driver* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %87 = call i32 @ips_gpu_raise(%struct.ips_driver* %86)
  br label %91

88:                                               ; preds = %82, %78
  %89 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %90 = call i32 @ips_gpu_lower(%struct.ips_driver* %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* @IPS_ADJUST_PERIOD, align 4
  %94 = call i32 @msecs_to_jiffies(i32 %93)
  %95 = call i32 @schedule_timeout_interruptible(i32 %94)
  br label %96

96:                                               ; preds = %92
  %97 = call i32 (...) @kthread_should_stop()
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br i1 %99, label %14, label %100

100:                                              ; preds = %96
  %101 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %102 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ips_cpu_busy(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_busy(%struct.ips_driver*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_turbo_limits(%struct.ips_driver*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ips_enable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_disable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_enable_gpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @ips_disable_gpu_turbo(%struct.ips_driver*) #1

declare dso_local i64 @mcp_exceeded(%struct.ips_driver*) #1

declare dso_local i32 @ips_cpu_lower(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_lower(%struct.ips_driver*) #1

declare dso_local i32 @cpu_exceeded(%struct.ips_driver*, i32) #1

declare dso_local i32 @ips_cpu_raise(%struct.ips_driver*) #1

declare dso_local i32 @mch_exceeded(%struct.ips_driver*) #1

declare dso_local i32 @ips_gpu_raise(%struct.ips_driver*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
