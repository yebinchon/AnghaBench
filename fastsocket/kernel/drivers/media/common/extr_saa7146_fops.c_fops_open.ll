; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.saa7146_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { {}* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.TYPE_9__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.video_device = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"file:%p, dev:%s\0A\00", align 1
@saa7146_devices_lock = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"using: %p\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"no extension registered for this device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"cannot allocate memory for per open data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"initializing vbi...\0A\00", align 1
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"initializing video...\0A\00", align 1
@saa7146_video_uops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.saa7146_dev* @video_drvdata(%struct.file* %11)
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %5, align 8
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.video_device*, %struct.video_device** %4, align 8
  %15 = call i32 @video_device_node_name(%struct.video_device* %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DEB_EE(i8* %17)
  %19 = call i64 @mutex_lock_interruptible(i32* @saa7146_devices_lock)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %144

24:                                               ; preds = %1
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %26 = bitcast %struct.saa7146_dev* %25 to i8*
  %27 = call i32 @DEB_D(i8* %26)
  %28 = load %struct.video_device*, %struct.video_device** %4, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp eq %struct.TYPE_8__* null, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = call i32 @DEB_S(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %130

48:                                               ; preds = %37
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.saa7146_fh* @kzalloc(i32 16, i32 %49)
  store %struct.saa7146_fh* %50, %struct.saa7146_fh** %6, align 8
  %51 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %52 = icmp eq %struct.saa7146_fh* null, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @DEB_S(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %130

57:                                               ; preds = %48
  %58 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %59 = load %struct.file*, %struct.file** %3, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store %struct.saa7146_fh* %58, %struct.saa7146_fh** %60, align 8
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %62 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %63 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %62, i32 0, i32 1
  store %struct.saa7146_dev* %61, %struct.saa7146_dev** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %66 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %68 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %57
  %74 = call i32 @DEB_S(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %86 = load %struct.file*, %struct.file** %3, align 8
  %87 = call i32 %84(%struct.saa7146_dev* %85, %struct.file* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %73
  %89 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %90 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = bitcast {}** %93 to i32 (%struct.file*)**
  %95 = load i32 (%struct.file*)*, i32 (%struct.file*)** %94, align 8
  %96 = icmp ne i32 (%struct.file*)* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %99 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = bitcast {}** %102 to i32 (%struct.file*)**
  %104 = load i32 (%struct.file*)*, i32 (%struct.file*)** %103, align 8
  %105 = load %struct.file*, %struct.file** %3, align 8
  %106 = call i32 %104(%struct.file* %105)
  br label %107

107:                                              ; preds = %97, %88
  br label %114

108:                                              ; preds = %57
  %109 = call i32 @DEB_S(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @saa7146_video_uops, i32 0, i32 0), align 8
  %111 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %112 = load %struct.file*, %struct.file** %3, align 8
  %113 = call i32 %110(%struct.saa7146_dev* %111, %struct.file* %112)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %108, %107
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 0, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %130

118:                                              ; preds = %114
  %119 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %120 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @try_module_get(i32 %123)
  %125 = icmp eq i64 0, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %130

129:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %126, %117, %53, %44
  %131 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %132 = icmp ne %struct.saa7146_fh* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %138 = call i32 @kfree(%struct.saa7146_fh* %137)
  %139 = load %struct.file*, %struct.file** %3, align 8
  %140 = getelementptr inbounds %struct.file, %struct.file* %139, i32 0, i32 0
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %140, align 8
  br label %141

141:                                              ; preds = %136, %133, %130
  %142 = call i32 @mutex_unlock(i32* @saa7146_devices_lock)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %21
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.saa7146_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local %struct.saa7146_fh* @kzalloc(i32, i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.saa7146_fh*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
