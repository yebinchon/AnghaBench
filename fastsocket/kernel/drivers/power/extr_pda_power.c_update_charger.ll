; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_update_charger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_update_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)* }

@update_charger.regulator_enabled = internal global i32 0, align 4
@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@new_ac_status = common dso_local global i64 0, align 8
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"charger on (AC)\0A\00", align 1
@PDA_POWER_CHARGE_AC = common dso_local global i32 0, align 4
@new_usb_status = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"charger on (USB)\0A\00", align 1
@PDA_POWER_CHARGE_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"charger off\0A\00", align 1
@ac_draw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_charger() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  store i32 %4, i32* %1, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = icmp ne i32 (i32)* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %0
  %10 = load i64, i64* @new_ac_status, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @dev, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load i32, i32* @PDA_POWER_CHARGE_AC, align 4
  %19 = call i32 %17(i32 %18)
  br label %39

20:                                               ; preds = %9
  %21 = load i64, i64* @new_usb_status, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @dev, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* @PDA_POWER_CHARGE_USB, align 4
  %30 = call i32 %28(i32 %29)
  br label %38

31:                                               ; preds = %20
  %32 = load i32, i32* @dev, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = call i32 %36(i32 0)
  br label %38

38:                                               ; preds = %31, %23
  br label %39

39:                                               ; preds = %38, %12
  br label %70

40:                                               ; preds = %0
  %41 = load i64, i64* @ac_draw, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i64, i64* @new_ac_status, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i64, i64* @ac_draw, align 8
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @regulator_set_current_limit(i64 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @update_charger.regulator_enabled, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @dev, align 4
  %55 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %56 = load i64, i64* @ac_draw, align 8
  %57 = call i32 @regulator_enable(i64 %56)
  store i32 1, i32* @update_charger.regulator_enabled, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %68

59:                                               ; preds = %43
  %60 = load i32, i32* @update_charger.regulator_enabled, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @dev, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* @ac_draw, align 8
  %66 = call i32 @regulator_disable(i64 %65)
  store i32 0, i32* @update_charger.regulator_enabled, align 4
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %39
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regulator_set_current_limit(i64, i32, i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
