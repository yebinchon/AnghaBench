; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_draw_auto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_draw_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_SET_CONFIG_REG = common dso_local global i32 0, align 4
@R600_VGT_PRIMITIVE_TYPE = common dso_local global i32 0, align 4
@R600_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@DI_PT_RECTLIST = common dso_local global i32 0, align 4
@R600_IT_INDEX_TYPE = common dso_local global i32 0, align 4
@DI_INDEX_SIZE_16_BIT = common dso_local global i32 0, align 4
@R600_IT_NUM_INSTANCES = common dso_local global i32 0, align 4
@R600_IT_DRAW_INDEX_AUTO = common dso_local global i32 0, align 4
@DI_SRC_SEL_AUTO_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @draw_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_auto(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @RING_LOCALS, align 4
  %4 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @BEGIN_RING(i32 10)
  %6 = load i32, i32* @R600_IT_SET_CONFIG_REG, align 4
  %7 = call i32 @CP_PACKET3(i32 %6, i32 1)
  %8 = call i32 @OUT_RING(i32 %7)
  %9 = load i32, i32* @R600_VGT_PRIMITIVE_TYPE, align 4
  %10 = load i32, i32* @R600_SET_CONFIG_REG_OFFSET, align 4
  %11 = sub nsw i32 %9, %10
  %12 = ashr i32 %11, 2
  %13 = call i32 @OUT_RING(i32 %12)
  %14 = load i32, i32* @DI_PT_RECTLIST, align 4
  %15 = call i32 @OUT_RING(i32 %14)
  %16 = load i32, i32* @R600_IT_INDEX_TYPE, align 4
  %17 = call i32 @CP_PACKET3(i32 %16, i32 0)
  %18 = call i32 @OUT_RING(i32 %17)
  %19 = load i32, i32* @DI_INDEX_SIZE_16_BIT, align 4
  %20 = call i32 @OUT_RING(i32 %19)
  %21 = load i32, i32* @R600_IT_NUM_INSTANCES, align 4
  %22 = call i32 @CP_PACKET3(i32 %21, i32 0)
  %23 = call i32 @OUT_RING(i32 %22)
  %24 = call i32 @OUT_RING(i32 1)
  %25 = load i32, i32* @R600_IT_DRAW_INDEX_AUTO, align 4
  %26 = call i32 @CP_PACKET3(i32 %25, i32 1)
  %27 = call i32 @OUT_RING(i32 %26)
  %28 = call i32 @OUT_RING(i32 3)
  %29 = load i32, i32* @DI_SRC_SEL_AUTO_INDEX, align 4
  %30 = call i32 @OUT_RING(i32 %29)
  %31 = call i32 (...) @ADVANCE_RING()
  %32 = call i32 (...) @COMMIT_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
