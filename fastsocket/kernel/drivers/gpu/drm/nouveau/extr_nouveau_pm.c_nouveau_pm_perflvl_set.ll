; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i32 }
%struct.nouveau_pm = type { i32 (%struct.drm_device.0*, i8*)*, %struct.nouveau_pm_level*, i8* (%struct.drm_device.1*, %struct.nouveau_pm_level*)* }
%struct.drm_device.0 = type opaque
%struct.drm_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nouveau_pm_level*)* @nouveau_pm_perflvl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_pm_perflvl_set(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca %struct.nouveau_pm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %9)
  store %struct.nouveau_pm* %10, %struct.nouveau_pm** %6, align 8
  %11 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %12 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %13 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %12, i32 0, i32 1
  %14 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %13, align 8
  %15 = icmp eq %struct.nouveau_pm_level* %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %20 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %20, i32 0, i32 1
  %22 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %21, align 8
  %23 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %24 = call i32 @nouveau_pm_perflvl_aux(%struct.drm_device* %18, %struct.nouveau_pm_level* %19, %struct.nouveau_pm_level* %22, %struct.nouveau_pm_level* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %17
  %30 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %30, i32 0, i32 2
  %32 = load i8* (%struct.drm_device.1*, %struct.nouveau_pm_level*)*, i8* (%struct.drm_device.1*, %struct.nouveau_pm_level*)** %31, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = bitcast %struct.drm_device* %33 to %struct.drm_device.1*
  %35 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %36 = call i8* %32(%struct.drm_device.1* %34, %struct.nouveau_pm_level* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %8, align 4
  br label %70

43:                                               ; preds = %29
  %44 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %45 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %44, i32 0, i32 0
  %46 = load i32 (%struct.drm_device.0*, i8*)*, i32 (%struct.drm_device.0*, i8*)** %45, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = bitcast %struct.drm_device* %47 to %struct.drm_device.0*
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 %46(%struct.drm_device.0* %48, i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %70

54:                                               ; preds = %43
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %57 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %58 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %59 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %58, i32 0, i32 1
  %60 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %59, align 8
  %61 = call i32 @nouveau_pm_perflvl_aux(%struct.drm_device* %55, %struct.nouveau_pm_level* %56, %struct.nouveau_pm_level* %57, %struct.nouveau_pm_level* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %79

66:                                               ; preds = %54
  %67 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %68 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %69 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %68, i32 0, i32 1
  store %struct.nouveau_pm_level* %67, %struct.nouveau_pm_level** %69, align 8
  store i32 0, i32* %3, align 4
  br label %79

70:                                               ; preds = %53, %40
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %73 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %74 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %75 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %74, i32 0, i32 1
  %76 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %75, align 8
  %77 = call i32 @nouveau_pm_perflvl_aux(%struct.drm_device* %71, %struct.nouveau_pm_level* %72, %struct.nouveau_pm_level* %73, %struct.nouveau_pm_level* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %66, %64, %27, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_pm_perflvl_aux(%struct.drm_device*, %struct.nouveau_pm_level*, %struct.nouveau_pm_level*, %struct.nouveau_pm_level*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
