; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c___e1000_read_phy_reg_hv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c___e1000_read_phy_reg_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@BM_WUC_PAGE = common dso_local global i32 0, align 4
@HV_INTC_FC_PAGE_START = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"reading PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*, i32, i32)* @__e1000_read_phy_reg_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_read_phy_reg_hv(%struct.e1000_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BM_PHY_REG_PAGE(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @BM_PHY_REG_NUM(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @e1000_get_phy_addr_for_hv_page(i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  store i32 %21, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %5
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = call i64 %32(%struct.e1000_hw.1* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %6, align 8
  br label %117

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @BM_WUC_PAGE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %46, i32 %47, i32* %48, i32 1, i32 %49)
  store i64 %50, i64* %12, align 8
  br label %103

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %59, i32 %60, i32* %61, i32 1)
  store i64 %62, i64* %12, align 8
  br label %103

63:                                               ; preds = %54, %51
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %76, i32 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %103

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @e_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i32 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %98 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %98, %99
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %97, i32 %100, i32* %101)
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %90, %87, %58, %45
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %110, align 8
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %113 = bitcast %struct.e1000_hw* %112 to %struct.e1000_hw.0*
  %114 = call i32 %111(%struct.e1000_hw.0* %113)
  br label %115

115:                                              ; preds = %106, %103
  %116 = load i64, i64* %12, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %38
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

declare dso_local i32 @BM_PHY_REG_PAGE(i32) #1

declare dso_local i32 @BM_PHY_REG_NUM(i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_hv_page(i32) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i32*, i32, i32) #1

declare dso_local i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw*, i32, i32*, i32) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*, i32, i32, i32) #1

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
