; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_force.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_connector = type { i64 }
%struct.nouveau_encoder = type { i32 }

@DCB_CONNECTOR_DVI_I = common dso_local global i64 0, align 8
@DRM_FORCE_ON_DIGITAL = common dso_local global i64 0, align 8
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DCB_OUTPUT_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't find encoder to force %s on!\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @nouveau_connector_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_connector_force(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_connector*, align 8
  %5 = alloca %struct.nouveau_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_drm(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %11)
  store %struct.nouveau_connector* %12, %struct.nouveau_connector** %4, align 8
  %13 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DCB_CONNECTOR_DVI_I, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DRM_FORCE_ON_DIGITAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @DCB_OUTPUT_ANY, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %32, i32 %33)
  store %struct.nouveau_encoder* %34, %struct.nouveau_encoder** %5, align 8
  %35 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %5, align 8
  %36 = icmp ne %struct.nouveau_encoder* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %40 = call i32 @drm_get_connector_name(%struct.drm_connector* %39)
  %41 = call i32 @NV_ERROR(%struct.nouveau_drm* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @connector_status_disconnected, align 4
  %43 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %47 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %5, align 8
  %48 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %46, %struct.nouveau_encoder* %47)
  br label %49

49:                                               ; preds = %45, %37
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @nouveau_connector_set_encoder(%struct.drm_connector*, %struct.nouveau_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
