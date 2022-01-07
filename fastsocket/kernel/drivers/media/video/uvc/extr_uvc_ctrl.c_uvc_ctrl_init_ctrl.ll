; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_init_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_init_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.uvc_control_info = type { i64, i32 }
%struct.uvc_control_mapping = type { i64, i32 }

@uvc_ctrls = common dso_local global i8* null, align 8
@uvc_ctrl_mappings = common dso_local global i8* null, align 8
@UVC_VC_EXTENSION_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_device*, %struct.uvc_control*)* @uvc_ctrl_init_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_ctrl_init_ctrl(%struct.uvc_device* %0, %struct.uvc_control* %1) #0 {
  %3 = alloca %struct.uvc_device*, align 8
  %4 = alloca %struct.uvc_control*, align 8
  %5 = alloca %struct.uvc_control_info*, align 8
  %6 = alloca %struct.uvc_control_info*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control_mapping*, align 8
  store %struct.uvc_device* %0, %struct.uvc_device** %3, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %4, align 8
  %9 = load i8*, i8** @uvc_ctrls, align 8
  %10 = bitcast i8* %9 to %struct.uvc_control_info*
  store %struct.uvc_control_info* %10, %struct.uvc_control_info** %5, align 8
  %11 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %12 = load i8*, i8** @uvc_ctrls, align 8
  %13 = call i32 @ARRAY_SIZE(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %11, i64 %14
  store %struct.uvc_control_info* %15, %struct.uvc_control_info** %6, align 8
  %16 = load i8*, i8** @uvc_ctrl_mappings, align 8
  %17 = bitcast i8* %16 to %struct.uvc_control_mapping*
  store %struct.uvc_control_mapping* %17, %struct.uvc_control_mapping** %7, align 8
  %18 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %19 = load i8*, i8** @uvc_ctrl_mappings, align 8
  %20 = call i32 @ARRAY_SIZE(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %18, i64 %21
  store %struct.uvc_control_mapping* %22, %struct.uvc_control_mapping** %8, align 8
  %23 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %24 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @UVC_ENTITY_TYPE(i32 %25)
  %27 = load i64, i64* @UVC_VC_EXTENSION_UNIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %99

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %58, %30
  %32 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %33 = load %struct.uvc_control_info*, %struct.uvc_control_info** %6, align 8
  %34 = icmp ult %struct.uvc_control_info* %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %37 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %40 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @uvc_entity_match_guid(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %46 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %49 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %54 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %55 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %56 = call i32 @uvc_ctrl_add_info(%struct.uvc_device* %53, %struct.uvc_control* %54, %struct.uvc_control_info* %55)
  br label %61

57:                                               ; preds = %44, %35
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.uvc_control_info*, %struct.uvc_control_info** %5, align 8
  %60 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %59, i32 1
  store %struct.uvc_control_info* %60, %struct.uvc_control_info** %5, align 8
  br label %31

61:                                               ; preds = %52, %31
  %62 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %63 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %99

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %96, %67
  %69 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %70 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %71 = icmp ult %struct.uvc_control_mapping* %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %74 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %77 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @uvc_entity_match_guid(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %83 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %87 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %92 = load %struct.uvc_control*, %struct.uvc_control** %4, align 8
  %93 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %94 = call i32 @__uvc_ctrl_add_mapping(%struct.uvc_device* %91, %struct.uvc_control* %92, %struct.uvc_control_mapping* %93)
  br label %95

95:                                               ; preds = %90, %81, %72
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %98 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %97, i32 1
  store %struct.uvc_control_mapping* %98, %struct.uvc_control_mapping** %7, align 8
  br label %68

99:                                               ; preds = %29, %66, %68
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @UVC_ENTITY_TYPE(i32) #1

declare dso_local i64 @uvc_entity_match_guid(i32, i32) #1

declare dso_local i32 @uvc_ctrl_add_info(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @__uvc_ctrl_add_mapping(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
