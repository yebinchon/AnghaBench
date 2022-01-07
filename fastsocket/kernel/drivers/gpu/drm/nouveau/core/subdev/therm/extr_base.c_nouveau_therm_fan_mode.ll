; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_fan_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_fan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i64 (%struct.nouveau_therm*)* }
%struct.nouveau_therm_priv = type { i32 }
%struct.nouveau_device = type { i64 }

@nouveau_therm_fan_mode.name = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@NOUVEAU_THERM_CTRL_NONE = common dso_local global i32 0, align 4
@NV_C0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"fan management: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_fan_mode(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %9 = bitcast %struct.nouveau_therm* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %10, %struct.nouveau_therm_priv** %6, align 8
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_therm* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @nouveau_therm_fan_mode.name, i64 0, i64 0))
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NOUVEAU_THERM_CTRL_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NV_C0, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %20, %16
  %30 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %35, i32 0, i32 0
  %37 = load i64 (%struct.nouveau_therm*)*, i64 (%struct.nouveau_therm*)** %36, align 8
  %38 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %39 = call i64 %37(%struct.nouveau_therm* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %34, %29
  %45 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %46 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %61

51:                                               ; preds = %44
  %52 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* @nouveau_therm_fan_mode.name, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @nv_info(%struct.nouveau_therm* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @nouveau_therm_update(%struct.nouveau_therm* %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %51, %50, %41, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_therm*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @nv_info(%struct.nouveau_therm*, i8*, i8*) #1

declare dso_local i32 @nouveau_therm_update(%struct.nouveau_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
