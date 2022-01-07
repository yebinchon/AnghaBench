; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@apm_cpu_idle.use_apm_idle = internal global i32 0, align 4
@apm_cpu_idle.last_jiffies = internal global i32 0, align 4
@apm_cpu_idle.last_stime = internal global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IDLE_CALC_LIMIT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@idle_period = common dso_local global i32 0, align 4
@idle_threshold = common dso_local global i32 0, align 4
@apm_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IDLE_LEAKY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_cpu_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_cpu_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @apm_cpu_idle.last_jiffies, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %92, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IDLE_CALC_LIMIT, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  store i32 0, i32* @apm_cpu_idle.use_apm_idle, align 4
  %14 = load i32, i32* @jiffies, align 4
  store i32 %14, i32* @apm_cpu_idle.last_jiffies, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @apm_cpu_idle.last_stime, align 4
  br label %46

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @idle_period, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @apm_cpu_idle.last_stime, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul i32 %28, 100
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = udiv i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @idle_threshold, align 4
  %35 = icmp ugt i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @apm_cpu_idle.use_apm_idle, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i32 0, i32* @apm_cpu_idle.use_apm_idle, align 4
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* @jiffies, align 4
  store i32 %41, i32* @apm_cpu_idle.last_jiffies, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @apm_cpu_idle.last_stime, align 4
  br label %45

45:                                               ; preds = %40, %18
  br label %46

46:                                               ; preds = %45, %13
  %47 = load i32, i32* @IDLE_LEAKY_MAX, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %93, %71, %65, %46
  %49 = call i32 (...) @need_resched()
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = load i32, i32* @apm_cpu_idle.use_apm_idle, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load i32, i32* @jiffies, align 4
  store i32 %56, i32* %5, align 4
  %57 = call i32 (...) @apm_do_idle()
  switch i32 %57, label %77 [
    i32 0, label %58
    i32 1, label %76
  ]

58:                                               ; preds = %55
  store i32 1, i32* %1, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @jiffies, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @IDLE_LEAKY_MAX, align 4
  store i32 %66, i32* %3, align 4
  br label %48

67:                                               ; preds = %62
  br label %75

68:                                               ; preds = %58
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %3, align 4
  br label %48

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %67
  br label %78

76:                                               ; preds = %55
  store i32 1, i32* %1, align 4
  br label %78

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %76, %75
  br label %79

79:                                               ; preds = %78, %52
  br i1 true, label %80, label %82

80:                                               ; preds = %79
  %81 = call i32 (...) @original_pm_idle()
  br label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @default_idle()
  br label %84

84:                                               ; preds = %82, %80
  %85 = call i32 (...) @local_irq_disable()
  %86 = load i32, i32* @jiffies, align 4
  %87 = load i32, i32* @apm_cpu_idle.last_jiffies, align 4
  %88 = sub i32 %86, %87
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @idle_period, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %9

93:                                               ; preds = %84
  br label %48

94:                                               ; preds = %48
  %95 = load i32, i32* %1, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @apm_do_busy()
  br label %99

99:                                               ; preds = %97, %94
  %100 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @apm_do_idle(...) #1

declare dso_local i32 @original_pm_idle(...) #1

declare dso_local i32 @default_idle(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @apm_do_busy(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
