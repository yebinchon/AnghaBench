; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_init_user_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_init_user_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)* }

@video = common dso_local global i32 0, align 4
@enum_mbus_fmt = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Found %d supported formats.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_init_user_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_init_user_formats(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.soc_camera_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %12 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %14 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %16)
  store %struct.soc_camera_host* %17, %struct.soc_camera_host** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %26, %1
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @video, align 4
  %21 = load i32, i32* @enum_mbus_fmt, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %19, i32 %20, i32 %21, i32 %22, i32* %10)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %31 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)** %33, align 8
  %35 = icmp ne i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  br label %64

38:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %45 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)** %47, align 8
  %49 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %48(%struct.soc_camera_device* %49, i32 %50, %struct.TYPE_8__* null)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %168

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %39

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %168

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call %struct.TYPE_8__* @vmalloc(i32 %74)
  %76 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %77 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %76, i32 0, i32 1
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %77, align 8
  %78 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %79 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %168

85:                                               ; preds = %70
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %88 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %90 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %89, i32 0, i32 3
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @dev_dbg(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %150, %85
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %153

97:                                               ; preds = %93
  %98 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %99 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)** %101, align 8
  %103 = icmp ne i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)* %102, null
  br i1 %103, label %127, label %104

104:                                              ; preds = %97
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %106 = load i32, i32* @video, align 4
  %107 = load i32, i32* @enum_mbus_fmt, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %105, i32 %106, i32 %107, i32 %108, i32* %10)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @soc_mbus_get_fmtdesc(i32 %110)
  %112 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %113 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 %111, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %121 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 4
  br label %149

127:                                              ; preds = %97
  %128 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %129 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)*, i32 (%struct.soc_camera_device*, i32, %struct.TYPE_8__*)** %131, align 8
  %133 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %136 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = call i32 %132(%struct.soc_camera_device* %133, i32 %134, %struct.TYPE_8__* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %127
  br label %160

145:                                              ; preds = %127
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %145, %104
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %93

153:                                              ; preds = %93
  %154 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %155 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 0
  %158 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %159 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %158, i32 0, i32 2
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %159, align 8
  store i32 0, i32* %2, align 4
  br label %168

160:                                              ; preds = %144
  %161 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %162 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %164 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = call i32 @vfree(%struct.TYPE_8__* %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %160, %153, %82, %67, %54
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @vmalloc(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @soc_mbus_get_fmtdesc(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
