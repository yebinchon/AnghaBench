; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9712.c_wm9712_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9712.c_wm9712_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }

@WM97XX_RPR = common dso_local global i32 0, align 4
@rpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"setting pen detect pull-up to %d Ohms\00", align 1
@five_wire = common dso_local global i64 0, align 8
@WM9712_45W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"setting 5-wire touchscreen mode.\00", align 1
@pil = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"pressure measurement is not supported in 5-wire mode\0A\00", align 1
@WM9712_PIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 400uA.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 200uA.\00", align 1
@pressure = common dso_local global i64 0, align 8
@delay = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"supplied delay out of range.\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"setting adc sample delay to %d u Secs.\00", align 1
@delay_table = common dso_local global i32* null, align 8
@mask = common dso_local global i32 0, align 4
@AC97_MISC_AFE = common dso_local global i32 0, align 4
@WM97XX_GPIO_4 = common dso_local global i32 0, align 4
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@coord = common dso_local global i64 0, align 8
@WM9712_WAIT = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER1 = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @wm9712_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9712_phy_init(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @WM97XX_RPR, align 4
  %7 = call i32 @WM9712_RPU(i32 1)
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @rpu, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65472
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @rpu, align 4
  %15 = call i32 @WM9712_RPU(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %19 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @rpu, align 4
  %22 = sdiv i32 64000, %21
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load i64, i64* @five_wire, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* @WM9712_45W, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %32 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @pil, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @pil, align 4
  br label %42

42:                                               ; preds = %37, %27
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* @pil, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* @WM9712_PIL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %51 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %63

54:                                               ; preds = %43
  %55 = load i32, i32* @pil, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* @pil, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i64 0, i64* @pressure, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* @delay, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @delay, align 4
  %72 = icmp sgt i32 %71, 15
  br i1 %72, label %73, label %78

73:                                               ; preds = %70, %67
  %74 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %75 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* @delay, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, 65295
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @delay, align 4
  %82 = call i32 @WM97XX_DELAY(i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %86 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @delay_table, align 8
  %89 = load i32, i32* @delay, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @mask, align 4
  %95 = and i32 %94, 3
  %96 = shl i32 %95, 6
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @mask, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %78
  %102 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %103 = load i32, i32* @AC97_MISC_AFE, align 4
  %104 = call i32 @wm97xx_reg_read(%struct.wm97xx* %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %106 = load i32, i32* @AC97_MISC_AFE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @WM97XX_GPIO_4, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @wm97xx_reg_write(%struct.wm97xx* %105, i32 %106, i32 %109)
  %111 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %112 = load i32, i32* @AC97_GPIO_CFG, align 4
  %113 = call i32 @wm97xx_reg_read(%struct.wm97xx* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %115 = load i32, i32* @AC97_GPIO_CFG, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @WM97XX_GPIO_4, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @wm97xx_reg_write(%struct.wm97xx* %114, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %101, %78
  %121 = load i64, i64* @coord, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @WM9712_WAIT, align 4
  %125 = load i32, i32* %4, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %129 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @wm97xx_reg_write(%struct.wm97xx* %128, i32 %129, i32 %130)
  %132 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %133 = load i32, i32* @AC97_WM97XX_DIGITISER2, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @wm97xx_reg_write(%struct.wm97xx* %132, i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @WM9712_RPU(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @WM97XX_DELAY(i32) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
