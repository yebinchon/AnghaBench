; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_init_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }

@FR_AZ_TX_RESERVED = common dso_local global i32 0, align 4
@FRF_BZ_TX_FLUSH_MIN_LEN_EN = common dso_local global i32 0, align 4
@FR_AZ_TX_CFG = common dso_local global i32 0, align 4
@FRF_AZ_TX_NO_EOP_DISC_EN = common dso_local global i32 0, align 4
@FRF_CZ_TX_FILTER_EN_BIT = common dso_local global i32 0, align 4
@FR_AZ_RX_CFG = common dso_local global i32 0, align 4
@FRF_BZ_RX_DESC_PUSH_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_INGR_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_HASH_INSRT_HDR = common dso_local global i32 0, align 4
@FRF_BZ_RX_HASH_ALG = common dso_local global i32 0, align 4
@FRF_BZ_RX_IP_HASH = common dso_local global i32 0, align 4
@FRF_BZ_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@EFX_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@FR_BZ_RX_RSS_TKEY = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN = common dso_local global i64 0, align 8
@FR_CZ_RX_RSS_IPV6_REG1 = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG2 = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_THASH_ENABLE = common dso_local global i32 0, align 4
@FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE = common dso_local global i32 0, align 4
@FR_CZ_RX_RSS_IPV6_REG3 = common dso_local global i32 0, align 4
@FRF_BZ_FLS_EVQ_ID = common dso_local global i32 0, align 4
@FR_BZ_DP_CTRL = common dso_local global i32 0, align 4
@FRF_CZ_USREV_DIS = common dso_local global i32 0, align 4
@FR_CZ_USR_EV_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_init_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = call i32 @efx_mcdi_handle_assertion(%struct.efx_nic* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %129

12:                                               ; preds = %1
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = load i32, i32* @FR_AZ_TX_RESERVED, align 4
  %15 = call i32 @efx_reado(%struct.efx_nic* %13, i32* %4, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FRF_BZ_TX_FLUSH_MIN_LEN_EN, align 4
  %18 = call i32 @EFX_SET_OWORD_FIELD(i32 %16, i32 %17, i32 1)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load i32, i32* @FR_AZ_TX_RESERVED, align 4
  %21 = call i32 @efx_writeo(%struct.efx_nic* %19, i32* %4, i32 %20)
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %24 = call i32 @efx_reado(%struct.efx_nic* %22, i32* %4, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FRF_AZ_TX_NO_EOP_DISC_EN, align 4
  %27 = call i32 @EFX_SET_OWORD_FIELD(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FRF_CZ_TX_FILTER_EN_BIT, align 4
  %30 = call i32 @EFX_SET_OWORD_FIELD(i32 %28, i32 %29, i32 1)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %33 = call i32 @efx_writeo(%struct.efx_nic* %31, i32* %4, i32 %32)
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %36 = call i32 @efx_reado(%struct.efx_nic* %34, i32* %4, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @FRF_BZ_RX_DESC_PUSH_EN, align 4
  %39 = call i32 @EFX_SET_OWORD_FIELD(i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FRF_BZ_RX_INGR_EN, align 4
  %42 = call i32 @EFX_SET_OWORD_FIELD(i32 %40, i32 %41, i32 1)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FRF_BZ_RX_HASH_INSRT_HDR, align 4
  %45 = call i32 @EFX_SET_OWORD_FIELD(i32 %43, i32 %44, i32 1)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @FRF_BZ_RX_HASH_ALG, align 4
  %48 = call i32 @EFX_SET_OWORD_FIELD(i32 %46, i32 %47, i32 1)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FRF_BZ_RX_IP_HASH, align 4
  %51 = call i32 @EFX_SET_OWORD_FIELD(i32 %49, i32 %50, i32 1)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FRF_BZ_RX_USR_BUF_SIZE, align 4
  %54 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %55 = ashr i32 %54, 5
  %56 = call i32 @EFX_SET_OWORD_FIELD(i32 %52, i32 %53, i32 %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %59 = call i32 @efx_writeo(%struct.efx_nic* %57, i32* %4, i32 %58)
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(i32* %4, i64 %62, i32 4)
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = load i32, i32* @FR_BZ_RX_RSS_TKEY, align 4
  %66 = call i32 @efx_writeo(%struct.efx_nic* %64, i32* %4, i32 %65)
  %67 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH, align 4
  %68 = sdiv i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = add i64 8, %69
  %71 = icmp ult i64 8, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %12
  %73 = load i64, i64* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN, align 8
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %72, %12
  %76 = phi i1 [ true, %12 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUILD_BUG_ON(i32 %77)
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i32* %4, i64 %81, i32 4)
  %83 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %84 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG1, align 4
  %85 = call i32 @efx_writeo(%struct.efx_nic* %83, i32* %4, i32 %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 4
  %90 = call i32 @memcpy(i32* %4, i64 %89, i32 4)
  %91 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %92 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG2, align 4
  %93 = call i32 @efx_writeo(%struct.efx_nic* %91, i32* %4, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_THASH_ENABLE, align 4
  %96 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE, align 4
  %97 = call i32 @EFX_POPULATE_OWORD_2(i32 %94, i32 %95, i32 1, i32 %96, i32 1)
  %98 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 8
  %102 = load i32, i32* @FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH, align 4
  %103 = sdiv i32 %102, 8
  %104 = call i32 @memcpy(i32* %4, i64 %101, i32 %103)
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = load i32, i32* @FR_CZ_RX_RSS_IPV6_REG3, align 4
  %107 = call i32 @efx_writeo(%struct.efx_nic* %105, i32* %4, i32 %106)
  %108 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %109 = call i32 @efx_mcdi_log_ctrl(%struct.efx_nic* %108, i32 1, i32 0, i32 0)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %75
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %129

114:                                              ; preds = %75
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @FRF_BZ_FLS_EVQ_ID, align 4
  %117 = call i32 @EFX_POPULATE_OWORD_1(i32 %115, i32 %116, i32 0)
  %118 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %119 = load i32, i32* @FR_BZ_DP_CTRL, align 4
  %120 = call i32 @efx_writeo(%struct.efx_nic* %118, i32* %4, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @FRF_CZ_USREV_DIS, align 4
  %123 = call i32 @EFX_POPULATE_OWORD_1(i32 %121, i32 %122, i32 1)
  %124 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %125 = load i32, i32* @FR_CZ_USR_EV_CFG, align 4
  %126 = call i32 @efx_writeo(%struct.efx_nic* %124, i32* %4, i32 %125)
  %127 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %128 = call i32 @efx_nic_init_common(%struct.efx_nic* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %114, %112, %10
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @efx_mcdi_handle_assertion(%struct.efx_nic*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_mcdi_log_ctrl(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_nic_init_common(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
