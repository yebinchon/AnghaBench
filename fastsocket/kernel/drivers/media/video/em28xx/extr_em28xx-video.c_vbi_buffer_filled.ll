; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vbi_buffer_filled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vbi_buffer_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.em28xx_dmaqueue = type { i32 }
%struct.em28xx_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"[%p/%d] wakeup\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*)* @vbi_buffer_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_buffer_filled(%struct.em28xx* %0, %struct.em28xx_dmaqueue* %1, %struct.em28xx_buffer* %2) #0 {
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.em28xx_dmaqueue*, align 8
  %6 = alloca %struct.em28xx_buffer*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.em28xx_dmaqueue* %1, %struct.em28xx_dmaqueue** %5, align 8
  store %struct.em28xx_buffer* %2, %struct.em28xx_buffer** %6, align 8
  %7 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %8 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.em28xx_buffer* %7, i32 %11)
  %13 = load i32, i32* @VIDEOBUF_DONE, align 4
  %14 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = call i32 @do_gettimeofday(i32* %24)
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @wake_up(i32* %35)
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*, %struct.em28xx_buffer*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
