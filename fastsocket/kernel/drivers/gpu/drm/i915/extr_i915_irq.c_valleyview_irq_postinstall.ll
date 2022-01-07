; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_valleyview_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_valleyview_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { i32 }

@PLANE_FLIP_DONE_INT_EN_VLV = common dso_local global i32 0, align 4
@I915_DISPLAY_PORT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_A_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_B_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@VLV_IMR = common dso_local global i32 0, align 4
@VLV_IER = common dso_local global i32 0, align 4
@VLV_IIR = common dso_local global i32 0, align 4
@PIPE_GMBUS_EVENT_ENABLE = common dso_local global i32 0, align 4
@GTIIR = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@GT_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN6_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN6_BLITTER_USER_INTERRUPT = common dso_local global i32 0, align 4
@GTIER = common dso_local global i32 0, align 4
@VLV_MASTER_IER = common dso_local global i32 0, align 4
@MASTER_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@DPINVGTT = common dso_local global i32 0, align 4
@DPINVGTT_EN_MASK = common dso_local global i32 0, align 4
@DPINVGTT_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @valleyview_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valleyview_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load i32, i32* @PLANE_FLIP_DONE_INT_EN_VLV, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @I915_DISPLAY_PORT_INTERRUPT, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @I915_DISPLAY_PIPE_A_EVENT_INTERRUPT, align 4
  %15 = load i32, i32* @I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I915_DISPLAY_PIPE_B_EVENT_INTERRUPT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_write_config_dword(i32 %43, i32 148, i32 -18874368)
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_read_config_word(i32 %47, i32 152, i32* %7)
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 16384
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pci_write_config_word(i32 %57, i32 152, i32 %58)
  %60 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %61 = call i32 @I915_WRITE(i32 %60, i32 0)
  %62 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %63 = call i32 @POSTING_READ(i32 %62)
  %64 = load i32, i32* @VLV_IMR, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @I915_WRITE(i32 %64, i32 %67)
  %69 = load i32, i32* @VLV_IER, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @I915_WRITE(i32 %69, i32 %70)
  %72 = load i32, i32* @VLV_IIR, align 4
  %73 = call i32 @I915_WRITE(i32 %72, i32 -1)
  %74 = call i32 @PIPESTAT(i32 0)
  %75 = call i32 @I915_WRITE(i32 %74, i32 65535)
  %76 = call i32 @PIPESTAT(i32 1)
  %77 = call i32 @I915_WRITE(i32 %76, i32 65535)
  %78 = load i32, i32* @VLV_IER, align 4
  %79 = call i32 @POSTING_READ(i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @i915_enable_pipestat(%struct.TYPE_5__* %80, i32 0, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = load i32, i32* @PIPE_GMBUS_EVENT_ENABLE, align 4
  %85 = call i32 @i915_enable_pipestat(%struct.TYPE_5__* %83, i32 0, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @i915_enable_pipestat(%struct.TYPE_5__* %86, i32 1, i32 %87)
  %89 = load i32, i32* @VLV_IIR, align 4
  %90 = call i32 @I915_WRITE(i32 %89, i32 -1)
  %91 = load i32, i32* @VLV_IIR, align 4
  %92 = call i32 @I915_WRITE(i32 %91, i32 -1)
  %93 = load i32, i32* @GTIIR, align 4
  %94 = load i32, i32* @GTIIR, align 4
  %95 = call i32 @I915_READ(i32 %94)
  %96 = call i32 @I915_WRITE(i32 %93, i32 %95)
  %97 = load i32, i32* @GTIMR, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @I915_WRITE(i32 %97, i32 %100)
  %102 = load i32, i32* @GT_USER_INTERRUPT, align 4
  %103 = load i32, i32* @GEN6_BSD_USER_INTERRUPT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @GEN6_BLITTER_USER_INTERRUPT, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @GTIER, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @I915_WRITE(i32 %107, i32 %108)
  %110 = load i32, i32* @GTIER, align 4
  %111 = call i32 @POSTING_READ(i32 %110)
  %112 = load i32, i32* @VLV_MASTER_IER, align 4
  %113 = load i32, i32* @MASTER_INTERRUPT_ENABLE, align 4
  %114 = call i32 @I915_WRITE(i32 %112, i32 %113)
  ret i32 0
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @PIPESTAT(i32) #1

declare dso_local i32 @i915_enable_pipestat(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
