; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }

@WM97XX_RPR = common dso_local global i32 0, align 4
@AC97_AUX = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@pil = common dso_local global i32 0, align 4
@WM9705_PIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 400uA.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 200uA.\00", align 1
@pressure = common dso_local global i64 0, align 8
@delay = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"supplied delay out of range.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"setting adc sample delay to %d u Secs.\00", align 1
@delay_table = common dso_local global i32* null, align 8
@pdd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"setting pdd to Vmid/%d\00", align 1
@mask = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER1 = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @wm9705_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9705_phy_init(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @WM97XX_RPR, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %7 = load i32, i32* @AC97_AUX, align 4
  %8 = call i32 @wm97xx_reg_write(%struct.wm97xx* %6, i32 %7, i32 32768)
  %9 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %10 = load i32, i32* @AC97_VIDEO, align 4
  %11 = call i32 @wm97xx_reg_write(%struct.wm97xx* %9, i32 %10, i32 32768)
  %12 = load i32, i32* @pil, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @WM9705_PIL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %19 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @pil, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %27 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %22
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* @pil, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i64 0, i64* @pressure, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* @delay, align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* @delay, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @delay, align 4
  %43 = icmp sgt i32 %42, 15
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %38
  %45 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %46 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 4, i32* @delay, align 4
  br label %49

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 65295
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @delay, align 4
  %54 = call i32 @WM97XX_DELAY(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @delay_table, align 8
  %61 = load i32, i32* @delay, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @pdd, align 4
  %67 = and i32 %66, 15
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %71 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @pdd, align 4
  %74 = and i32 %73, 15
  %75 = sub nsw i32 1, %74
  %76 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @mask, align 4
  %78 = and i32 %77, 3
  %79 = shl i32 %78, 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %83 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @wm97xx_reg_write(%struct.wm97xx* %82, i32 %83, i32 %84)
  %86 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %87 = load i32, i32* @AC97_WM97XX_DIGITISER2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @wm97xx_reg_write(%struct.wm97xx* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @WM97XX_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
