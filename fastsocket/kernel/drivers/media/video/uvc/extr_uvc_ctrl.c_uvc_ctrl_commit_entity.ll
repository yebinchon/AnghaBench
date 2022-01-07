; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_commit_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_commit_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_entity = type { i32, %struct.uvc_control* }
%struct.uvc_control = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@UVC_CONTROL_AUTO_UPDATE = common dso_local global i32 0, align 4
@UVC_SET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_CURRENT = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_entity*, i32)* @uvc_ctrl_commit_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_commit_entity(%struct.uvc_device* %0, %struct.uvc_entity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %12 = icmp eq %struct.uvc_entity* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %103, %14
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %106

21:                                               ; preds = %15
  %22 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %23 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %22, i32 0, i32 1
  %24 = load %struct.uvc_control*, %struct.uvc_control** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %24, i64 %26
  store %struct.uvc_control* %27, %struct.uvc_control** %8, align 8
  %28 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %29 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %103

33:                                               ; preds = %21
  %34 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %35 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UVC_CONTROL_AUTO_UPDATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %43 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %46 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %103

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %50
  %54 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %55 = load i32, i32* @UVC_SET_CUR, align 4
  %56 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %57 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %62 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %65 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %69 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %70 = call i32 @uvc_ctrl_data(%struct.uvc_control* %68, i32 %69)
  %71 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %72 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @uvc_query_ctrl(%struct.uvc_device* %54, i32 %55, i32 %60, i32 %63, i32 %67, i32 %70, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %77

76:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80, %77
  %84 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %85 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %86 = call i32 @uvc_ctrl_data(%struct.uvc_control* %84, i32 %85)
  %87 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %88 = load i32, i32* @UVC_CTRL_DATA_BACKUP, align 4
  %89 = call i32 @uvc_ctrl_data(%struct.uvc_control* %87, i32 %88)
  %90 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %91 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32 %86, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %83, %80
  %96 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %97 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %107

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %49, %32
  %104 = load i32, i32* %9, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %15

106:                                              ; preds = %15
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %100, %13
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
