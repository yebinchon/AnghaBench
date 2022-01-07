; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__*, i32, i64, i32, i32, %struct.framebuf*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }
%struct.framebuf = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DQBUF #%d status:%d seq:%d length:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*, %struct.file*)* @ioctl_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_dqbuf(i8* %0, %struct.camera_data* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.camera_data*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.v4l2_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.framebuf*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.camera_data* %1, %struct.camera_data** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.v4l2_buffer*
  store %struct.v4l2_buffer* %12, %struct.v4l2_buffer** %8, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %190

27:                                               ; preds = %18
  %28 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %29 = call i32 @find_earliest_filled_buffer(%struct.camera_data* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.file*, %struct.file** %7, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %190

42:                                               ; preds = %32, %27
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %42
  %46 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 5
  %48 = load %struct.framebuf*, %struct.framebuf** %47, align 8
  store %struct.framebuf* %48, %struct.framebuf** %10, align 8
  %49 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 4
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %56 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 5
  %62 = load %struct.framebuf*, %struct.framebuf** %61, align 8
  store %struct.framebuf* %62, %struct.framebuf** %10, align 8
  %63 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FRAME_READY, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %59, %45
  %68 = phi i1 [ true, %45 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event_interruptible(i32 %54, i32 %69)
  %71 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %72 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %71, i32 0, i32 4
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load i32, i32* @current, align 4
  %75 = call i64 @signal_pending(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %190

80:                                               ; preds = %67
  %81 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOTTY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %190

88:                                               ; preds = %80
  %89 = load %struct.framebuf*, %struct.framebuf** %10, align 8
  %90 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %42
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %109 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %112 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %114 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 4
  %116 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %117 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %127 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %126, i32 0, i32 11
  store i32 %125, i32* %127, align 8
  %128 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %129 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %132 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %144 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %151 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %154, i32 0, i32 10
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  %157 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %158 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %161 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  %162 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %162, i32 0, i32 8
  store i64 0, i64* %163, align 8
  %164 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %165 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %164, i32 0, i32 7
  store i64 0, i64* %165, align 8
  %166 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %167 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %166, i32 0, i32 6
  %168 = call i32 @memset(i32* %167, i32 0, i32 4)
  %169 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %170 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %174 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %177 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %184 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %8, align 8
  %187 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %172, i32 %182, i32 %185, i32 %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %92, %85, %77, %39, %24
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @find_earliest_filled_buffer(%struct.camera_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
