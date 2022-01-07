; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.sn9c102_device* }
%struct.sn9c102_device = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@sn9c102_dev_lock = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@sn9c102_release_resources = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device not present\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Device /dev/video%d is already in use\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Simultaneous opens are not supported\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"A blocking open() has been requested. Wait for the device to be released...\00", align 1
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Initialization failed again. I will retry on next open().\00", align 1
@IO_NONE = common dso_local global i32 0, align 4
@STREAM_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Video device /dev/video%d is open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sn9c102_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @down_read_trylock(i32* @sn9c102_dev_lock)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERESTARTSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %181

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.sn9c102_device* @video_drvdata(%struct.file* %12)
  store %struct.sn9c102_device* %13, %struct.sn9c102_device** %4, align 8
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %14, i32 0, i32 10
  %16 = call i64 @wait_for_completion_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = call i32 @up_read(i32* @sn9c102_dev_lock)
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %181

22:                                               ; preds = %11
  %23 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %24 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %23, i32 0, i32 1
  %25 = call i32 @kref_get(i32* %24)
  %26 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %27 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %26, i32 0, i32 2
  %28 = call i64 @mutex_lock_interruptible(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %32 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %31, i32 0, i32 1
  %33 = load i32, i32* @sn9c102_release_resources, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  %35 = call i32 @up_read(i32* @sn9c102_dev_lock)
  %36 = load i32, i32* @ERESTARTSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %181

38:                                               ; preds = %22
  %39 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %40 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DEV_DISCONNECTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %167

49:                                               ; preds = %38
  %50 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %51 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %49
  %55 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %56 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @DBG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 (i32, i8*, ...) @DBG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.file*, %struct.file** %3, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %54
  %69 = load %struct.file*, %struct.file** %3, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @O_NDELAY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %54
  %76 = load i32, i32* @EWOULDBLOCK, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %167

78:                                               ; preds = %68
  %79 = call i32 (i32, i8*, ...) @DBG(i32 2, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @up_read(i32* @sn9c102_dev_lock)
  %81 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %82 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %85 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DEV_DISCONNECTED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %78
  %91 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %92 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %78
  %97 = phi i1 [ true, %78 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @wait_event_interruptible_exclusive(i32 %83, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = call i32 @down_read(i32* @sn9c102_dev_lock)
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %167

104:                                              ; preds = %96
  %105 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %106 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DEV_DISCONNECTED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %167

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %49
  %116 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %117 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %124 = call i32 @sn9c102_init(%struct.sn9c102_device* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 (i32, i8*, ...) @DBG(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %167

129:                                              ; preds = %122
  %130 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %133 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %129, %115
  %137 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %138 = call i32 @sn9c102_start_transfer(%struct.sn9c102_device* %137)
  store i32 %138, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %167

141:                                              ; preds = %136
  %142 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %143 = load %struct.file*, %struct.file** %3, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 1
  store %struct.sn9c102_device* %142, %struct.sn9c102_device** %144, align 8
  %145 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %146 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* @IO_NONE, align 4
  %150 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %151 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @STREAM_OFF, align 4
  %153 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %154 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %156 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %155, i32 0, i32 5
  store i64 0, i64* %156, align 8
  %157 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %158 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %160 = call i32 @sn9c102_empty_framequeues(%struct.sn9c102_device* %159)
  %161 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %162 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %161, i32 0, i32 3
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @DBG(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %141, %140, %127, %111, %103, %75, %45
  %168 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %169 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %168, i32 0, i32 2
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %175 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %174, i32 0, i32 1
  %176 = load i32, i32* @sn9c102_release_resources, align 4
  %177 = call i32 @kref_put(i32* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %167
  %179 = call i32 @up_read(i32* @sn9c102_dev_lock)
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %178, %30, %18, %8
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local %struct.sn9c102_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible_exclusive(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @sn9c102_init(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_start_transfer(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_empty_framequeues(%struct.sn9c102_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
