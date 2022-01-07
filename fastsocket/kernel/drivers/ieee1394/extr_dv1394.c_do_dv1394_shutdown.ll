; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_do_dv1394_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_do_dv1394_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_card = type { i32, i32, i32, i64, i32, i64, i32, i64, i32**, %struct.TYPE_3__*, i32, i64, i64, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dv1394: shutdown...\0A\00", align 1
@OHCI1394_IsoXmitIntMaskClear = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dv1394: IT context %d released\0A\00", align 1
@OHCI1394_IsoRecvIntMaskClear = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dv1394: IR context %d released\0A\00", align 1
@DV1394_MAX_FRAMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dv1394: shutdown OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_card*, i32)* @do_dv1394_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_dv1394_shutdown(%struct.video_card* %0, i32 %1) #0 {
  %3 = alloca %struct.video_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.video_card* %0, %struct.video_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.video_card*, %struct.video_card** %3, align 8
  %10 = call i32 @stop_dma(%struct.video_card* %9)
  %11 = load %struct.video_card*, %struct.video_card** %3, align 8
  %12 = getelementptr inbounds %struct.video_card, %struct.video_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.video_card*, %struct.video_card** %3, align 8
  %17 = getelementptr inbounds %struct.video_card, %struct.video_card* %16, i32 0, i32 18
  store i64 0, i64* %17, align 8
  %18 = load %struct.video_card*, %struct.video_card** %3, align 8
  %19 = getelementptr inbounds %struct.video_card, %struct.video_card* %18, i32 0, i32 17
  store i64 0, i64* %19, align 8
  %20 = load %struct.video_card*, %struct.video_card** %3, align 8
  %21 = getelementptr inbounds %struct.video_card, %struct.video_card* %20, i32 0, i32 16
  store i64 0, i64* %21, align 8
  %22 = load %struct.video_card*, %struct.video_card** %3, align 8
  %23 = getelementptr inbounds %struct.video_card, %struct.video_card* %22, i32 0, i32 9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* @OHCI1394_IsoXmitIntMaskClear, align 4
  %26 = load %struct.video_card*, %struct.video_card** %3, align 8
  %27 = getelementptr inbounds %struct.video_card, %struct.video_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  %30 = call i32 @reg_write(%struct.TYPE_3__* %24, i32 %25, i32 %29)
  %31 = load %struct.video_card*, %struct.video_card** %3, align 8
  %32 = getelementptr inbounds %struct.video_card, %struct.video_card* %31, i32 0, i32 9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.video_card*, %struct.video_card** %3, align 8
  %35 = getelementptr inbounds %struct.video_card, %struct.video_card* %34, i32 0, i32 15
  %36 = call i32 @ohci1394_unregister_iso_tasklet(%struct.TYPE_3__* %33, i32* %35)
  %37 = load %struct.video_card*, %struct.video_card** %3, align 8
  %38 = getelementptr inbounds %struct.video_card, %struct.video_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.video_card*, %struct.video_card** %3, align 8
  %42 = getelementptr inbounds %struct.video_card, %struct.video_card* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %15, %2
  %44 = load %struct.video_card*, %struct.video_card** %3, align 8
  %45 = getelementptr inbounds %struct.video_card, %struct.video_card* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = load %struct.video_card*, %struct.video_card** %3, align 8
  %50 = getelementptr inbounds %struct.video_card, %struct.video_card* %49, i32 0, i32 14
  store i64 0, i64* %50, align 8
  %51 = load %struct.video_card*, %struct.video_card** %3, align 8
  %52 = getelementptr inbounds %struct.video_card, %struct.video_card* %51, i32 0, i32 13
  store i64 0, i64* %52, align 8
  %53 = load %struct.video_card*, %struct.video_card** %3, align 8
  %54 = getelementptr inbounds %struct.video_card, %struct.video_card* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load %struct.video_card*, %struct.video_card** %3, align 8
  %56 = getelementptr inbounds %struct.video_card, %struct.video_card* %55, i32 0, i32 11
  store i64 0, i64* %56, align 8
  %57 = load %struct.video_card*, %struct.video_card** %3, align 8
  %58 = getelementptr inbounds %struct.video_card, %struct.video_card* %57, i32 0, i32 9
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* @OHCI1394_IsoRecvIntMaskClear, align 4
  %61 = load %struct.video_card*, %struct.video_card** %3, align 8
  %62 = getelementptr inbounds %struct.video_card, %struct.video_card* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = call i32 @reg_write(%struct.TYPE_3__* %59, i32 %60, i32 %64)
  %66 = load %struct.video_card*, %struct.video_card** %3, align 8
  %67 = getelementptr inbounds %struct.video_card, %struct.video_card* %66, i32 0, i32 9
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.video_card*, %struct.video_card** %3, align 8
  %70 = getelementptr inbounds %struct.video_card, %struct.video_card* %69, i32 0, i32 10
  %71 = call i32 @ohci1394_unregister_iso_tasklet(%struct.TYPE_3__* %68, i32* %70)
  %72 = load %struct.video_card*, %struct.video_card** %3, align 8
  %73 = getelementptr inbounds %struct.video_card, %struct.video_card* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.video_card*, %struct.video_card** %3, align 8
  %77 = getelementptr inbounds %struct.video_card, %struct.video_card* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %48, %43
  %79 = load %struct.video_card*, %struct.video_card** %3, align 8
  %80 = getelementptr inbounds %struct.video_card, %struct.video_card* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %110

