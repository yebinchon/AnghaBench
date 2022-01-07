; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*)* }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_therm.0*, i32)*, i32 (%struct.nouveau_therm.1*, i32)* }
%struct.nouveau_therm.0 = type opaque
%struct.nouveau_therm.1 = type opaque
%struct.work_struct = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"fanboost\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"downclock\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@__const.nouveau_therm_sensor_event.thresolds = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@NOUVEAU_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"temperature (%i C) went below the '%s' threshold\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"temperature (%i C) hit the '%s' threshold\0A\00", align 1
@NOUVEAU_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NOUVEAU_THERM_CTRL_AUTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@nv_poweroff_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_therm_sensor_event(%struct.nouveau_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_therm_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.work_struct*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %13 = bitcast %struct.nouveau_therm* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %14, %struct.nouveau_therm_priv** %7, align 8
  %15 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i8*]* @__const.nouveau_therm_sensor_event.thresolds to i8*), i64 32, i1 false)
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %16, i32 0, i32 0
  %18 = load i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*)** %17, align 8
  %19 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %20 = call i32 %18(%struct.nouveau_therm* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  br label %112

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NOUVEAU_THERM_THRS_FALLING, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @nv_info(%struct.nouveau_therm* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %33, i8* %37)
  br label %47

39:                                               ; preds = %27
  %40 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @nv_info(%struct.nouveau_therm* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %41, i8* %45)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NOUVEAU_THERM_THRS_RISING, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %112 [
    i32 130, label %53
    i32 131, label %63
    i32 132, label %79
    i32 128, label %95
    i32 129, label %111
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %58 = call i32 @nouveau_therm_fan_set(%struct.nouveau_therm* %57, i32 1, i32 100)
  %59 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %60 = load i32, i32* @NOUVEAU_THERM_CTRL_AUTO, align 4
  %61 = call i32 @nouveau_therm_fan_mode(%struct.nouveau_therm* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %112

63:                                               ; preds = %47
  %64 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %7, align 8
  %65 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.nouveau_therm.1*, i32)*, i32 (%struct.nouveau_therm.1*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.nouveau_therm.1*, i32)* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %7, align 8
  %71 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.nouveau_therm.1*, i32)*, i32 (%struct.nouveau_therm.1*, i32)** %72, align 8
  %74 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %75 = bitcast %struct.nouveau_therm* %74 to %struct.nouveau_therm.1*
  %76 = load i32, i32* %8, align 4
  %77 = call i32 %73(%struct.nouveau_therm.1* %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %63
  br label %112

79:                                               ; preds = %47
  %80 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %7, align 8
  %81 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.nouveau_therm.0*, i32)*, i32 (%struct.nouveau_therm.0*, i32)** %82, align 8
  %84 = icmp ne i32 (%struct.nouveau_therm.0*, i32)* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %7, align 8
  %87 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.nouveau_therm.0*, i32)*, i32 (%struct.nouveau_therm.0*, i32)** %88, align 8
  %90 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %91 = bitcast %struct.nouveau_therm* %90 to %struct.nouveau_therm.0*
  %92 = load i32, i32* %8, align 4
  %93 = call i32 %89(%struct.nouveau_therm.0* %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %79
  br label %112

95:                                               ; preds = %47
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call %struct.work_struct* @kmalloc(i32 4, i32 %99)
  store %struct.work_struct* %100, %struct.work_struct** %11, align 8
  %101 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %102 = icmp ne %struct.work_struct* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %105 = load i32, i32* @nv_poweroff_work, align 4
  %106 = call i32 @INIT_WORK(%struct.work_struct* %104, i32 %105)
  %107 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %108 = call i32 @schedule_work(%struct.work_struct* %107)
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %95
  br label %112

111:                                              ; preds = %47
  br label %112

112:                                              ; preds = %26, %47, %111, %110, %94, %78, %62
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nv_info(%struct.nouveau_therm*, i8*, i32, i8*) #2

declare dso_local i32 @nouveau_therm_fan_set(%struct.nouveau_therm*, i32, i32) #2

declare dso_local i32 @nouveau_therm_fan_mode(%struct.nouveau_therm*, i32) #2

declare dso_local %struct.work_struct* @kmalloc(i32, i32) #2

declare dso_local i32 @INIT_WORK(%struct.work_struct*, i32) #2

declare dso_local i32 @schedule_work(%struct.work_struct*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
