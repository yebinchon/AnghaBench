; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.cx231xx = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"closing device\0A\00", align 1
@Audio = common dso_local global i32 0, align 4
@INDEX_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set alternate setting !\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"audio users: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"disabling audio stream!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"released lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx231xx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx231xx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.cx231xx* %7, %struct.cx231xx** %5, align 8
  %8 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 4
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %13 = load i32, i32* @Audio, align 4
  %14 = call i32 @cx231xx_capture_start(%struct.cx231xx* %12, i32 0, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %16 = load i32, i32* @INDEX_AUDIO, align 4
  %17 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %15, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 4
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 4
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %26
  %43 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 2
  %61 = call i64 @atomic_read(i32* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %65 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %64, i32 0, i32 2
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %68 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %67, i32 0, i32 1
  %69 = call i32 @schedule_work(i32* %68)
  br label %70

70:                                               ; preds = %63, %48
  br label %71

71:                                               ; preds = %70, %42, %26
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_errdev(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
