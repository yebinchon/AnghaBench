; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64 }

@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@XM_GP_PORT = common dso_local global i32 0, align 4
@XM_GP_RES_STAT = common dso_local global i32 0, align 4
@XM_IMSK = common dso_local global i32 0, align 4
@XM_IMSK_DISABLE = common dso_local global i32 0, align 4
@XM_MODE = common dso_local global i32 0, align 4
@XM_TX_CMD = common dso_local global i32 0, align 4
@XM_RX_CMD = common dso_local global i32 0, align 4
@SK_PHY_BCOM = common dso_local global i64 0, align 8
@PHY_BCOM_INT_MASK = common dso_local global i32 0, align 4
@XM_HSM = common dso_local global i32 0, align 4
@XM_MD_FTF = common dso_local global i32 0, align 4
@XM_MD_FRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @genesis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_reset(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  %8 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %11 = call i32 @SK_REG(i32 %9, i32 %10)
  %12 = call i32 @skge_write8(%struct.skge_hw* %8, i32 %11, i32 0)
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @XM_GP_PORT, align 4
  %16 = load i32, i32* @XM_GP_RES_STAT, align 4
  %17 = call i32 @xm_write32(%struct.skge_hw* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @XM_IMSK, align 4
  %21 = load i32, i32* @XM_IMSK_DISABLE, align 4
  %22 = call i32 @xm_write16(%struct.skge_hw* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @XM_MODE, align 4
  %26 = call i32 @xm_write32(%struct.skge_hw* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @XM_TX_CMD, align 4
  %30 = call i32 @xm_write16(%struct.skge_hw* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @XM_RX_CMD, align 4
  %34 = call i32 @xm_write16(%struct.skge_hw* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %36 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SK_PHY_BCOM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PHY_BCOM_INT_MASK, align 4
  %44 = call i32 @xm_write16(%struct.skge_hw* %41, i32 %42, i32 %43, i32 65535)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @XM_HSM, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %50 = call i32 @xm_outhash(%struct.skge_hw* %46, i32 %47, i32 %48, i32* %49)
  %51 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @XM_MODE, align 4
  %54 = call i32 @xm_read32(%struct.skge_hw* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @XM_MODE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @XM_MD_FTF, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @xm_write32(%struct.skge_hw* %55, i32 %56, i32 %57, i32 %60)
  %62 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XM_MODE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @XM_MD_FRF, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @xm_write32(%struct.skge_hw* %62, i32 %63, i32 %64, i32 %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #2

declare dso_local i32 @SK_REG(i32, i32) #2

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #2

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #2

declare dso_local i32 @xm_outhash(%struct.skge_hw*, i32, i32, i32*) #2

declare dso_local i32 @xm_read32(%struct.skge_hw*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
