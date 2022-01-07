; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_ioctl_ctrl_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_ioctl_ctrl_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.uvc_xu_control_mapping = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_control_mapping = type { i32, i32, %struct.uvc_control_mapping*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"V4L2_CTRL_TYPE_MENU not supported for UVCIOC_CTRL_MAP_OLD.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported V4L2 control type %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_xu_control_mapping*, i32)* @uvc_ioctl_ctrl_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_ctrl_map(%struct.uvc_video_chain* %0, %struct.uvc_xu_control_mapping* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_video_chain*, align 8
  %6 = alloca %struct.uvc_xu_control_mapping*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvc_control_mapping*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %5, align 8
  store %struct.uvc_xu_control_mapping* %1, %struct.uvc_xu_control_mapping** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uvc_control_mapping* @kzalloc(i32 48, i32 %11)
  store %struct.uvc_control_mapping* %12, %struct.uvc_control_mapping** %8, align 8
  %13 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %14 = icmp eq %struct.uvc_control_mapping* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %133

18:                                               ; preds = %3
  %19 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %20 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %23 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %25 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %28 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %32 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %35 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 4)
  %38 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %39 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %42 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %44 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %47 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %49 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %52 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %54 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %57 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %59 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %62 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %64 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %113 [
    i32 129, label %66
    i32 131, label %66
    i32 130, label %66
    i32 128, label %67
  ]

66:                                               ; preds = %18, %18, %18
  br label %121

67:                                               ; preds = %18
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %72 = call i32 (i32, i8*, ...) @uvc_trace(i32 %71, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %125

75:                                               ; preds = %67
  %76 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %77 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 48
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.uvc_control_mapping* @kmalloc(i32 %82, i32 %83)
  %85 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %86 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %85, i32 0, i32 2
  store %struct.uvc_control_mapping* %84, %struct.uvc_control_mapping** %86, align 8
  %87 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %88 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %87, i32 0, i32 2
  %89 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %88, align 8
  %90 = icmp eq %struct.uvc_control_mapping* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %125

94:                                               ; preds = %75
  %95 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %96 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %95, i32 0, i32 2
  %97 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %96, align 8
  %98 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %99 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @copy_from_user(%struct.uvc_control_mapping* %97, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %10, align 4
  br label %125

107:                                              ; preds = %94
  %108 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %109 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %112 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %121

113:                                              ; preds = %18
  %114 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %115 = load %struct.uvc_xu_control_mapping*, %struct.uvc_xu_control_mapping** %6, align 8
  %116 = getelementptr inbounds %struct.uvc_xu_control_mapping, %struct.uvc_xu_control_mapping* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @uvc_trace(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %125

121:                                              ; preds = %107, %66
  %122 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %123 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %124 = call i32 @uvc_ctrl_add_mapping(%struct.uvc_video_chain* %122, %struct.uvc_control_mapping* %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %113, %104, %91, %70
  %126 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %127 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %126, i32 0, i32 2
  %128 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %127, align 8
  %129 = call i32 @kfree(%struct.uvc_control_mapping* %128)
  %130 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %131 = call i32 @kfree(%struct.uvc_control_mapping* %130)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %125, %15
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.uvc_control_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, ...) #1

declare dso_local %struct.uvc_control_mapping* @kmalloc(i32, i32) #1

declare dso_local i32 @copy_from_user(%struct.uvc_control_mapping*, i32, i32) #1

declare dso_local i32 @uvc_ctrl_add_mapping(%struct.uvc_video_chain*, %struct.uvc_control_mapping*) #1

declare dso_local i32 @kfree(%struct.uvc_control_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
