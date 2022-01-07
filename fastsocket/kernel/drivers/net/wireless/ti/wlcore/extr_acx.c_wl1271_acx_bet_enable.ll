; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_bet_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_bet_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_bet_enable = type { i32, i64, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"acx bet enable\00", align 1
@CONF_BET_MODE_DISABLE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONF_BET_MODE_ENABLE = common dso_local global i64 0, align 8
@ACX_BET_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"acx bet enable failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_bet_enable(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_acx_bet_enable*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.wl1271_acx_bet_enable* null, %struct.wl1271_acx_bet_enable** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CONF_BET_MODE_DISABLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %63

22:                                               ; preds = %13, %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.wl1271_acx_bet_enable* @kzalloc(i32 24, i32 %23)
  store %struct.wl1271_acx_bet_enable* %24, %struct.wl1271_acx_bet_enable** %7, align 8
  %25 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %26 = icmp ne %struct.wl1271_acx_bet_enable* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %35 = getelementptr inbounds %struct.wl1271_acx_bet_enable, %struct.wl1271_acx_bet_enable* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @CONF_BET_MODE_ENABLE, align 8
  br label %42

40:                                               ; preds = %30
  %41 = load i64, i64* @CONF_BET_MODE_DISABLE, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %45 = getelementptr inbounds %struct.wl1271_acx_bet_enable, %struct.wl1271_acx_bet_enable* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %52 = getelementptr inbounds %struct.wl1271_acx_bet_enable, %struct.wl1271_acx_bet_enable* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %54 = load i32, i32* @ACX_BET_ENABLE, align 4
  %55 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %56 = call i32 @wl1271_cmd_configure(%struct.wl1271* %53, i32 %54, %struct.wl1271_acx_bet_enable* %55, i32 24)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @wl1271_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %59, %27, %21
  %64 = load %struct.wl1271_acx_bet_enable*, %struct.wl1271_acx_bet_enable** %7, align 8
  %65 = call i32 @kfree(%struct.wl1271_acx_bet_enable* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_bet_enable* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_bet_enable*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_bet_enable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
