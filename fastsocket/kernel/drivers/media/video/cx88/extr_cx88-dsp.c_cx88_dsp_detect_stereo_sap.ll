; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dsp.c_cx88_dsp_detect_stereo_sap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-dsp.c_cx88_dsp_detect_stereo_sap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i64 }

@UNSET = common dso_local global i32 0, align 4
@MO_AUD_DMACNTRL = common dso_local global i32 0, align 4
@AUD_CTL = common dso_local global i32 0, align 4
@EN_FMRADIO_EN_RDS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"stereo/sap detection result:%s%s%s\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" mono\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" stereo\00", align 1
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" dual\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_dsp_detect_stereo_sap(%struct.cx88_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNSET, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %9 = call i32 @cx_read(i32 %8)
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %83

14:                                               ; preds = %1
  %15 = load i32, i32* @AUD_CTL, align 4
  %16 = call i32 @cx_read(i32 %15)
  %17 = load i32, i32* @EN_FMRADIO_EN_RDS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %14
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %25 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @msecs_to_jiffies(i32 500)
  %28 = add nsw i64 %26, %27
  %29 = call i64 @time_before(i32 %23, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %22
  %34 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %35 = call i32* @read_rds_samples(%struct.cx88_core* %34, i32* %5)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %83

40:                                               ; preds = %33
  %41 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %42 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %55 [
    i32 138, label %44
    i32 136, label %44
    i32 135, label %44
    i32 129, label %44
    i32 137, label %49
    i32 128, label %54
    i32 133, label %54
    i32 130, label %54
    i32 131, label %54
    i32 134, label %54
    i32 132, label %54
  ]

44:                                               ; preds = %40, %40, %40, %40
  %45 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @detect_a2_a2m_eiaj(%struct.cx88_core* %45, i32* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @detect_btsc(%struct.cx88_core* %50, i32* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %40, %40, %40, %40, %40, %40
  br label %55

55:                                               ; preds = %40, %54, %49, %44
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load i32, i32* @UNSET, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %80 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %73, i8* %79)
  br label %81

81:                                               ; preds = %61, %55
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %38, %31, %20, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32* @read_rds_samples(%struct.cx88_core*, i32*) #1

declare dso_local i32 @detect_a2_a2m_eiaj(%struct.cx88_core*, i32*, i32) #1

declare dso_local i32 @detect_btsc(%struct.cx88_core*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
