; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_getstereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_getstereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.saa7134_tvaudio = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@SAA7134_IDENT_SIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"getstereo: fm/stereo: idp=0x%x\0A\00", align 1
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@SAA7134_AUDIO_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"getstereo: nicam=0x%x\0A\00", align 1
@SAA7134_NICAM_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"getstereo: nicam_status=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"found audio subchannels:%s%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" mono\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" stereo\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" lang1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" lang2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_tvaudio*)* @tvaudio_getstereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_getstereo(%struct.saa7134_dev* %0, %struct.saa7134_tvaudio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_tvaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_tvaudio* %1, %struct.saa7134_tvaudio** %5, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %11 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %75 [
    i32 131, label %13
    i32 132, label %15
    i32 133, label %15
    i32 130, label %46
    i32 128, label %47
    i32 129, label %47
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %14, i32* %3, align 4
  br label %106

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @SAA7134_IDENT_SIF, align 4
  %17 = call i32 @saa_readb(i32 %16)
  %18 = and i32 %17, 224
  %19 = ashr i32 %18, 5
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 3, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %27 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %9, align 4
  br label %45

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 5
  %32 = icmp eq i32 5, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %35 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %9, align 4
  br label %44

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 1, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %25
  br label %75

46:                                               ; preds = %2
  br label %75

47:                                               ; preds = %2, %2
  %48 = load i32, i32* @SAA7134_AUDIO_STATUS, align 4
  %49 = call i32 @saa_readb(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %47
  %56 = load i32, i32* @SAA7134_NICAM_STATUS, align 4
  %57 = call i32 @saa_readb(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 3
  switch i32 %61, label %70 [
    i32 1, label %62
    i32 2, label %66
  ]

62:                                               ; preds = %55
  %63 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %64 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %9, align 4
  br label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %68 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %9, align 4
  br label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66, %62
  br label %74

73:                                               ; preds = %47
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %2, %74, %46, %45
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %103 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %90, i8* %96, i8* %102)
  br label %104

104:                                              ; preds = %78, %75
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %13
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @saa_readb(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
