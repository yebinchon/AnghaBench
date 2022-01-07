; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nv40_backlight_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nv40_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.nouveau_drm = type { %struct.backlight_device*, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nouveau_device = type { i32 }

@NV40_PMC_BACKLIGHT = common dso_local global i32 0, align 4
@NV40_PMC_BACKLIGHT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nv_backlight\00", align 1
@nv40_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @nv40_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_backlight_init(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_drm(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %4, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nouveau_device* @nv_device(i32 %13)
  store %struct.nouveau_device* %14, %struct.nouveau_device** %5, align 8
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %16 = load i32, i32* @NV40_PMC_BACKLIGHT, align 4
  %17 = call i32 @nv_rd32(%struct.nouveau_device* %15, i32 %16)
  %18 = load i32, i32* @NV40_PMC_BACKLIGHT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 0
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %26 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %24, %struct.nouveau_drm* %25, i32* @nv40_bl_ops)
  store %struct.backlight_device* %26, %struct.backlight_device** %6, align 8
  %27 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %28 = call i64 @IS_ERR(%struct.backlight_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.backlight_device* %31)
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %22
  %34 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %35, i32 0, i32 0
  store %struct.backlight_device* %34, %struct.backlight_device** %36, align 8
  %37 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %38 = call i32 @nv40_get_intensity(%struct.backlight_device* %37)
  %39 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %40 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %43 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 31, i32* %44, align 4
  %45 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %46 = call i32 @backlight_update_status(%struct.backlight_device* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %33, %30, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32*, %struct.nouveau_drm*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @nv40_get_intensity(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
