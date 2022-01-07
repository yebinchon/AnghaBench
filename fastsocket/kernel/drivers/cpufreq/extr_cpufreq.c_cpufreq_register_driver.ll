; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_driver = type { i32, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"trying to register driver %s\0A\00", align 1
@CPUFREQ_CONST_LOOPS = common dso_local global i32 0, align 4
@cpufreq_driver_lock = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.cpufreq_driver* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@cpu_sysdev_class = common dso_local global i32 0, align 4
@cpufreq_sysdev_driver = common dso_local global i32 0, align 4
@CPUFREQ_STICKY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@cpufreq_cpu_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"no CPU initialized for driver %s\0A\00", align 1
@cpufreq_cpu_notifier = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"driver %s up and running\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_register_driver(%struct.cpufreq_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_driver*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_driver* %0, %struct.cpufreq_driver** %3, align 8
  %7 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %8 = icmp ne %struct.cpufreq_driver* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %26 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %14, %9, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %118

32:                                               ; preds = %24, %19
  %33 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %34 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %38 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %43 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %44 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @write_lock_irqsave(i32* @cpufreq_driver_lock, i64 %48)
  %50 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %51 = icmp ne %struct.cpufreq_driver* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @write_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %118

57:                                               ; preds = %47
  %58 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  store %struct.cpufreq_driver* %58, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @write_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %59)
  %61 = call i32 @sysdev_driver_register(i32* @cpu_sysdev_class, i32* @cpufreq_sysdev_driver)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %106, label %64

64:                                               ; preds = %57
  %65 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %66 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CPUFREQ_STICKY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %89, %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @nr_cpu_ids, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @cpu_possible(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @cpufreq_cpu_data, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @per_cpu(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %92

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %74

92:                                               ; preds = %87, %74
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %97 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = call i32 @sysdev_driver_unregister(i32* @cpu_sysdev_class, i32* @cpufreq_sysdev_driver)
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @write_lock_irqsave(i32* @cpufreq_driver_lock, i64 %101)
  store %struct.cpufreq_driver* null, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @write_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %103)
  br label %105

105:                                              ; preds = %95, %92
  br label %106

106:                                              ; preds = %105, %64, %57
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = call i32 @register_hotcpu_notifier(i32* @cpufreq_cpu_notifier)
  %111 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %112 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = call i32 (...) @cpufreq_debug_enable_ratelimit()
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %52, %29
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sysdev_driver_register(i32*, i32*) #1

declare dso_local i64 @cpu_possible(i32) #1

declare dso_local i64 @per_cpu(i32, i32) #1

declare dso_local i32 @sysdev_driver_unregister(i32*, i32*) #1

declare dso_local i32 @register_hotcpu_notifier(i32*) #1

declare dso_local i32 @cpufreq_debug_enable_ratelimit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
