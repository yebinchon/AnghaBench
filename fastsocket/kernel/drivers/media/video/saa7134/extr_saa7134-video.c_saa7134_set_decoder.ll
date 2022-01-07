; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_set_decoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_set_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, i32, i32, i64, i64, i32, %struct.saa7134_tvnorm* }
%struct.saa7134_tvnorm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@noninterlaced = common dso_local global i64 0, align 8
@SAA7134_INCR_DELAY = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL2 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL3 = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL4 = common dso_local global i32 0, align 4
@SAA7134_HSYNC_START = common dso_local global i32 0, align 4
@SAA7134_HSYNC_STOP = common dso_local global i32 0, align 4
@SAA7134_SOURCE_TIMING1 = common dso_local global i32 0, align 4
@SAA7134_SYNC_CTRL = common dso_local global i32 0, align 4
@SAA7134_LUMA_CTRL = common dso_local global i32 0, align 4
@SAA7134_DEC_LUMA_BRIGHT = common dso_local global i32 0, align 4
@SAA7134_DEC_LUMA_CONTRAST = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_SATURATION = common dso_local global i32 0, align 4
@SAA7134_DEC_CHROMA_HUE = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_CHROMA_GAIN = common dso_local global i32 0, align 4
@SAA7134_CHROMA_CTRL2 = common dso_local global i32 0, align 4
@SAA7134_MODE_DELAY_CTRL = common dso_local global i32 0, align 4
@SAA7134_ANALOG_ADC = common dso_local global i32 0, align 4
@SAA7134_VGATE_START = common dso_local global i32 0, align 4
@SAA7134_VGATE_STOP = common dso_local global i32 0, align 4
@SAA7134_MISC_VGATE_MSB = common dso_local global i32 0, align 4
@SAA7134_RAW_DATA_GAIN = common dso_local global i32 0, align 4
@SAA7134_RAW_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*)* @saa7134_set_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_set_decoder(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7134_tvnorm*, align 8
  %7 = alloca %struct.TYPE_2__, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %9 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %8, i32 0, i32 7
  %10 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  store %struct.saa7134_tvnorm* %10, %struct.saa7134_tvnorm** %6, align 8
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @card_in(%struct.saa7134_dev* %11, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %20 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %23 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, 128
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i64, i64* @noninterlaced, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @SAA7134_INCR_DELAY, align 4
  %43 = call i32 @saa_writeb(i32 %42, i32 8)
  %44 = load i32, i32* @SAA7134_ANALOG_IN_CTRL1, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 192, %45
  %47 = call i32 @saa_writeb(i32 %44, i32 %46)
  %48 = load i32, i32* @SAA7134_ANALOG_IN_CTRL2, align 4
  %49 = call i32 @saa_writeb(i32 %48, i32 0)
  %50 = load i32, i32* @SAA7134_ANALOG_IN_CTRL3, align 4
  %51 = call i32 @saa_writeb(i32 %50, i32 144)
  %52 = load i32, i32* @SAA7134_ANALOG_IN_CTRL4, align 4
  %53 = call i32 @saa_writeb(i32 %52, i32 144)
  %54 = load i32, i32* @SAA7134_HSYNC_START, align 4
  %55 = call i32 @saa_writeb(i32 %54, i32 235)
  %56 = load i32, i32* @SAA7134_HSYNC_STOP, align 4
  %57 = call i32 @saa_writeb(i32 %56, i32 224)
  %58 = load i32, i32* @SAA7134_SOURCE_TIMING1, align 4
  %59 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %60 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @saa_writeb(i32 %58, i32 %61)
  %63 = load i32, i32* @SAA7134_SYNC_CTRL, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @saa_writeb(i32 %63, i32 %64)
  %66 = load i32, i32* @SAA7134_LUMA_CTRL, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @saa_writeb(i32 %66, i32 %67)
  %69 = load i32, i32* @SAA7134_DEC_LUMA_BRIGHT, align 4
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @saa_writeb(i32 %69, i32 %72)
  %74 = load i32, i32* @SAA7134_DEC_LUMA_CONTRAST, align 4
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %41
  %80 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %81 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 0, %82
  br label %88

84:                                               ; preds = %41
  %85 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %86 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %83, %79 ], [ %87, %84 ]
  %90 = call i32 @saa_writeb(i32 %74, i32 %89)
  %91 = load i32, i32* @SAA7134_DEC_CHROMA_SATURATION, align 4
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %98 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 0, %99
  br label %105

101:                                              ; preds = %88
  %102 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %103 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i32 [ %100, %96 ], [ %104, %101 ]
  %107 = call i32 @saa_writeb(i32 %91, i32 %106)
  %108 = load i32, i32* @SAA7134_DEC_CHROMA_HUE, align 4
  %109 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %110 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @saa_writeb(i32 %108, i32 %111)
  %113 = load i32, i32* @SAA7134_CHROMA_CTRL1, align 4
  %114 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %115 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @saa_writeb(i32 %113, i32 %116)
  %118 = load i32, i32* @SAA7134_CHROMA_GAIN, align 4
  %119 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %120 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @saa_writeb(i32 %118, i32 %121)
  %123 = load i32, i32* @SAA7134_CHROMA_CTRL2, align 4
  %124 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %125 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @saa_writeb(i32 %123, i32 %126)
  %128 = load i32, i32* @SAA7134_MODE_DELAY_CTRL, align 4
  %129 = call i32 @saa_writeb(i32 %128, i32 0)
  %130 = load i32, i32* @SAA7134_ANALOG_ADC, align 4
  %131 = call i32 @saa_writeb(i32 %130, i32 1)
  %132 = load i32, i32* @SAA7134_VGATE_START, align 4
  %133 = call i32 @saa_writeb(i32 %132, i32 17)
  %134 = load i32, i32* @SAA7134_VGATE_STOP, align 4
  %135 = call i32 @saa_writeb(i32 %134, i32 254)
  %136 = load i32, i32* @SAA7134_MISC_VGATE_MSB, align 4
  %137 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %6, align 8
  %138 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @saa_writeb(i32 %136, i32 %139)
  %141 = load i32, i32* @SAA7134_RAW_DATA_GAIN, align 4
  %142 = call i32 @saa_writeb(i32 %141, i32 64)
  %143 = load i32, i32* @SAA7134_RAW_DATA_OFFSET, align 4
  %144 = call i32 @saa_writeb(i32 %143, i32 128)
  ret void
}

declare dso_local i32 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
