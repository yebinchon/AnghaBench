; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_calibrate_xgm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_calibrate_xgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_XGM_XAUI_IMP = common dso_local global i32 0, align 4
@F_XGM_CALFAULT = common dso_local global i32 0, align 4
@F_CALBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MAC calibration failed\0A\00", align 1
@A_XGM_RGMII_IMP = common dso_local global i32 0, align 4
@F_XGM_IMPSETUPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @calibrate_xgm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_xgm(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call i64 @uses_xaui(%struct.adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i32, i32* @A_XGM_XAUI_IMP, align 4
  %16 = call i32 @t3_write_reg(%struct.adapter* %14, i32 %15, i32 0)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @A_XGM_XAUI_IMP, align 4
  %19 = call i32 @t3_read_reg(%struct.adapter* %17, i32 %18)
  %20 = call i32 @msleep(i32 1)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @A_XGM_XAUI_IMP, align 4
  %23 = call i32 @t3_read_reg(%struct.adapter* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @F_XGM_CALFAULT, align 4
  %26 = load i32, i32* @F_CALBUSY, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %13
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load i32, i32* @A_XGM_XAUI_IMP, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @G_CALIMP(i32 %33)
  %35 = ashr i32 %34, 2
  %36 = call i32 @V_XAUIIMP(i32 %35)
  %37 = call i32 @t3_write_reg(%struct.adapter* %31, i32 %32, i32 %36)
  store i32 0, i32* %2, align 4
  br label %58

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = call i32 @CH_ERR(%struct.adapter* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %48 = call i32 @V_RGMIIIMPPD(i32 2)
  %49 = call i32 @V_RGMIIIMPPU(i32 3)
  %50 = or i32 %48, %49
  %51 = call i32 @t3_write_reg(%struct.adapter* %46, i32 %47, i32 %50)
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = load i32, i32* @A_XGM_RGMII_IMP, align 4
  %54 = load i32, i32* @F_XGM_IMPSETUPDATE, align 4
  %55 = load i32, i32* @F_XGM_IMPSETUPDATE, align 4
  %56 = call i32 @t3_set_reg_field(%struct.adapter* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %42, %30
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @V_XAUIIMP(i32) #1

declare dso_local i32 @G_CALIMP(i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*) #1

declare dso_local i32 @V_RGMIIIMPPD(i32) #1

declare dso_local i32 @V_RGMIIIMPPU(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
