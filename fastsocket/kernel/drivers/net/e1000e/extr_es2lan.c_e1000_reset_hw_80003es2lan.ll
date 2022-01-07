; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_reset_hw_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_reset_hw_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_IBIST_DISABLE = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = call i64 @e1000e_disable_pcie_master(%struct.e1000_hw* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @IMC, align 4
  %16 = call i32 @ew32(i32 %15, i32 -1)
  %17 = load i32, i32* @RCTL, align 4
  %18 = call i32 @ew32(i32 %17, i32 0)
  %19 = load i32, i32* @TCTL, align 4
  %20 = load i32, i32* @E1000_TCTL_PSP, align 4
  %21 = call i32 @ew32(i32 %19, i32 %20)
  %22 = call i32 (...) @e1e_flush()
  %23 = call i32 @usleep_range(i32 10000, i32 20000)
  %24 = load i32, i32* @CTRL, align 4
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %64

32:                                               ; preds = %13
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @CTRL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @E1000_CTRL_RST, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ew32(i32 %34, i32 %37)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %43 = call i32 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %41, i32 %42, i32* %6)
  %44 = load i32, i32* @E1000_KMRNCTRLSTA_IBIST_DISABLE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %47, i32 %48, i32 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i64 @e1000e_get_auto_rd_done(%struct.e1000_hw* %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %64

57:                                               ; preds = %32
  %58 = load i32, i32* @IMC, align 4
  %59 = call i32 @ew32(i32 %58, i32 -1)
  %60 = load i32, i32* @ICR, align 4
  %61 = call i32 @er32(i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %62)
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %57, %55, %30
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i64 @e1000e_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000e_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
