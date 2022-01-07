; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_flip_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_flip_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nouveau_drm* }
%struct.nouveau_drm = type { i32, i32 }
%struct.nouveau_page_flip_state = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_flip_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_page_flip_state, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nouveau_channel*
  store %struct.nouveau_channel* %7, %struct.nouveau_channel** %3, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %8, i32 0, i32 0
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %4, align 8
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %12 = call i32 @nouveau_finish_page_flip(%struct.nouveau_channel* %11, %struct.nouveau_page_flip_state* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %1
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @nv_device(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NV_50, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %14
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %5, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %39, %41
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %37, %44
  %46 = call i32 @nv_set_crtc_base(i32 %26, i32 %28, i64 %45)
  br label %47

47:                                               ; preds = %23, %14
  br label %48

48:                                               ; preds = %47, %1
  ret i32 0
}

declare dso_local i32 @nouveau_finish_page_flip(%struct.nouveau_channel*, %struct.nouveau_page_flip_state*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @nv_set_crtc_base(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
