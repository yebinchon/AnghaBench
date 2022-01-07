; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_load_modeset_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_load_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"failed to find VBIOS tables\0A\00", align 1
@i915_vga_set_decode = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@i915_switcheroo_ops = common dso_local global i32 0, align 4
@intel_console_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_load_modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_load_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 3
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i32 @intel_parse_bios(%struct.drm_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load i32*, i32** @i915_vga_set_decode, align 8
  %21 = call i32 @vga_client_register(i32 %18, %struct.drm_device* %19, i32* null, i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %112

30:                                               ; preds = %24, %15
  %31 = call i32 (...) @intel_register_dsm_handler()
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vga_switcheroo_register_client(i32 %34, i32* @i915_switcheroo_ops)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %107

39:                                               ; preds = %30
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = call i32 @i915_gem_init_stolen(%struct.drm_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %102

45:                                               ; preds = %39
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = call i32 @drm_irq_install(%struct.drm_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %53 = call i32 @intel_modeset_init(%struct.drm_device* %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = call i32 @i915_gem_init(%struct.drm_device* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %96

59:                                               ; preds = %51
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 2
  %62 = load i32, i32* @intel_console_resume, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = call i32 @intel_modeset_gem_init(%struct.drm_device* %64)
  %66 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %69 = call i32 @intel_fbdev_init(%struct.drm_device* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %85

73:                                               ; preds = %59
  %74 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %75 = call i32 @intel_hpd_init(%struct.drm_device* %74)
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = call i32 @intel_fbdev_initial_config(%struct.drm_device* %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %80)
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  store i32 0, i32* %2, align 4
  br label %114

85:                                               ; preds = %72
  %86 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 2
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %90 = call i32 @i915_gem_cleanup_ringbuffer(%struct.drm_device* %89)
  %91 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 2
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = call i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device* %94)
  br label %96

96:                                               ; preds = %85, %58
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = call i32 @drm_irq_uninstall(%struct.drm_device* %97)
  br label %99

99:                                               ; preds = %96, %50
  %100 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %101 = call i32 @i915_gem_cleanup_stolen(%struct.drm_device* %100)
  br label %102

102:                                              ; preds = %99, %44
  %103 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vga_switcheroo_unregister_client(i32 %105)
  br label %107

107:                                              ; preds = %102, %38
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vga_client_register(i32 %110, %struct.drm_device* null, i32* null, i32* null)
  br label %112

112:                                              ; preds = %107, %29
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %73
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @intel_parse_bios(%struct.drm_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @vga_client_register(i32, %struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @intel_register_dsm_handler(...) #1

declare dso_local i32 @vga_switcheroo_register_client(i32, i32*) #1

declare dso_local i32 @i915_gem_init_stolen(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*) #1

declare dso_local i32 @intel_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init(%struct.drm_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @intel_modeset_gem_init(%struct.drm_device*) #1

declare dso_local i32 @intel_fbdev_init(%struct.drm_device*) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_device*) #1

declare dso_local i32 @intel_fbdev_initial_config(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_cleanup_ringbuffer(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_cleanup_stolen(%struct.drm_device*) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
