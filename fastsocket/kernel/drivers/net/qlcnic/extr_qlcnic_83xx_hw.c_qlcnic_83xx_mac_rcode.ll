; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_mac_rcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_mac_rcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@QLC_83XX_NO_NIC_RESOURCE = common dso_local global i64 0, align 8
@QLC_83XX_MAC_PRESENT = common dso_local global i64 0, align 8
@QLC_83XX_MAC_ABSENT = common dso_local global i64 0, align 8
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_mac_rcode(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @QLCNIC_MBX_FW(i32 %8, i32 2)
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @QLC_83XX_NO_NIC_RESOURCE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @QLC_83XX_MAC_PRESENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @QLC_83XX_MAC_ABSENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16, %1
  %25 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
