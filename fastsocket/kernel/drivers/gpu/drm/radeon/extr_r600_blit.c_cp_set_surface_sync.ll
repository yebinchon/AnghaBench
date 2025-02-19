; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_cp_set_surface_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_cp_set_surface_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_SURFACE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @cp_set_surface_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_set_surface_sync(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @RING_LOCALS, align 4
  %11 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 255
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = call i32 @BEGIN_RING(i32 5)
  %21 = load i32, i32* @R600_IT_SURFACE_SYNC, align 4
  %22 = call i32 @CP_PACKET3(i32 %21, i32 3)
  %23 = call i32 @OUT_RING(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @OUT_RING(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @OUT_RING(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  %30 = call i32 @OUT_RING(i32 %29)
  %31 = call i32 @OUT_RING(i32 10)
  %32 = call i32 (...) @ADVANCE_RING()
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
