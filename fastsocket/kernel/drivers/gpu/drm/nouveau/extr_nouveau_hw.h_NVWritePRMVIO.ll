; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVWritePRMVIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.h_NVWritePRMVIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NV_40 = common dso_local global i64 0, align 8
@NV_PRMVIO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @NVWritePRMVIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVWritePRMVIO(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_device*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @nv_device(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NV_40, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i64, i64* @NV_PRMVIO_SIZE, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %17, %4
  %33 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @nv_wr08(%struct.nouveau_device* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @nv_wr08(%struct.nouveau_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
