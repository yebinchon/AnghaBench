; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_do_flr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_do_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"FLR not supported in E1/E1H\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REQ_BC_VER_4_INITIATE_FLR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"FLR not supported by BC_VER: 0x%x\0A\00", align 1
@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_TRPND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"transaction is not cleared; proceeding with reset anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Initiating FLR\0A\00", align 1
@DRV_MSG_CODE_INITIATE_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_do_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_do_flr(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REQ_BC_VER_4_INITIATE_FLR, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 1, %41
  %43 = mul nsw i32 %42, 100
  %44 = call i32 @msleep(i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %48 = call i32 @pcie_capability_read_word(%struct.pci_dev* %46, i32 %47, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PCI_EXP_DEVSTA_TRPND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %62

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  %63 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = load i32, i32* @DRV_MSG_CODE_INITIATE_FLR, align 4
  %66 = call i32 @bnx2x_fw_command(%struct.bnx2x* %64, i32 %65, i32 0)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %24, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
