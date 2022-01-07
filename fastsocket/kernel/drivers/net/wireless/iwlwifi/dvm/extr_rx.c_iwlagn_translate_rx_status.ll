; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_translate_rx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwlagn_translate_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@RX_RES_STATUS_STATION_FOUND = common dso_local global i32 0, align 4
@RX_RES_STATUS_NO_STATION_INFO_MISMATCH = common dso_local global i32 0, align 4
@RX_RES_STATUS_SEC_TYPE_MSK = common dso_local global i32 0, align 4
@RX_RES_STATUS_SEC_TYPE_NONE = common dso_local global i32 0, align 4
@RX_RES_STATUS_SEC_TYPE_ERR = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_DEC_DONE_MSK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_MIC_OK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_ICV_MIC = common dso_local global i32 0, align 4
@RX_RES_STATUS_DECRYPT_OK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_TTAK_OK = common dso_local global i32 0, align 4
@RX_RES_STATUS_BAD_KEY_TTAK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_ICV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"decrypt_in:0x%x  decrypt_out = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i32)* @iwlagn_translate_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_translate_rx_status(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RX_RES_STATUS_STATION_FOUND, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @RX_RES_STATUS_STATION_FOUND, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @RX_RES_STATUS_STATION_FOUND, align 4
  %14 = load i32, i32* @RX_RES_STATUS_NO_STATION_INFO_MISMATCH, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_NONE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_ERR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %95

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @RX_MPDU_RES_STATUS_DEC_DONE_MSK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @RX_MPDU_RES_STATUS_DEC_DONE_MSK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %95

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RX_RES_STATUS_SEC_TYPE_MSK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %75 [
    i32 129, label %51
    i32 128, label %65
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RX_MPDU_RES_STATUS_MIC_OK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @RX_RES_STATUS_BAD_ICV_MIC, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @RX_RES_STATUS_DECRYPT_OK, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %89

65:                                               ; preds = %47
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RX_MPDU_RES_STATUS_TTAK_OK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @RX_RES_STATUS_BAD_KEY_TTAK, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %89

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %47, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @RX_MPDU_RES_STATUS_ICV_OK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @RX_RES_STATUS_BAD_ICV_MIC, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @RX_RES_STATUS_DECRYPT_OK, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %70, %64
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @IWL_DEBUG_RX(%struct.iwl_priv* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %45, %37, %29
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
