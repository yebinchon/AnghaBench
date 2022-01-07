; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i8xx_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i8xx_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32, i64* }

@EMR = common dso_local global i32 0, align 4
@I915_ERROR_PAGE_TABLE = common dso_local global i32 0, align 4
@I915_ERROR_MEMORY_REFRESH = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_A_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PIPE_B_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT = common dso_local global i32 0, align 4
@I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT = common dso_local global i32 0, align 4
@I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@I915_USER_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i8xx_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8xx_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @EMR, align 4
  %17 = load i32, i32* @I915_ERROR_PAGE_TABLE, align 4
  %18 = load i32, i32* @I915_ERROR_MEMORY_REFRESH, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = call i32 @I915_WRITE16(i32 %16, i32 %20)
  %22 = load i32, i32* @I915_DISPLAY_PIPE_A_EVENT_INTERRUPT, align 4
  %23 = load i32, i32* @I915_DISPLAY_PIPE_B_EVENT_INTERRUPT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @IMR, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @I915_WRITE16(i32 %34, i32 %37)
  %39 = load i32, i32* @IER, align 4
  %40 = load i32, i32* @I915_DISPLAY_PIPE_A_EVENT_INTERRUPT, align 4
  %41 = load i32, i32* @I915_DISPLAY_PIPE_B_EVENT_INTERRUPT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @I915_USER_INTERRUPT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @I915_WRITE16(i32 %39, i32 %46)
  %48 = load i32, i32* @IER, align 4
  %49 = call i32 @POSTING_READ16(i32 %48)
  ret i32 0
}

declare dso_local i32 @I915_WRITE16(i32, i32) #1

declare dso_local i32 @POSTING_READ16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
