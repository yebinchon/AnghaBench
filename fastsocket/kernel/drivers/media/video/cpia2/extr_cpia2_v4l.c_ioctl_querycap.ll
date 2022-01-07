; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_capability = type { i32, i32, %struct.v4l2_capability*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"cpia2\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"QX5 Microscope\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CPiA2 Camera\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" (672/\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (676/\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" (???/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"404)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"407)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"409)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"410)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"500)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"???)\00", align 1
@CPIA2_MAJ_VER = common dso_local global i32 0, align 4
@CPIA2_MIN_VER = common dso_local global i32 0, align 4
@CPIA2_PATCH_VER = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_querycap(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.v4l2_capability*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.camera_data* %1, %struct.camera_data** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_capability*
  store %struct.v4l2_capability* %7, %struct.v4l2_capability** %5, align 8
  %8 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %9 = call i32 @memset(%struct.v4l2_capability* %8, i32 0, i32 24)
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcpy(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 337
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcpy(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %46 [
    i32 129, label %36
    i32 128, label %41
  ]

36:                                               ; preds = %30
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcat(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %51

41:                                               ; preds = %30
  %42 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strcat(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcat(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %41, %36
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %82 [
    i32 134, label %57
    i32 133, label %62
    i32 132, label %67
    i32 131, label %72
    i32 130, label %77
  ]

57:                                               ; preds = %51
  %58 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strcat(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %87

62:                                               ; preds = %51
  %63 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strcat(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %87

67:                                               ; preds = %51
  %68 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @strcat(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %87

72:                                               ; preds = %51
  %73 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strcat(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %87

77:                                               ; preds = %51
  %78 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strcat(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %87

82:                                               ; preds = %51
  %83 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strcat(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %77, %72, %67, %62, %57
  %88 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %89 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %91, i32 0, i32 2
  %93 = load %struct.v4l2_capability*, %struct.v4l2_capability** %92, align 8
  %94 = call i64 @usb_make_path(i32 %90, %struct.v4l2_capability* %93, i32 8)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %97, i32 0, i32 2
  %99 = load %struct.v4l2_capability*, %struct.v4l2_capability** %98, align 8
  %100 = call i32 @memset(%struct.v4l2_capability* %99, i32 0, i32 8)
  br label %101

101:                                              ; preds = %96, %87
  %102 = load i32, i32* @CPIA2_MAJ_VER, align 4
  %103 = load i32, i32* @CPIA2_MIN_VER, align 4
  %104 = load i32, i32* @CPIA2_PATCH_VER, align 4
  %105 = call i32 @KERNEL_VERSION(i32 %102, i32 %103, i32 %104)
  %106 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %109 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.v4l2_capability*, %struct.v4l2_capability** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_capability*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i64 @usb_make_path(i32, %struct.v4l2_capability*, i32) #1

declare dso_local i32 @KERNEL_VERSION(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
