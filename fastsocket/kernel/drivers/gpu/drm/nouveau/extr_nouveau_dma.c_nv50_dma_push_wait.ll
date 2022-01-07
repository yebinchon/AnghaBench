; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32)* @nv50_dma_push_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dma_push_wait(%struct.nouveau_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %67, %2
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %9
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @nv_ro32(i32 %19, i32 136)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  %29 = and i64 %28, 255
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = call i32 @DRM_UDELAY(i32 1)
  %33 = load i64, i64* %6, align 8
  %34 = icmp sgt i64 %33, 100000
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %40, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %51 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %39
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %57 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  br label %67

67:                                               ; preds = %55, %39
  br label %9

68:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @nv_ro32(i32, i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
