; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_sdramc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_sdramc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_SDRAMC_SDCR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_REF = common dso_local global i32 0, align 4
@SDRAM_ADDRESS = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCS_CSSZ_32MBYTE = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCS0 = common dso_local global i32 0, align 4
@SDRAM_CASL = common dso_local global i32 0, align 4
@SDRAM_TWR = common dso_local global i64 0, align 8
@SDRAM_TRFC = common dso_local global i64 0, align 8
@MCF_SDRAMC_SDCFG1 = common dso_local global i32 0, align 4
@SDRAM_BL = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCFG2 = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_MODE_EN = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_CKE = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_DDR = common dso_local global i32 0, align 4
@SDRAM_TREFI = common dso_local global i32 0, align 4
@SYSTEM_PERIOD = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_PS_16 = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_IPALL = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_BNKAD_LEMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_CMD = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDMR_BNKAD_LMR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_IREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdramc_init() #0 {
  %1 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %2 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %125, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @SDRAM_ADDRESS, align 4
  %7 = call i32 @MCF_SDRAMC_SDCS_BA(i32 %6)
  %8 = or i32 0, %7
  %9 = load i32, i32* @MCF_SDRAMC_SDCS_CSSZ_32MBYTE, align 4
  %10 = call i32 @MCF_SDRAMC_SDCS_CSSZ(i32 %9)
  %11 = or i32 %8, %10
  store i32 %11, i32* @MCF_SDRAMC_SDCS0, align 4
  %12 = load i32, i32* @SDRAM_CASL, align 4
  %13 = add nsw i32 %12, 2
  %14 = sitofp i32 %13 to double
  %15 = fadd double %14, 5.000000e-01
  %16 = fptosi double %15 to i32
  %17 = call i32 @MCF_SDRAMC_SDCFG1_SRD2RW(i32 %16)
  %18 = or i32 0, %17
  %19 = load i64, i64* @SDRAM_TWR, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @MCF_SDRAMC_SDCFG1_SWT2RD(i64 %20)
  %22 = or i32 %18, %21
  %23 = load i32, i32* @SDRAM_CASL, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 2
  %26 = call i32 @MCF_SDRAMC_SDCFG1_RDLAT(i32 %25)
  %27 = or i32 %22, %26
  %28 = call i32 @MCF_SDRAMC_SDCFG1_ACT2RW(i32 0)
  %29 = or i32 %27, %28
  %30 = call i32 @MCF_SDRAMC_SDCFG1_PRE2ACT(i32 0)
  %31 = or i32 %29, %30
  %32 = load i64, i64* @SDRAM_TRFC, align 8
  %33 = sitofp i64 %32 to double
  %34 = fadd double %33, 5.000000e-01
  %35 = fptosi double %34 to i32
  %36 = call i32 @MCF_SDRAMC_SDCFG1_REF2ACT(i32 %35)
  %37 = or i32 %31, %36
  %38 = call i32 @MCF_SDRAMC_SDCFG1_WTLAT(i32 3)
  %39 = or i32 %37, %38
  store i32 %39, i32* @MCF_SDRAMC_SDCFG1, align 4
  %40 = load i32, i32* @SDRAM_BL, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = call i32 @MCF_SDRAMC_SDCFG2_BRD2PRE(i32 %42)
  %44 = or i32 0, %43
  %45 = load i32, i32* @SDRAM_BL, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @SDRAM_TWR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @MCF_SDRAMC_SDCFG2_BWT2RW(i64 %49)
  %51 = or i32 %44, %50
  %52 = load i32, i32* @SDRAM_CASL, align 4
  %53 = load i32, i32* @SDRAM_BL, align 4
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 %52, %54
  %56 = sitofp i32 %55 to double
  %57 = fsub double %56, 1.000000e+00
  %58 = fadd double %57, 5.000000e-01
  %59 = fptosi double %58 to i32
  %60 = call i32 @MCF_SDRAMC_SDCFG2_BRD2WT(i32 %59)
  %61 = or i32 %51, %60
  %62 = load i32, i32* @SDRAM_BL, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @MCF_SDRAMC_SDCFG2_BL(i32 %63)
  %65 = or i32 %61, %64
  store i32 %65, i32* @MCF_SDRAMC_SDCFG2, align 4
  %66 = load i32, i32* @MCF_SDRAMC_SDCR_MODE_EN, align 4
  %67 = or i32 0, %66
  %68 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MCF_SDRAMC_SDCR_DDR, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @MCF_SDRAMC_SDCR_MUX(i32 1)
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SDRAM_TREFI, align 4
  %75 = load i32, i32* @SYSTEM_PERIOD, align 4
  %76 = mul nsw i32 %75, 64
  %77 = sdiv i32 %74, %76
  %78 = sub nsw i32 %77, 1
  %79 = sitofp i32 %78 to double
  %80 = fadd double %79, 5.000000e-01
  %81 = fptosi double %80 to i32
  %82 = call i32 @MCF_SDRAMC_SDCR_RCNT(i32 %81)
  %83 = or i32 %73, %82
  %84 = load i32, i32* @MCF_SDRAMC_SDCR_PS_16, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MCF_SDRAMC_SDCR_IPALL, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* @MCF_SDRAMC_SDCR, align 4
  %88 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LEMR, align 4
  %89 = or i32 0, %88
  %90 = call i32 @MCF_SDRAMC_SDMR_AD(i32 0)
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* @MCF_SDRAMC_SDMR, align 4
  %94 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LMR, align 4
  %95 = or i32 0, %94
  %96 = call i32 @MCF_SDRAMC_SDMR_AD(i32 355)
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* @MCF_SDRAMC_SDMR, align 4
  %100 = load i32, i32* @MCF_SDRAMC_SDCR_IPALL, align 4
  %101 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* @MCF_SDRAMC_SDCR, align 4
  %103 = load i32, i32* @MCF_SDRAMC_SDCR_IREF, align 4
  %104 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* @MCF_SDRAMC_SDCR, align 4
  %106 = load i32, i32* @MCF_SDRAMC_SDCR_IREF, align 4
  %107 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* @MCF_SDRAMC_SDCR, align 4
  %109 = load i32, i32* @MCF_SDRAMC_SDMR_BNKAD_LMR, align 4
  %110 = or i32 0, %109
  %111 = call i32 @MCF_SDRAMC_SDMR_AD(i32 99)
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MCF_SDRAMC_SDMR_CMD, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* @MCF_SDRAMC_SDMR, align 4
  %115 = load i32, i32* @MCF_SDRAMC_SDCR_MODE_EN, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* @MCF_SDRAMC_SDCR, align 4
  %119 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %120 = or i32 0, %119
  %121 = call i32 @MCF_SDRAMC_SDCR_DQS_OE(i32 12)
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @MCF_SDRAMC_SDCR, align 4
  br label %125

125:                                              ; preds = %5, %0
  ret void
}

declare dso_local i32 @MCF_SDRAMC_SDCS_BA(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCS_CSSZ(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_SRD2RW(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_SWT2RD(i64) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_RDLAT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_ACT2RW(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_PRE2ACT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_REF2ACT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG1_WTLAT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BRD2PRE(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BWT2RW(i64) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BRD2WT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCFG2_BL(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_MUX(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_RCNT(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDMR_AD(i32) #1

declare dso_local i32 @MCF_SDRAMC_SDCR_DQS_OE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
