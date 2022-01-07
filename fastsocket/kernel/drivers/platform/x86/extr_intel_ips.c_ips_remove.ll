; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ips_driver = type { i32, i32, i64, i64, %struct.TYPE_2__*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@i915_read_mch_val = common dso_local global i32 0, align 4
@i915_gpu_raise = common dso_local global i32 0, align 4
@i915_gpu_lower = common dso_local global i32 0, align 4
@i915_gpu_busy = common dso_local global i32 0, align 4
@i915_gpu_turbo_disable = common dso_local global i32 0, align 4
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDC_OVR_EN = common dso_local global i32 0, align 4
@TURBO_TDP_OVR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IPS driver removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ips_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ips_driver* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ips_driver* %6, %struct.ips_driver** %3, align 8
  %7 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %8 = icmp ne %struct.ips_driver* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %108

10:                                               ; preds = %1
  %11 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %12 = call i32 @ips_debugfs_cleanup(%struct.ips_driver* %11)
  %13 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %14 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @i915_read_mch_val, align 4
  %19 = call i32 @symbol_put(i32 %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %22 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @i915_gpu_raise, align 4
  %27 = call i32 @symbol_put(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %30 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @i915_gpu_lower, align 4
  %35 = call i32 @symbol_put(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %38 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @i915_gpu_busy, align 4
  %43 = call i32 @symbol_put(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %46 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @i915_gpu_turbo_disable, align 4
  %51 = call i32 @symbol_put(i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @rdmsrl(i32 %53, i32 %54)
  %56 = load i32, i32* @TURBO_TDC_OVR_EN, align 4
  %57 = load i32, i32* @TURBO_TDP_OVR_EN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @wrmsrl(i32 %62, i32 %63)
  %65 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %66 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %67 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wrmsrl(i32 %65, i32 %68)
  %70 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %71 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.ips_driver* %75)
  %77 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %78 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %52
  %82 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %83 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @kthread_stop(i64 %84)
  br label %86

86:                                               ; preds = %81, %52
  %87 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %88 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %93 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @kthread_stop(i64 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %98 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @iounmap(i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %102 = call i32 @pci_release_regions(%struct.pci_dev* %101)
  %103 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %104 = call i32 @kfree(%struct.ips_driver* %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %96, %9
  ret void
}

declare dso_local %struct.ips_driver* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ips_debugfs_cleanup(%struct.ips_driver*) #1

declare dso_local i32 @symbol_put(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ips_driver*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ips_driver*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
