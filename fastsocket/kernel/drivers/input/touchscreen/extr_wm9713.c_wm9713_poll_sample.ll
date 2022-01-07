; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@delay = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@RC_PENUP = common dso_local global i32 0, align 4
@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@WM9713_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM9713_POLL = common dso_local global i32 0, align 4
@AC97_LINK_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"adc sample timeout\00", align 1
@WM97XX_ADCSRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"adc wrong sample, read %x got %x\00", align 1
@RC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32, i32*)* @wm9713_poll_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_poll_sample(%struct.wm97xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm97xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @delay, align 4
  %12 = mul nsw i32 5, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %14 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %3
  %18 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %19 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %20 = call i32 @wm97xx_reg_read(%struct.wm97xx* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @RC_PENUP, align 4
  store i32 %26, i32* %4, align 4
  br label %168

27:                                               ; preds = %17
  %28 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %29 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 32767
  %37 = add nsw i32 %36, 3
  %38 = shl i32 1, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %41 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %42 = call i32 @wm97xx_reg_read(%struct.wm97xx* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @WM9713_ADCSEL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %48 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %39
  %52 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %53 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = icmp ne i32 (i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %60 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %63(i32 %64)
  br label %66

66:                                               ; preds = %58, %51, %39
  %67 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %68 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @WM9713_POLL, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @wm97xx_reg_write(%struct.wm97xx* %67, i32 %68, i32 %73)
  %75 = load i32, i32* @delay, align 4
  %76 = call i32 @poll_delay(i32 %75)
  br label %77

77:                                               ; preds = %89, %66
  %78 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %79 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %80 = call i32 @wm97xx_reg_read(%struct.wm97xx* %78, i32 %79)
  %81 = load i32, i32* @WM9713_POLL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi i1 [ false, %77 ], [ %86, %84 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i32, i32* @AC97_LINK_FRAME, align 4
  %91 = call i32 @udelay(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  br label %77

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %99 = call i64 @is_pden(%struct.wm97xx* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %103 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %109

104:                                              ; preds = %97
  %105 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %106 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* @RC_PENUP, align 4
  store i32 %110, i32* %4, align 4
  br label %168

111:                                              ; preds = %94
  %112 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %113 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %114 = call i32 @wm97xx_reg_read(%struct.wm97xx* %112, i32 %113)
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %117 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = icmp ne %struct.TYPE_2__* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %111
  %121 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %122 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (i32)*, i32 (i32)** %124, align 8
  %126 = icmp ne i32 (i32)* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %129 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (i32)*, i32 (i32)** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 %132(i32 %133)
  br label %135

135:                                              ; preds = %127, %120, %111
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %6, align 4
  %141 = ashr i32 %140, 1
  %142 = call i32 @ffs(i32 %141)
  %143 = shl i32 %142, 12
  %144 = icmp ne i32 %139, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %135
  %146 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %147 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %153 = and i32 %151, %152
  %154 = call i32 (i32, i8*, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %153)
  %155 = load i32, i32* @RC_PENUP, align 4
  store i32 %155, i32* %4, align 4
  br label %168

156:                                              ; preds = %135
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %164 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* @RC_PENUP, align 4
  store i32 %165, i32* %4, align 4
  br label %168

166:                                              ; preds = %156
  %167 = load i32, i32* @RC_VALID, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %162, %145, %109, %25
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @poll_delay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @is_pden(%struct.wm97xx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
