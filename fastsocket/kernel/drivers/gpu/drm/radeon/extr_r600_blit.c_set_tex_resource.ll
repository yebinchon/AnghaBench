; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_tex_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_tex_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_SET_RESOURCE = common dso_local global i32 0, align 4
@R600_SQ_TEX_VTX_VALID_TEXTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @set_tex_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tex_resource(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @RING_LOCALS, align 4
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 1, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %6
  store i32 1, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 3
  %24 = sub nsw i32 %23, 1
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %27, 19
  %29 = or i32 %25, %28
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 26
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 0
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  store i32 109592576, i32* %15, align 4
  %39 = call i32 @BEGIN_RING(i32 9)
  %40 = load i32, i32* @R600_IT_SET_RESOURCE, align 4
  %41 = call i32 @CP_PACKET3(i32 %40, i32 7)
  %42 = call i32 @OUT_RING(i32 %41)
  %43 = call i32 @OUT_RING(i32 0)
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @OUT_RING(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @OUT_RING(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 8
  %50 = call i32 @OUT_RING(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @OUT_RING(i32 %52)
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @OUT_RING(i32 %54)
  %56 = call i32 @OUT_RING(i32 0)
  %57 = load i32, i32* @R600_SQ_TEX_VTX_VALID_TEXTURE, align 4
  %58 = shl i32 %57, 30
  %59 = call i32 @OUT_RING(i32 %58)
  %60 = call i32 (...) @ADVANCE_RING()
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
