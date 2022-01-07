; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_saa7146_set_winsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_saa7146_set_winsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@palette2fmt = common dso_local global i32* null, align 8
@VIDEO_PALETTE_RGB555 = common dso_local global i64 0, align 8
@bpp2fmt = common dso_local global i64* null, align 8
@SAA7146_BASE_EVEN1 = common dso_local global i32 0, align 4
@SAA7146_BASE_ODD1 = common dso_local global i32 0, align 4
@SAA7146_PITCH1 = common dso_local global i32 0, align 4
@SAA7146_PROT_ADDR1 = common dso_local global i32 0, align 4
@SAA7146_PAGE1 = common dso_local global i32 0, align 4
@SAA7146_CLIP_FORMAT_CTRL = common dso_local global i32 0, align 4
@h_prescale = common dso_local global i32* null, align 8
@SAA7146_HPS_H_PRESCALE = common dso_local global i32 0, align 4
@SAA7146_HPS_H_SCALE = common dso_local global i32 0, align 4
@CurrentMode = common dso_local global i64 0, align 8
@VIDEO_MODE_NTSC = common dso_local global i64 0, align 8
@SAA7146_HPS_V_SCALE = common dso_local global i32 0, align 4
@v_gain = common dso_local global i32* null, align 8
@SAA7146_HPS_V_GAIN = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_DMA1 = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_HPS_V = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_HPS_H = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @saa7146_set_winsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_set_winsize(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  %7 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %8 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** @palette2fmt, align 8
  %14 = load i64, i64* @VIDEO_PALETTE_RGB555, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32*, i32** @palette2fmt, align 8
  %19 = load i64*, i64** @bpp2fmt, align 8
  %20 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %21 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %19, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %17, %12
  %32 = phi i32 [ %16, %12 ], [ %30, %17 ]
  store i32 %32, i32* %3, align 4
  %33 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %34 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %37 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %41 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  %45 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %46 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %50 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  %54 = add nsw i32 %44, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %56 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @SAA7146_BASE_EVEN1, align 4
  %62 = call i32 @saawrite(i32 %60, i32 %61)
  %63 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %64 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %70 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = load i32, i32* @SAA7146_BASE_ODD1, align 4
  %75 = call i32 @saawrite(i32 %73, i32 %74)
  %76 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %77 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 2
  %81 = load i32, i32* @SAA7146_PITCH1, align 4
  %82 = call i32 @saawrite(i32 %80, i32 %81)
  %83 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %84 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %88 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %92 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %90, %94
  %96 = add nsw i32 %86, %95
  %97 = load i32, i32* @SAA7146_PROT_ADDR1, align 4
  %98 = call i32 @saawrite(i32 %96, i32 %97)
  %99 = load i32, i32* @SAA7146_PAGE1, align 4
  %100 = call i32 @saawrite(i32 0, i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, 96
  %103 = load i32, i32* @SAA7146_CLIP_FORMAT_CTRL, align 4
  %104 = call i32 @saawrite(i32 %102, i32 %103)
  %105 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %106 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sdiv i32 704, %109
  %111 = and i32 %110, 63
  store i32 %111, i32* %4, align 4
  %112 = load i32*, i32** @h_prescale, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SAA7146_HPS_H_PRESCALE, align 4
  %118 = call i32 @saawrite(i32 %116, i32 %117)
  %119 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %120 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 720896, %122
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  %126 = sdiv i32 %123, %125
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = shl i32 %127, 12
  %129 = or i32 %128, 12
  %130 = load i32, i32* @SAA7146_HPS_H_SCALE, align 4
  %131 = call i32 @saawrite(i32 %129, i32 %130)
  %132 = load i64, i64* @CurrentMode, align 8
  %133 = load i64, i64* @VIDEO_MODE_NTSC, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  %136 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %137 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 1024
  %141 = sdiv i32 %140, 480
  %142 = sub nsw i32 1024, %141
  store i32 %142, i32* %6, align 4
  br label %151

143:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  %144 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %145 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 1024
  %149 = sdiv i32 %148, 576
  %150 = sub nsw i32 1024, %149
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %143, %135
  %152 = load i32, i32* %6, align 4
  %153 = shl i32 %152, 21
  %154 = or i32 -2147483648, %153
  %155 = load i32, i32* %5, align 4
  %156 = shl i32 %155, 15
  %157 = or i32 %154, %156
  %158 = load i32, i32* @SAA7146_HPS_V_SCALE, align 4
  %159 = call i32 @saawrite(i32 %157, i32 %158)
  %160 = load i32*, i32** @v_gain, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SAA7146_HPS_V_GAIN, align 4
  %166 = call i32 @saawrite(i32 %164, i32 %165)
  %167 = load i32, i32* @SAA7146_MC2_UPLD_DMA1, align 4
  %168 = load i32, i32* @SAA7146_MC2_UPLD_HPS_V, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SAA7146_MC2_UPLD_HPS_H, align 4
  %171 = or i32 %169, %170
  %172 = shl i32 %171, 16
  %173 = load i32, i32* @SAA7146_MC2_UPLD_DMA1, align 4
  %174 = load i32, i32* @SAA7146_MC2_UPLD_HPS_V, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @SAA7146_MC2_UPLD_HPS_H, align 4
  %177 = or i32 %175, %176
  %178 = or i32 %172, %177
  %179 = load i32, i32* @SAA7146_MC2, align 4
  %180 = call i32 @saawrite(i32 %178, i32 %179)
  ret void
}

declare dso_local i32 @saawrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
