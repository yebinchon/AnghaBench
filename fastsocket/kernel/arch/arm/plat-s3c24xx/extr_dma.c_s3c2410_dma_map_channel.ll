; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_map_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_map_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.s3c2410_dma_chan*, %struct.s3c24xx_dma_map*)*, %struct.s3c24xx_dma_map* }
%struct.s3c2410_dma_chan = type { i64, i32, %struct.s3c24xx_dma_map* }
%struct.s3c24xx_dma_map = type { i64* }
%struct.TYPE_4__ = type { %struct.s3c24xx_dma_order_ch* }
%struct.s3c24xx_dma_order_ch = type { i64*, i32 }

@dma_sel = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@dma_order = common dso_local global %struct.TYPE_4__* null, align 8
@dma_channels = common dso_local global i32 0, align 4
@s3c2410_chans = common dso_local global %struct.s3c2410_dma_chan* null, align 8
@DMA_CH_VALID = common dso_local global i32 0, align 4
@DMA_CH_NEVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mapped channel %d to %d\0A\00", align 1
@s3c_dma_chan_map = common dso_local global %struct.s3c2410_dma_chan** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c2410_dma_chan* (i32)* @s3c2410_dma_map_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c2410_dma_chan* @s3c2410_dma_map_channel(i32 %0) #0 {
  %2 = alloca %struct.s3c2410_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c24xx_dma_order_ch*, align 8
  %5 = alloca %struct.s3c24xx_dma_map*, align 8
  %6 = alloca %struct.s3c2410_dma_chan*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.s3c24xx_dma_order_ch* null, %struct.s3c24xx_dma_order_ch** %4, align 8
  %8 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_sel, i32 0, i32 2), align 8
  %9 = icmp eq %struct.s3c24xx_dma_map* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_sel, i32 0, i32 0), align 8
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store %struct.s3c2410_dma_chan* null, %struct.s3c2410_dma_chan** %2, align 8
  br label %142

15:                                               ; preds = %10
  %16 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_sel, i32 0, i32 2), align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.s3c24xx_dma_map, %struct.s3c24xx_dma_map* %16, i64 %18
  store %struct.s3c24xx_dma_map* %19, %struct.s3c24xx_dma_map** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_order, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %83

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_order, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.s3c24xx_dma_order_ch*, %struct.s3c24xx_dma_order_ch** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.s3c24xx_dma_order_ch, %struct.s3c24xx_dma_order_ch* %25, i64 %27
  store %struct.s3c24xx_dma_order_ch* %28, %struct.s3c24xx_dma_order_ch** %4, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %71, %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @dma_channels, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load %struct.s3c24xx_dma_order_ch*, %struct.s3c24xx_dma_order_ch** %4, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_dma_order_ch, %struct.s3c24xx_dma_order_ch* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @is_channel_valid(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %71

44:                                               ; preds = %33
  %45 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** @s3c2410_chans, align 8
  %46 = load %struct.s3c24xx_dma_order_ch*, %struct.s3c24xx_dma_order_ch** %4, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_dma_order_ch, %struct.s3c24xx_dma_order_ch* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %45, i64 %52
  %54 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load %struct.s3c24xx_dma_order_ch*, %struct.s3c24xx_dma_order_ch** %4, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_dma_order_ch, %struct.s3c24xx_dma_order_ch* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @DMA_CH_VALID, align 4
  %66 = xor i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = and i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  br label %121

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.s3c24xx_dma_order_ch*, %struct.s3c24xx_dma_order_ch** %4, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_dma_order_ch, %struct.s3c24xx_dma_order_ch* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DMA_CH_NEVER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store %struct.s3c2410_dma_chan* null, %struct.s3c2410_dma_chan** %2, align 8
  br label %142

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %15
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %112, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @dma_channels, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** %5, align 8
  %90 = getelementptr inbounds %struct.s3c24xx_dma_map, %struct.s3c24xx_dma_map* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @is_channel_valid(i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %112

99:                                               ; preds = %88
  %100 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** @s3c2410_chans, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %100, i64 %102
  %104 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  br label %115

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %98
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %84

115:                                              ; preds = %107, %84
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @dma_channels, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store %struct.s3c2410_dma_chan* null, %struct.s3c2410_dma_chan** %2, align 8
  br label %142

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %57
  %122 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** @s3c2410_chans, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %122, i64 %124
  store %struct.s3c2410_dma_chan* %125, %struct.s3c2410_dma_chan** %6, align 8
  %126 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** %5, align 8
  %127 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %128 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %127, i32 0, i32 2
  store %struct.s3c24xx_dma_map* %126, %struct.s3c24xx_dma_map** %128, align 8
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %131 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %133 = load %struct.s3c2410_dma_chan**, %struct.s3c2410_dma_chan*** @s3c_dma_chan_map, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %133, i64 %135
  store %struct.s3c2410_dma_chan* %132, %struct.s3c2410_dma_chan** %136, align 8
  %137 = load i32 (%struct.s3c2410_dma_chan*, %struct.s3c24xx_dma_map*)*, i32 (%struct.s3c2410_dma_chan*, %struct.s3c24xx_dma_map*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_sel, i32 0, i32 1), align 8
  %138 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %139 = load %struct.s3c24xx_dma_map*, %struct.s3c24xx_dma_map** %5, align 8
  %140 = call i32 %137(%struct.s3c2410_dma_chan* %138, %struct.s3c24xx_dma_map* %139)
  %141 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  store %struct.s3c2410_dma_chan* %141, %struct.s3c2410_dma_chan** %2, align 8
  br label %142

142:                                              ; preds = %121, %119, %81, %14
  %143 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  ret %struct.s3c2410_dma_chan* %143
}

declare dso_local i32 @is_channel_valid(i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
