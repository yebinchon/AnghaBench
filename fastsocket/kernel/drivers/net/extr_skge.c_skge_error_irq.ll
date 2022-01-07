; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_error_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_error_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i32, %struct.pci_dev*, %struct.TYPE_2__** }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@B0_HWE_ISRC = common dso_local global i32 0, align 4
@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@IS_NO_STAT_M1 = common dso_local global i32 0, align 4
@IS_NO_TIST_M1 = common dso_local global i32 0, align 4
@RX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_CLR_INSTAT = common dso_local global i32 0, align 4
@IS_NO_STAT_M2 = common dso_local global i32 0, align 4
@IS_NO_TIST_M2 = common dso_local global i32 0, align 4
@RX_MFF_CTRL2 = common dso_local global i32 0, align 4
@IS_IRQ_TIST_OV = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@IS_RAM_RD_PAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Ram read data parity error\0A\00", align 1
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_CLR_RD_PERR = common dso_local global i32 0, align 4
@IS_RAM_WR_PAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Ram write data parity error\0A\00", align 1
@RI_CLR_WR_PERR = common dso_local global i32 0, align 4
@IS_M1_PAR_ERR = common dso_local global i32 0, align 4
@IS_M2_PAR_ERR = common dso_local global i32 0, align 4
@IS_R1_PAR_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: receive queue parity error\0A\00", align 1
@B0_R1_CSR = common dso_local global i32 0, align 4
@CSR_IRQ_CL_P = common dso_local global i32 0, align 4
@IS_R2_PAR_ERR = common dso_local global i32 0, align 4
@B0_R2_CSR = common dso_local global i32 0, align 4
@IS_IRQ_MST_ERR = common dso_local global i32 0, align 4
@IS_IRQ_STAT = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"PCI error cmd=%#x status=%#x\0A\00", align 1
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unable to clear error (so ignoring them)\0A\00", align 1
@IS_HW_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*)* @skge_error_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_error_irq(%struct.skge_hw* %0) #0 {
  %2 = alloca %struct.skge_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %2, align 8
  %7 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %8 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %11 = load i32, i32* @B0_HWE_ISRC, align 4
  %12 = call i32 @skge_read32(%struct.skge_hw* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %14 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IS_NO_STAT_M1, align 4
  %21 = load i32, i32* @IS_NO_TIST_M1, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %27 = load i32, i32* @RX_MFF_CTRL1, align 4
  %28 = load i32, i32* @MFF_CLR_INSTAT, align 4
  %29 = call i32 @skge_write16(%struct.skge_hw* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IS_NO_STAT_M2, align 4
  %33 = load i32, i32* @IS_NO_TIST_M2, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %39 = load i32, i32* @RX_MFF_CTRL2, align 4
  %40 = load i32, i32* @MFF_CLR_INSTAT, align 4
  %41 = call i32 @skge_write16(%struct.skge_hw* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  br label %54

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IS_IRQ_TIST_OV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %50 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %51 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %52 = call i32 @skge_write8(%struct.skge_hw* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IS_RAM_RD_PAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %64 = load i32, i32* @B3_RI_CTRL, align 4
  %65 = load i32, i32* @RI_CLR_RD_PERR, align 4
  %66 = call i32 @skge_write16(%struct.skge_hw* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IS_RAM_WR_PAR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %77 = load i32, i32* @B3_RI_CTRL, align 4
  %78 = load i32, i32* @RI_CLR_WR_PERR, align 4
  %79 = call i32 @skge_write16(%struct.skge_hw* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @IS_M1_PAR_ERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %87 = call i32 @skge_mac_parity(%struct.skge_hw* %86, i32 0)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @IS_M2_PAR_ERR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %95 = call i32 @skge_mac_parity(%struct.skge_hw* %94, i32 1)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @IS_R1_PAR_ERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %105 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %113 = load i32, i32* @B0_R1_CSR, align 4
  %114 = load i32, i32* @CSR_IRQ_CL_P, align 4
  %115 = call i32 @skge_write32(%struct.skge_hw* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %101, %96
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @IS_R2_PAR_ERR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %125 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %126, i64 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %133 = load i32, i32* @B0_R2_CSR, align 4
  %134 = load i32, i32* @CSR_IRQ_CL_P, align 4
  %135 = call i32 @skge_write32(%struct.skge_hw* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %121, %116
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @IS_IRQ_MST_ERR, align 4
  %139 = load i32, i32* @IS_IRQ_STAT, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %198

143:                                              ; preds = %136
  %144 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %145 = load i32, i32* @PCI_COMMAND, align 4
  %146 = call i32 @pci_read_config_word(%struct.pci_dev* %144, i32 %145, i32* %6)
  %147 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %148 = load i32, i32* @PCI_STATUS, align 4
  %149 = call i32 @pci_read_config_word(%struct.pci_dev* %147, i32 %148, i32* %5)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %159 = load i32, i32* @B2_TST_CTRL1, align 4
  %160 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %161 = call i32 @skge_write8(%struct.skge_hw* %158, i32 %159, i32 %160)
  %162 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %163 = load i32, i32* @PCI_COMMAND, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @pci_write_config_word(%struct.pci_dev* %162, i32 %163, i32 %168)
  %170 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %171 = load i32, i32* @PCI_STATUS, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @pci_write_config_word(%struct.pci_dev* %170, i32 %171, i32 %172)
  %174 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %175 = load i32, i32* @B2_TST_CTRL1, align 4
  %176 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %177 = call i32 @skge_write8(%struct.skge_hw* %174, i32 %175, i32 %176)
  %178 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %179 = load i32, i32* @B0_HWE_ISRC, align 4
  %180 = call i32 @skge_read32(%struct.skge_hw* %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @IS_IRQ_STAT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %143
  %186 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %187 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %186, i32 0, i32 2
  %188 = load %struct.pci_dev*, %struct.pci_dev** %187, align 8
  %189 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %188, i32 0, i32 0
  %190 = call i32 @dev_warn(i32* %189, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32, i32* @IS_HW_ERR, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %194 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %185, %143
  br label %198

198:                                              ; preds = %197, %136
  ret void
}

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @skge_mac_parity(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
