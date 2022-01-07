; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_cfg_kmrn_1000_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_cfg_kmrn_1000_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_KMRNCTRLSTA_HD_CTRL_1000_DEFAULT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_HD_CTRL = common dso_local global i32 0, align 4
@TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i64 0, align 8
@DEFAULT_TIPG_IPGT_1000_80003ES2LAN = common dso_local global i64 0, align 8
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_MAX_KMRN_RETRY = common dso_local global i64 0, align 8
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_cfg_kmrn_1000_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_cfg_kmrn_1000_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @E1000_KMRNCTRLSTA_HD_CTRL_1000_DEFAULT, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_HD_CTRL, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %10, i32 %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* @TIPG, align 4
  %20 = call i64 @er32(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @E1000_TIPG_IPGT_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* @DEFAULT_TIPG_IPGT_1000_80003ES2LAN, align 8
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* @TIPG, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ew32(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %58, %18
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %34 = call i64 @e1e_rphy(%struct.e1000_hw* %32, i32 %33, i32* %5)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %69

39:                                               ; preds = %31
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %42 = call i64 @e1e_rphy(%struct.e1000_hw* %40, i32 %41, i32* %6)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %69

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @GG82563_MAX_KMRN_RETRY, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %31, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* @GG82563_KMCR_PASS_FALSE_CARRIER, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @e1e_wphy(%struct.e1000_hw* %65, i32 %66, i32 %67)
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %60, %45, %37, %16
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
