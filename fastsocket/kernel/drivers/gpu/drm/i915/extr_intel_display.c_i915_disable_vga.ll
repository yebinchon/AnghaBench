; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i915_disable_vga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i915_disable_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@SR01 = common dso_local global i32 0, align 4
@VGA_SR_INDEX = common dso_local global i32 0, align 4
@VGA_SR_DATA = common dso_local global i32 0, align 4
@VGA_DISP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_disable_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_disable_vga(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i32 @i915_vgacntrl_reg(%struct.drm_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %15 = call i32 @vga_get_uninterruptible(i32 %13, i32 %14)
  %16 = load i32, i32* @SR01, align 4
  %17 = load i32, i32* @VGA_SR_INDEX, align 4
  %18 = call i32 @outb(i32 %16, i32 %17)
  %19 = load i32, i32* @VGA_SR_DATA, align 4
  %20 = call i32 @inb(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 32
  %23 = load i32, i32* @VGA_SR_DATA, align 4
  %24 = call i32 @outb(i32 %22, i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %29 = call i32 @vga_put(i32 %27, i32 %28)
  %30 = call i32 @udelay(i32 300)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VGA_DISP_DISABLE, align 4
  %33 = call i32 @I915_WRITE(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @POSTING_READ(i32 %34)
  ret void
}

declare dso_local i32 @i915_vgacntrl_reg(%struct.drm_device*) #1

declare dso_local i32 @vga_get_uninterruptible(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @vga_put(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
