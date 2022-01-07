; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dmahw_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dmahw_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAMDMA_CCR_SEL_SRC_DST_SYNC = common dso_local global i32 0, align 4
@CAMDMA_CCR_BS = common dso_local global i32 0, align 4
@CAMDMA_CCR_DST_AMODE_POST_INC = common dso_local global i32 0, align 4
@CAMDMA_CCR_SRC_AMODE_POST_INC = common dso_local global i32 0, align 4
@CAMDMA_CCR_FS = common dso_local global i32 0, align 4
@CAMDMA_CCR_WR_ACTIVE = common dso_local global i32 0, align 4
@CAMDMA_CCR_RD_ACTIVE = common dso_local global i32 0, align 4
@CAMDMA_CCR_SYNCHRO_CAMERA = common dso_local global i32 0, align 4
@CAMDMA_CSDP_WRITE_MODE_POSTED = common dso_local global i32 0, align 4
@CAMDMA_CSDP_DST_BURST_EN_32 = common dso_local global i32 0, align 4
@CAMDMA_CSDP_DST_PACKED = common dso_local global i32 0, align 4
@CAMDMA_CSDP_SRC_BURST_EN_32 = common dso_local global i32 0, align 4
@CAMDMA_CSDP_SRC_PACKED = common dso_local global i32 0, align 4
@CAMDMA_CSDP_DATA_TYPE_8BITS = common dso_local global i32 0, align 4
@DMA_THRESHOLD = common dso_local global i32 0, align 4
@CAMDMA_CSR_MISALIGNED_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_SECURE_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_TRANS_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_BLOCK = common dso_local global i32 0, align 4
@CAMDMA_CSR_DROP = common dso_local global i32 0, align 4
@CAMDMA_CICR_MISALIGNED_ERR_IE = common dso_local global i32 0, align 4
@CAMDMA_CICR_SECURE_ERR_IE = common dso_local global i32 0, align 4
@CAMDMA_CICR_TRANS_ERR_IE = common dso_local global i32 0, align 4
@CAMDMA_CICR_BLOCK_IE = common dso_local global i32 0, align 4
@CAMDMA_CICR_DROP_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @omap24xxcam_dmahw_transfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_dmahw_transfer_setup(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @CAMDMA_CCR(i32 %10)
  %12 = load i32, i32* @CAMDMA_CCR_SEL_SRC_DST_SYNC, align 4
  %13 = load i32, i32* @CAMDMA_CCR_BS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CAMDMA_CCR_DST_AMODE_POST_INC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CAMDMA_CCR_SRC_AMODE_POST_INC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CAMDMA_CCR_FS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CAMDMA_CCR_WR_ACTIVE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CAMDMA_CCR_RD_ACTIVE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CAMDMA_CCR_SYNCHRO_CAMERA, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @omap24xxcam_reg_out(i64 %9, i32 %11, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @CAMDMA_CLNK_CTRL(i32 %29)
  %31 = call i32 @omap24xxcam_reg_out(i64 %28, i32 %30, i32 0)
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CAMDMA_CEN(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @omap24xxcam_reg_out(i64 %32, i32 %34, i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @CAMDMA_CFN(i32 %38)
  %40 = call i32 @omap24xxcam_reg_out(i64 %37, i32 %39, i32 1)
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @CAMDMA_CSDP(i32 %42)
  %44 = load i32, i32* @CAMDMA_CSDP_WRITE_MODE_POSTED, align 4
  %45 = load i32, i32* @CAMDMA_CSDP_DST_BURST_EN_32, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CAMDMA_CSDP_DST_PACKED, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CAMDMA_CSDP_SRC_BURST_EN_32, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CAMDMA_CSDP_SRC_PACKED, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CAMDMA_CSDP_DATA_TYPE_8BITS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @omap24xxcam_reg_out(i64 %41, i32 %43, i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @CAMDMA_CSSA(i32 %57)
  %59 = call i32 @omap24xxcam_reg_out(i64 %56, i32 %58, i32 0)
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @CAMDMA_CDSA(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @omap24xxcam_reg_out(i64 %60, i32 %62, i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @CAMDMA_CSEI(i32 %66)
  %68 = call i32 @omap24xxcam_reg_out(i64 %65, i32 %67, i32 0)
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @CAMDMA_CSFI(i32 %70)
  %72 = load i32, i32* @DMA_THRESHOLD, align 4
  %73 = call i32 @omap24xxcam_reg_out(i64 %69, i32 %71, i32 %72)
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @CAMDMA_CDEI(i32 %75)
  %77 = call i32 @omap24xxcam_reg_out(i64 %74, i32 %76, i32 0)
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @CAMDMA_CDFI(i32 %79)
  %81 = call i32 @omap24xxcam_reg_out(i64 %78, i32 %80, i32 0)
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @CAMDMA_CSR(i32 %83)
  %85 = load i32, i32* @CAMDMA_CSR_MISALIGNED_ERR, align 4
  %86 = load i32, i32* @CAMDMA_CSR_SECURE_ERR, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CAMDMA_CSR_TRANS_ERR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CAMDMA_CSR_BLOCK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CAMDMA_CSR_DROP, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @omap24xxcam_reg_out(i64 %82, i32 %84, i32 %93)
  %95 = load i64, i64* %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @CAMDMA_CICR(i32 %96)
  %98 = load i32, i32* @CAMDMA_CICR_MISALIGNED_ERR_IE, align 4
  %99 = load i32, i32* @CAMDMA_CICR_SECURE_ERR_IE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CAMDMA_CICR_TRANS_ERR_IE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CAMDMA_CICR_BLOCK_IE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CAMDMA_CICR_DROP_IE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @omap24xxcam_reg_out(i64 %95, i32 %97, i32 %106)
  ret void
}

declare dso_local i32 @omap24xxcam_reg_out(i64, i32, i32) #1

declare dso_local i32 @CAMDMA_CCR(i32) #1

declare dso_local i32 @CAMDMA_CLNK_CTRL(i32) #1

declare dso_local i32 @CAMDMA_CEN(i32) #1

declare dso_local i32 @CAMDMA_CFN(i32) #1

declare dso_local i32 @CAMDMA_CSDP(i32) #1

declare dso_local i32 @CAMDMA_CSSA(i32) #1

declare dso_local i32 @CAMDMA_CDSA(i32) #1

declare dso_local i32 @CAMDMA_CSEI(i32) #1

declare dso_local i32 @CAMDMA_CSFI(i32) #1

declare dso_local i32 @CAMDMA_CDEI(i32) #1

declare dso_local i32 @CAMDMA_CDFI(i32) #1

declare dso_local i32 @CAMDMA_CSR(i32) #1

declare dso_local i32 @CAMDMA_CICR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
