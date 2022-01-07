; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_disable_pcie_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_disable_pcie_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@e1000_bus_type_pci_express = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_GIO_MASTER_DISABLE = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_GIO_MASTER_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Master requests are pending.\0A\00", align 1
@E1000_ERR_MASTER_REQUESTS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_disable_pcie_master(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i64, i64* @MASTER_DISABLE_TIMEOUT, align 8
  store i64 %6, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_bus_type_pci_express, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_CTRL, align 4
  %16 = call i32 @rd32(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @E1000_CTRL_GIO_MASTER_DISABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @E1000_CTRL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @wr32(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %33, %14
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* @E1000_STATUS, align 4
  %28 = call i32 @rd32(i32 %27)
  %29 = load i32, i32* @E1000_STATUS_GIO_MASTER_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 100)
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %4, align 8
  br label %23

37:                                               ; preds = %32, %23
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @hw_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @E1000_ERR_MASTER_REQUESTS_PENDING, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %40, %13
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
