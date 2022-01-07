; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_format_plane_cpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_format_plane_cpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_format_plane_cpp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @drm_format_num_planes(i32 %9)
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %22 [
    i32 134, label %15
    i32 128, label %15
    i32 141, label %15
    i32 140, label %15
    i32 147, label %16
    i32 145, label %16
    i32 146, label %16
    i32 142, label %16
    i32 144, label %16
    i32 143, label %16
    i32 139, label %21
    i32 133, label %21
    i32 138, label %21
    i32 132, label %21
    i32 137, label %21
    i32 131, label %21
    i32 136, label %21
    i32 130, label %21
    i32 135, label %21
    i32 129, label %21
  ]

15:                                               ; preds = %13, %13, %13, %13
  store i32 2, i32* %3, align 4
  br label %27

16:                                               ; preds = %13, %13, %13, %13, %13, %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  store i32 1, i32* %3, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @drm_fb_get_bpp_depth(i32 %23, i32* %6, i32* %7)
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %16, %15, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @drm_format_num_planes(i32) #1

declare dso_local i32 @drm_fb_get_bpp_depth(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
