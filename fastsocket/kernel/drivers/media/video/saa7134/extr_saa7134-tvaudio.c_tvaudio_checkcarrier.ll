; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_checkcarrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_checkcarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mainscan = type { i32, i32, i32 }

@audio_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"debug %d:\00", align 1
@SAA7134_LEVEL_READOUT1 = common dso_local global i32 0, align 4
@SCAN_SAMPLE_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  #  %6d  # \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %6d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"scanning %d.%03d MHz [%4s] =>  dc is %5d [%d/%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"skipping %d.%03d MHz [%4s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.mainscan*)* @tvaudio_checkcarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_checkcarrier(%struct.saa7134_dev* %0, %struct.mainscan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.mainscan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.mainscan* %1, %struct.mainscan** %5, align 8
  %10 = load i32, i32* @audio_debug, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %61

12:                                               ; preds = %2
  %13 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %14 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -150, i32* %9, align 4
  br label %17

17:                                               ; preds = %56, %12
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 150
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %22 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %23 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %28 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @tvaudio_setcarrier(%struct.saa7134_dev* %21, i32 %26, i32 %31)
  %33 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %34 = ashr i32 %33, 2
  %35 = call i32 @saa_readl(i32 %34)
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %37 = load i32, i32* @SCAN_SAMPLE_DELAY, align 4
  %38 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %164

41:                                               ; preds = %20
  %42 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %43 = ashr i32 %42, 2
  %44 = call i32 @saa_readl(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 0, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 16
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 16
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 30
  store i32 %58, i32* %9, align 4
  br label %17

59:                                               ; preds = %17
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %2
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %63 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %68 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %149

72:                                               ; preds = %61
  %73 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %74 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %75 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 90
  %78 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %79 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 90
  %82 = call i32 @tvaudio_setcarrier(%struct.saa7134_dev* %73, i32 %77, i32 %81)
  %83 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %84 = ashr i32 %83, 2
  %85 = call i32 @saa_readl(i32 %84)
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %87 = load i32, i32* @SCAN_SAMPLE_DELAY, align 4
  %88 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %164

91:                                               ; preds = %72
  %92 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %93 = ashr i32 %92, 2
  %94 = call i32 @saa_readl(i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %96 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %97 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 90
  %100 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %101 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 90
  %104 = call i32 @tvaudio_setcarrier(%struct.saa7134_dev* %95, i32 %99, i32 %103)
  %105 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %106 = ashr i32 %105, 2
  %107 = call i32 @saa_readl(i32 %106)
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %109 = load i32, i32* @SCAN_SAMPLE_DELAY, align 4
  %110 = call i64 @tvaudio_sleep(%struct.saa7134_dev* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %164

113:                                              ; preds = %91
  %114 = load i32, i32* @SAA7134_LEVEL_READOUT1, align 4
  %115 = ashr i32 %114, 2
  %116 = call i32 @saa_readl(i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = ashr i32 %117, 16
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 16
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %125, %126
  br label %132

128:                                              ; preds = %113
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %129, %130
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i32 [ %127, %124 ], [ %131, %128 ]
  store i32 %133, i32* %8, align 4
  %134 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %135 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 1000
  %138 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %139 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = srem i32 %140, 1000
  %142 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %143 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %141, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %162

149:                                              ; preds = %61
  store i32 0, i32* %8, align 4
  %150 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %151 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 1000
  %154 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %155 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 1000
  %158 = load %struct.mainscan*, %struct.mainscan** %5, align 8
  %159 = getelementptr inbounds %struct.mainscan, %struct.mainscan* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %149, %132
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %112, %90, %40
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @tvaudio_setcarrier(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i64 @tvaudio_sleep(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
