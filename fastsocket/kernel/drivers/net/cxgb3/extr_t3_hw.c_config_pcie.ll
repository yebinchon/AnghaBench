; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_config_pcie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_config_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@config_pcie.ack_lat = internal constant [4 x [6 x i32]] [[6 x i32] [i32 237, i32 416, i32 559, i32 1071, i32 2095, i32 4143], [6 x i32] [i32 128, i32 217, i32 289, i32 545, i32 1057, i32 2081], [6 x i32] [i32 73, i32 118, i32 154, i32 282, i32 538, i32 1050], [6 x i32] [i32 67, i32 107, i32 86, i32 150, i32 278, i32 534]], align 16
@config_pcie.rpl_tmr = internal constant [4 x [6 x i32]] [[6 x i32] [i32 711, i32 1248, i32 1677, i32 3213, i32 6285, i32 12429], [6 x i32] [i32 384, i32 651, i32 867, i32 1635, i32 3171, i32 6243], [6 x i32] [i32 219, i32 354, i32 462, i32 846, i32 1614, i32 3150], [6 x i32] [i32 201, i32 321, i32 258, i32 450, i32 834, i32 1602]], align 16
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@A_PCIE_PEX_CTRL0 = common dso_local global i32 0, align 4
@A_PCIE_MODE = common dso_local global i32 0, align 4
@A_PCIE_PEX_CTRL1 = common dso_local global i32 0, align 4
@M_T3A_ACKLAT = common dso_local global i32 0, align 4
@M_ACKLAT = common dso_local global i32 0, align 4
@M_REPLAYLMT = common dso_local global i32 0, align 4
@A_PCIE_PEX_ERR = common dso_local global i32 0, align 4
@A_PCIE_CFG = common dso_local global i32 0, align 4
@F_ENABLELINKDWNDRST = common dso_local global i32 0, align 4
@F_ENABLELINKDOWNRST = common dso_local global i32 0, align 4
@F_PCIE_DMASTOPEN = common dso_local global i32 0, align 4
@F_PCIE_CLIDECEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @config_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_pcie(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %15 = call i32 @pcie_capability_read_word(i32 %13, i32 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 5
  store i32 %19, i32* %6, align 4
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_read_config_word(i32 %22, i32 2, i32* %4)
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 55
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @pcie_capability_write_word(i32 %29, i32 %30, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %26, %1
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %44 = call i32 @pcie_capability_read_word(i32 %42, i32 %43, i32* %3)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load i32, i32* @A_PCIE_PEX_CTRL0, align 4
  %47 = call i32 @t3_read_reg(%struct.adapter* %45, i32 %46)
  %48 = call i32 @G_NUMFSTTRNSEQ(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  br label %61

56:                                               ; preds = %39
  %57 = load %struct.adapter*, %struct.adapter** %2, align 8
  %58 = load i32, i32* @A_PCIE_MODE, align 4
  %59 = call i32 @t3_read_reg(%struct.adapter* %57, i32 %58)
  %60 = call i32 @G_NUMFSTTRNSEQRX(i32 %59)
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  store i32 %62, i32* %7, align 4
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @fls(i32 %67)
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @config_pcie.ack_lat, i64 0, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %72, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %61
  %81 = load i32, i32* %8, align 4
  %82 = mul i32 %81, 4
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %80, %61
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @config_pcie.rpl_tmr, i64 0, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %88, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul i32 %93, 4
  %95 = add i32 %92, %94
  store i32 %95, i32* %10, align 4
  %96 = load %struct.adapter*, %struct.adapter** %2, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %85
  %102 = load %struct.adapter*, %struct.adapter** %2, align 8
  %103 = load i32, i32* @A_PCIE_PEX_CTRL1, align 4
  %104 = load i32, i32* @M_T3A_ACKLAT, align 4
  %105 = call i32 @V_T3A_ACKLAT(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @V_T3A_ACKLAT(i32 %106)
  %108 = call i32 @t3_set_reg_field(%struct.adapter* %102, i32 %103, i32 %105, i32 %107)
  br label %117

109:                                              ; preds = %85
  %110 = load %struct.adapter*, %struct.adapter** %2, align 8
  %111 = load i32, i32* @A_PCIE_PEX_CTRL1, align 4
  %112 = load i32, i32* @M_ACKLAT, align 4
  %113 = call i32 @V_ACKLAT(i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @V_ACKLAT(i32 %114)
  %116 = call i32 @t3_set_reg_field(%struct.adapter* %110, i32 %111, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load %struct.adapter*, %struct.adapter** %2, align 8
  %119 = load i32, i32* @A_PCIE_PEX_CTRL0, align 4
  %120 = load i32, i32* @M_REPLAYLMT, align 4
  %121 = call i32 @V_REPLAYLMT(i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @V_REPLAYLMT(i32 %122)
  %124 = call i32 @t3_set_reg_field(%struct.adapter* %118, i32 %119, i32 %121, i32 %123)
  %125 = load %struct.adapter*, %struct.adapter** %2, align 8
  %126 = load i32, i32* @A_PCIE_PEX_ERR, align 4
  %127 = call i32 @t3_write_reg(%struct.adapter* %125, i32 %126, i32 -1)
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = load i32, i32* @A_PCIE_CFG, align 4
  %130 = load i32, i32* @F_ENABLELINKDWNDRST, align 4
  %131 = load i32, i32* @F_ENABLELINKDOWNRST, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @F_PCIE_DMASTOPEN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @F_PCIE_CLIDECEN, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @t3_set_reg_field(%struct.adapter* %128, i32 %129, i32 0, i32 %136)
  ret void
}

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

declare dso_local i32 @G_NUMFSTTRNSEQ(i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_NUMFSTTRNSEQRX(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @V_T3A_ACKLAT(i32) #1

declare dso_local i32 @V_ACKLAT(i32) #1

declare dso_local i32 @V_REPLAYLMT(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
