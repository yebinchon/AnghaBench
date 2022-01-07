; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_grcp_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_grcp_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nva3_pm_grcp_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nva3_pm_grcp_idle(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.drm_device*
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %5, align 8
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %11 = call i32 @nv_rd32(%struct.nouveau_device* %10, i32 4195076)
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %17 = call i32 @nv_rd32(%struct.nouveau_device* %16, i32 4195080)
  %18 = icmp eq i32 %17, 5242908
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
