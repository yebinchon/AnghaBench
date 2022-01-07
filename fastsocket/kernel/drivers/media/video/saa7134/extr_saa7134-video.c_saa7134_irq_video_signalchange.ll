; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_irq_video_signalchange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_irq_video_signalchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.saa7134_dev*)* }

@saa7134_irq_video_signalchange.st = internal global [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"(no signal)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@SAA7134_STATUS_VIDEO1 = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"DCSDT: pll: %s, sync: %s, norm: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"not locked\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@noninterlaced = common dso_local global i32 0, align 4
@SAA7134_SYNC_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_irq_video_signalchange(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %5 = load i32, i32* @SAA7134_STATUS_VIDEO1, align 4
  %6 = call i32 @saa_readb(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SAA7134_STATUS_VIDEO2, align 4
  %8 = call i32 @saa_readb(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* @saa7134_irq_video_signalchange.st, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %13, i8* %18, i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 64
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %28, %1
  %38 = phi i1 [ true, %28 ], [ true, %1 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %56 = call i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev* %55)
  br label %60

57:                                               ; preds = %37
  %58 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %59 = call i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @noninterlaced, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @SAA7134_SYNC_CTRL, align 4
  %74 = call i32 @saa_clearb(i32 %73, i32 32)
  br label %78

75:                                               ; preds = %67, %64, %60
  %76 = load i32, i32* @SAA7134_SYNC_CTRL, align 4
  %77 = call i32 @saa_setb(i32 %76, i32 32)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %80 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %85 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.saa7134_dev*)*, i32 (%struct.saa7134_dev*)** %87, align 8
  %89 = icmp ne i32 (%struct.saa7134_dev*)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %92 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.saa7134_dev*)*, i32 (%struct.saa7134_dev*)** %94, align 8
  %96 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %97 = call i32 %95(%struct.saa7134_dev* %96)
  br label %98

98:                                               ; preds = %90, %83, %78
  ret void
}

declare dso_local i32 @saa_readb(i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev*) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
