; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@delay = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@RC_PENUP = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER1 = common dso_local global i32 0, align 4
@WM97XX_POLL = common dso_local global i32 0, align 4
@AC97_LINK_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"adc sample timeout\00", align 1
@WM97XX_ADCSEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"adc wrong sample, read %x got %x\00", align 1
@RC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32, i32*)* @wm9705_poll_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_poll_sample(%struct.wm97xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm97xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @delay, align 4
  %11 = mul nsw i32 5, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %13 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %18 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %19 = call i32 @wm97xx_reg_read(%struct.wm97xx* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @RC_PENUP, align 4
  store i32 %25, i32* %4, align 4
  br label %158

26:                                               ; preds = %16
  %27 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 32768
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 32767
  %36 = add nsw i32 %35, 3
  %37 = shl i32 %36, 12
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %40 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %45 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = icmp ne i32 (i32)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %52 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %55(i32 %56)
  br label %58

58:                                               ; preds = %50, %43, %38
  %59 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %60 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @WM97XX_POLL, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @delay, align 4
  %65 = call i32 @WM97XX_DELAY(i32 %64)
  %66 = or i32 %63, %65
  %67 = call i32 @wm97xx_reg_write(%struct.wm97xx* %59, i32 %60, i32 %66)
  %68 = load i32, i32* @delay, align 4
  %69 = call i32 @poll_delay(i32 %68)
  br label %70

70:                                               ; preds = %82, %58
  %71 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %72 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %73 = call i32 @wm97xx_reg_read(%struct.wm97xx* %71, i32 %72)
  %74 = load i32, i32* @WM97XX_POLL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i1 [ false, %70 ], [ %79, %77 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load i32, i32* @AC97_LINK_FRAME, align 4
  %84 = call i32 @udelay(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  br label %70

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %92 = call i64 @is_pden(%struct.wm97xx* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %96 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %102

97:                                               ; preds = %90
  %98 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %99 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32, i32* @RC_PENUP, align 4
  store i32 %103, i32* %4, align 4
  br label %158

104:                                              ; preds = %87
  %105 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %106 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %107 = call i32 @wm97xx_reg_read(%struct.wm97xx* %105, i32 %106)
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %110 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = icmp ne %struct.TYPE_2__* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %115 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32 (i32)*, i32 (i32)** %117, align 8
  %119 = icmp ne i32 (i32)* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %122 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (i32)*, i32 (i32)** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 %125(i32 %126)
  br label %128

128:                                              ; preds = %120, %113, %104
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %137 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %143 = and i32 %141, %142
  %144 = call i32 (i32, i8*, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %143)
  %145 = load i32, i32* @RC_PENUP, align 4
  store i32 %145, i32* %4, align 4
  br label %158

146:                                              ; preds = %128
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %154 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* @RC_PENUP, align 4
  store i32 %155, i32* %4, align 4
  br label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @RC_VALID, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %152, %135, %102, %24
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @WM97XX_DELAY(i32) #1

declare dso_local i32 @poll_delay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @is_pden(%struct.wm97xx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