83:                                               ; preds = %78
  %84 = load %struct.video_card*, %struct.video_card** %3, align 8
  %85 = getelementptr inbounds %struct.video_card, %struct.video_card* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 1, %86
  store i32 %87, i32* %6, align 4
  %88 = load %struct.video_card*, %struct.video_card** %3, align 8
  %89 = getelementptr inbounds %struct.video_card, %struct.video_card* %88, i32 0, i32 9
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load i32, i32* %6, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.video_card*, %struct.video_card** %3, align 8
  %97 = getelementptr inbounds %struct.video_card, %struct.video_card* %96, i32 0, i32 9
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load %struct.video_card*, %struct.video_card** %3, align 8
  %103 = getelementptr inbounds %struct.video_card, %struct.video_card* %102, i32 0, i32 9
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.video_card*, %struct.video_card** %3, align 8
  %109 = getelementptr inbounds %struct.video_card, %struct.video_card* %108, i32 0, i32 2
  store i32 -1, i32* %109, align 8
  br label %110

110:                                              ; preds = %83, %78
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %140, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @DV1394_MAX_FRAMES, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load %struct.video_card*, %struct.video_card** %3, align 8
  %117 = getelementptr inbounds %struct.video_card, %struct.video_card* %116, i32 0, i32 8
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.video_card*, %struct.video_card** %3, align 8
  %126 = getelementptr inbounds %struct.video_card, %struct.video_card* %125, i32 0, i32 8
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @frame_delete(i32* %131)
  br label %133

133:                                              ; preds = %124, %115
  %134 = load %struct.video_card*, %struct.video_card** %3, align 8
  %135 = getelementptr inbounds %struct.video_card, %struct.video_card* %134, i32 0, i32 8
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %111

143:                                              ; preds = %111
  %144 = load %struct.video_card*, %struct.video_card** %3, align 8
  %145 = getelementptr inbounds %struct.video_card, %struct.video_card* %144, i32 0, i32 7
  store i64 0, i64* %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.video_card*, %struct.video_card** %3, align 8
  %150 = getelementptr inbounds %struct.video_card, %struct.video_card* %149, i32 0, i32 6
  %151 = call i32 @dma_region_free(i32* %150)
  %152 = load %struct.video_card*, %struct.video_card** %3, align 8
  %153 = getelementptr inbounds %struct.video_card, %struct.video_card* %152, i32 0, i32 5
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.video_card*, %struct.video_card** %3, align 8
  %156 = getelementptr inbounds %struct.video_card, %struct.video_card* %155, i32 0, i32 4
  %157 = call i32 @dma_region_free(i32* %156)
  %158 = load %struct.video_card*, %struct.video_card** %3, align 8
  %159 = getelementptr inbounds %struct.video_card, %struct.video_card* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @debug_printk(i8*, ...) #1

declare dso_local i32 @stop_dma(%struct.video_card*) #1

declare dso_local i32 @reg_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ohci1394_unregister_iso_tasklet(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @frame_delete(i32*) #1

declare dso_local i32 @dma_region_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
