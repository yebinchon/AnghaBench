; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_setup_copper_link_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_setup_copper_link_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_INB_CTRL = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @CTRL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @E1000_CTRL_SLU, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %13 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CTRL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ew32(i32 %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i32 @GG82563_REG(i32 52, i32 4)
  %23 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %21, i32 %22, i32 65535)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %77

28:                                               ; preds = %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i32 @GG82563_REG(i32 52, i32 9)
  %31 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %29, i32 %30, i32* %6)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %77

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, 63
  store i32 %38, i32* %6, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = call i32 @GG82563_REG(i32 52, i32 9)
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %39, i32 %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %77

47:                                               ; preds = %36
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_INB_CTRL, align 4
  %50 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %48, i32 %49, i32* %6)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %2, align 8
  br label %77

55:                                               ; preds = %47
  %56 = load i32, i32* @E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_INB_CTRL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %59, i32 %60, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %77

67:                                               ; preds = %55
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = call i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw* %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = call i64 @e1000e_setup_copper_link(%struct.e1000_hw* %75)
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %74, %72, %65, %53, %45, %34, %26
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @GG82563_REG(i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_setup_copper_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
