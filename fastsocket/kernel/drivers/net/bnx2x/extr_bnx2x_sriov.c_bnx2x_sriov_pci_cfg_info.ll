; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_pci_cfg_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_pci_cfg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnx2x_sriov = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to find SRIOV capability in device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sriov ext pos %d\0A\00", align 1
@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@PCI_SRIOV_TOTAL_VF = common dso_local global i64 0, align 8
@PCI_SRIOV_INITIAL_VF = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_OFFSET = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_STRIDE = common dso_local global i64 0, align 8
@PCI_SRIOV_SUP_PGSIZE = common dso_local global i64 0, align 8
@PCI_SRIOV_CAP = common dso_local global i64 0, align 8
@PCI_SRIOV_FUNC_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_sriov*)* @bnx2x_sriov_pci_cfg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_sriov_pci_cfg_info(%struct.bnx2x* %0, %struct.bnx2x_sriov* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_sriov*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_sriov* %1, %struct.bnx2x_sriov** %5, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %12 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %13 = call i32 @pci_find_ext_capability(%struct.pci_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DP(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %32, i32 0, i32 8
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i64 %31, i32* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @PCI_SRIOV_TOTAL_VF, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %41 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %40, i32 0, i32 7
  %42 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i64 %39, i32* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @PCI_SRIOV_INITIAL_VF, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %48, i32 0, i32 6
  %50 = call i32 @pci_read_config_word(%struct.pci_dev* %43, i64 %47, i32* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @PCI_SRIOV_VF_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %56, i32 0, i32 5
  %58 = call i32 @pci_read_config_word(%struct.pci_dev* %51, i64 %55, i32* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PCI_SRIOV_VF_STRIDE, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %64, i32 0, i32 4
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %59, i64 %63, i32* %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @PCI_SRIOV_SUP_PGSIZE, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %73 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %72, i32 0, i32 3
  %74 = call i32 @pci_read_config_dword(%struct.pci_dev* %67, i64 %71, i32* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @PCI_SRIOV_CAP, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %80, i32 0, i32 2
  %82 = call i32 @pci_read_config_dword(%struct.pci_dev* %75, i64 %79, i32* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @PCI_SRIOV_FUNC_LINK, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %88, i32 0, i32 1
  %90 = call i32 @pci_read_config_byte(%struct.pci_dev* %83, i64 %87, i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %20, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
