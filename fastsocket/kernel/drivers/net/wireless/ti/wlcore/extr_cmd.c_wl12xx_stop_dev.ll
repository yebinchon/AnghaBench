; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_stop_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_stop_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32 }

@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_stop_dev(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %8 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %14 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %18
  %28 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %29 = call i32 @wlcore_tx_work_locked(%struct.wl1271* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %68

33:                                               ; preds = %27
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wl12xx_croc(%struct.wl1271* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %68

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %54 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %55 = call i32 @wl12xx_cmd_role_stop_dev(%struct.wl1271* %53, %struct.wl12xx_vif* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %61 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %62 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %61, i32 0, i32 1
  %63 = call i32 @wl12xx_cmd_role_disable(%struct.wl1271* %60, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %66, %58, %50, %32
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wlcore_tx_work_locked(%struct.wl1271*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i32) #1

declare dso_local i32 @wl12xx_cmd_role_stop_dev(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_disable(%struct.wl1271*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
