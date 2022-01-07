; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_dbgbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_dbgbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.v4l2_buffer = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, %struct.v4l2_timecode }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.v4l2_timecode = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [139 x i8] c"%02ld:%02d:%02d.%08ld index=%d, type=%s, bytesused=%d, flags=0x%08d, field=%0d, sequence=%d, memory=%s, offset/userptr=0x%08lx, length=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32 0, align 4
@v4l2_memory_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"timecode=%02d:%02d:%02d type=%d, flags=0x%08d, frames=%d, userbits=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.video_device*, %struct.v4l2_buffer*)* @dbgbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbgbuf(i32 %0, %struct.video_device* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.v4l2_timecode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.video_device* %1, %struct.video_device** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %8 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 10
  store %struct.v4l2_timecode* %9, %struct.v4l2_timecode** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 3600
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 60
  %21 = srem i32 %20, 60
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = srem i32 %25, 60
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @v4l2_type_names, align 4
  %38 = call i32 @prt_names(i32 %36, i32 %37)
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @v4l2_memory_names, align 4
  %55 = call i32 @prt_names(i32 %53, i32 %54)
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dbgarg(i32 %10, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %26, i64 %30, i32 %33, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %55, i32 %59, i32 %62)
  %64 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dbgarg2(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %86)
  ret void
}

declare dso_local i32 @dbgarg(i32, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prt_names(i32, i32) #1

declare dso_local i32 @dbgarg2(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
