; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_cfg_kmrn_10_100_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_cfg_kmrn_10_100_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT = common dso_local global i64 0, align 8
@E1000_KMRNCTRLSTA_OFFSET_HD_CTRL = common dso_local global i32 0, align 4
@TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i64 0, align 8
@DEFAULT_TIPG_IPGT_10_100_80003ES2LAN = common dso_local global i64 0, align 8
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_MAX_KMRN_RETRY = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_cfg_kmrn_10_100_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_cfg_kmrn_10_100_80003es2lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* @E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_HD_CTRL, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %12, i32 %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %80

20:                                               ; preds = %2
  %21 = load i32, i32* @TIPG, align 4
  %22 = call i64 @er32(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @E1000_TIPG_IPGT_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @DEFAULT_TIPG_IPGT_10_100_80003ES2LAN, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* @TIPG, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ew32(i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %60, %20
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %36 = call i64 @e1e_rphy(%struct.e1000_hw* %34, i32 %35, i64* %9)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %80

41:                                               ; preds = %33
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %44 = call i64 @e1e_rphy(%struct.e1000_hw* %42, i32 %43, i64* %10)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %80

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @GG82563_MAX_KMRN_RETRY, align 8
  %59 = icmp slt i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %33, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @HALF_DUPLEX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* @GG82563_KMCR_PASS_FALSE_CARRIER, align 8
  %68 = load i64, i64* %9, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %75

70:                                               ; preds = %62
  %71 = load i64, i64* @GG82563_KMCR_PASS_FALSE_CARRIER, align 8
  %72 = xor i64 %71, -1
  %73 = load i64, i64* %9, align 8
  %74 = and i64 %73, %72
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %77 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @e1e_wphy(%struct.e1000_hw* %76, i32 %77, i64 %78)
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %75, %47, %39, %18
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i64) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
