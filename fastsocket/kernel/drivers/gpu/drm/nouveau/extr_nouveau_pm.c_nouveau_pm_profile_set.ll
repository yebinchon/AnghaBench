; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_profile_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_profile_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm = type { %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile* }
%struct.nouveau_pm_profile = type { i32 }

@nouveau_perflvl_wr = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*)* @nouveau_pm_profile_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_pm_profile_set(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nouveau_pm*, align 8
  %7 = alloca %struct.nouveau_pm_profile*, align 8
  %8 = alloca %struct.nouveau_pm_profile*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %12)
  store %struct.nouveau_pm* %13, %struct.nouveau_pm** %6, align 8
  store %struct.nouveau_pm_profile* null, %struct.nouveau_pm_profile** %7, align 8
  store %struct.nouveau_pm_profile* null, %struct.nouveau_pm_profile** %8, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @nouveau_perflvl_wr, align 4
  %16 = icmp ne i32 %15, 7777
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncpy(i8* %21, i8* %22, i32 16)
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 15
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %26 = call i8* @strchr(i8* %25, i8 signext 10)
  store i8* %26, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i8*, i8** %11, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %20
  %31 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call %struct.nouveau_pm_profile* @profile_find(%struct.drm_device* %35, i8* %36)
  store %struct.nouveau_pm_profile* %37, %struct.nouveau_pm_profile** %7, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call %struct.nouveau_pm_profile* @profile_find(%struct.drm_device* %43, i8* %44)
  store %struct.nouveau_pm_profile* %45, %struct.nouveau_pm_profile** %8, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %7, align 8
  store %struct.nouveau_pm_profile* %47, %struct.nouveau_pm_profile** %8, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %7, align 8
  %50 = icmp eq %struct.nouveau_pm_profile* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %8, align 8
  %53 = icmp eq %struct.nouveau_pm_profile* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %51
  %58 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %7, align 8
  %59 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %60 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %59, i32 0, i32 1
  store %struct.nouveau_pm_profile* %58, %struct.nouveau_pm_profile** %60, align 8
  %61 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %8, align 8
  %62 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %62, i32 0, i32 0
  store %struct.nouveau_pm_profile* %61, %struct.nouveau_pm_profile** %63, align 8
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i32 @nouveau_pm_trigger(%struct.drm_device* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %54, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.nouveau_pm_profile* @profile_find(%struct.drm_device*, i8*) #1

declare dso_local i32 @nouveau_pm_trigger(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
