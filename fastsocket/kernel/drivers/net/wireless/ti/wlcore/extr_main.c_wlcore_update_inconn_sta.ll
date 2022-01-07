; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_update_inconn_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_update_inconn_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32 }
%struct.wl1271_station = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.wl1271_station*, i32)* @wlcore_update_inconn_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_update_inconn_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.wl1271_station* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.wl1271_station*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.wl1271_station* %2, %struct.wl1271_station** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %13 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %20 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %29 = call i32 @wlcore_roc_if_possible(%struct.wl1271* %27, %struct.wl12xx_vif* %28)
  br label %30

30:                                               ; preds = %26, %18
  br label %74

31:                                               ; preds = %4
  %32 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %33 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %74

37:                                               ; preds = %31
  %38 = load %struct.wl1271_station*, %struct.wl1271_station** %7, align 8
  %39 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %74

52:                                               ; preds = %37
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %54 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %59 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @test_bit(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %69 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wl12xx_croc(%struct.wl1271* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %57
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %17, %36, %51, %73, %30
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wlcore_roc_if_possible(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
