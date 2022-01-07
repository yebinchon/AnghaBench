; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_scissors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_scissors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@R600_PA_SC_SCREEN_SCISSOR_TL = common dso_local global i32 0, align 4
@R600_SET_CONTEXT_REG_OFFSET = common dso_local global i32 0, align 4
@R600_PA_SC_GENERIC_SCISSOR_TL = common dso_local global i32 0, align 4
@R600_PA_SC_WINDOW_SCISSOR_TL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @set_scissors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scissors(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @RING_LOCALS, align 4
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @BEGIN_RING(i32 12)
  %14 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %15 = call i32 @CP_PACKET3(i32 %14, i32 2)
  %16 = call i32 @OUT_RING(i32 %15)
  %17 = load i32, i32* @R600_PA_SC_SCREEN_SCISSOR_TL, align 4
  %18 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %19 = sub nsw i32 %17, %18
  %20 = ashr i32 %19, 2
  %21 = call i32 @OUT_RING(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 0
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  %27 = call i32 @OUT_RING(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, 0
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %29, %31
  %33 = call i32 @OUT_RING(i32 %32)
  %34 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %35 = call i32 @CP_PACKET3(i32 %34, i32 2)
  %36 = call i32 @OUT_RING(i32 %35)
  %37 = load i32, i32* @R600_PA_SC_GENERIC_SCISSOR_TL, align 4
  %38 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %39 = sub nsw i32 %37, %38
  %40 = ashr i32 %39, 2
  %41 = call i32 @OUT_RING(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 0
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = or i32 %46, -2147483648
  %48 = call i32 @OUT_RING(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 0
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %50, %52
  %54 = call i32 @OUT_RING(i32 %53)
  %55 = load i32, i32* @R600_IT_SET_CONTEXT_REG, align 4
  %56 = call i32 @CP_PACKET3(i32 %55, i32 2)
  %57 = call i32 @OUT_RING(i32 %56)
  %58 = load i32, i32* @R600_PA_SC_WINDOW_SCISSOR_TL, align 4
  %59 = load i32, i32* @R600_SET_CONTEXT_REG_OFFSET, align 4
  %60 = sub nsw i32 %58, %59
  %61 = ashr i32 %60, 2
  %62 = call i32 @OUT_RING(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 0
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  %68 = or i32 %67, -2147483648
  %69 = call i32 @OUT_RING(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 0
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %71, %73
  %75 = call i32 @OUT_RING(i32 %74)
  %76 = call i32 (...) @ADVANCE_RING()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
