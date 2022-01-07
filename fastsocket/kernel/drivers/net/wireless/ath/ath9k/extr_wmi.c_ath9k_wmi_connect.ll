; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.wmi = type { i32, %struct.htc_target* }
%struct.htc_service_connreq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.wmi* }

@ath9k_wmi_ctrl_tx = common dso_local global i32 0, align 4
@ath9k_wmi_ctrl_rx = common dso_local global i32 0, align 4
@WMI_CONTROL_SVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_wmi_connect(%struct.htc_target* %0, %struct.wmi* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.htc_service_connreq, align 8
  %9 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.wmi* %1, %struct.wmi** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %11 = load %struct.wmi*, %struct.wmi** %6, align 8
  %12 = getelementptr inbounds %struct.wmi, %struct.wmi* %11, i32 0, i32 1
  store %struct.htc_target* %10, %struct.htc_target** %12, align 8
  %13 = call i32 @memset(%struct.htc_service_connreq* %8, i32 0, i32 24)
  %14 = load %struct.wmi*, %struct.wmi** %6, align 8
  %15 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.wmi* %14, %struct.wmi** %16, align 8
  %17 = load i32, i32* @ath9k_wmi_ctrl_tx, align 4
  %18 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ath9k_wmi_ctrl_rx, align 4
  %21 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @WMI_CONTROL_SVC, align 4
  %24 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %26 = load %struct.wmi*, %struct.wmi** %6, align 8
  %27 = getelementptr inbounds %struct.wmi, %struct.wmi* %26, i32 0, i32 0
  %28 = call i32 @htc_connect_service(%struct.htc_target* %25, %struct.htc_service_connreq* %8, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.wmi*, %struct.wmi** %6, align 8
  %35 = getelementptr inbounds %struct.wmi, %struct.wmi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.htc_service_connreq*, i32, i32) #1

declare dso_local i32 @htc_connect_service(%struct.htc_target*, %struct.htc_service_connreq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
