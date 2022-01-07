; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_mode_fill_fb_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_helper_mode_fill_fb_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, i32, i32, i32*, i32*, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_framebuffer* %0, %struct.drm_mode_fb_cmd2* %1) #0 {
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %4, align 8
  %6 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %7 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %12 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %34 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %19
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %51 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 2
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 1
  %57 = call i32 @drm_fb_get_bpp_depth(i32 %52, i32* %54, i32* %56)
  %58 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %4, align 8
  %59 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %62 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  ret i32 0
}

declare dso_local i32 @drm_fb_get_bpp_depth(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
