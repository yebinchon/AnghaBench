; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwlagn_gain_computation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwlagn_gain_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_4__*, %struct.iwl_chain_noise_data }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_chain_noise_data = type { i32*, i32, i32, i64* }
%struct.iwl_calib_chain_noise_gain_cmd = type { i32, i32, i32 }

@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@CHAIN_NOISE_MAX_DELTA_GAIN_CODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Delta gains: ANT_B = %d  ANT_C = %d\0A\00", align 1
@REPLY_PHY_CALIBRATION_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@IWL_CHAIN_NOISE_CALIBRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i64*, i32)* @iwlagn_gain_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_gain_computation(%struct.iwl_priv* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_chain_noise_data*, align 8
  %10 = alloca %struct.iwl_calib_chain_noise_gain_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @NUM_RX_CHAINS, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 2
  store %struct.iwl_chain_noise_data* %14, %struct.iwl_chain_noise_data** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %82, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NUM_RX_CHAINS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %17
  %22 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %23 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %32 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 0, i32* %36, align 4
  br label %82

37:                                               ; preds = %21
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64*, i64** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %50, %56
  %58 = mul nsw i32 %44, %57
  %59 = sdiv i32 %58, 1500
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @abs(i32 %60) #3
  %62 = load i64, i64* @CHAIN_NOISE_MAX_DELTA_GAIN_CODE, align 8
  %63 = call i32 @min(i32 %61, i64 %62)
  %64 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %65 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %37
  %73 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 4
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %37
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %17

85:                                               ; preds = %17
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %87 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %88 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %93 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %96)
  %98 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %99 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %85
  %103 = call i32 @memset(%struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 12)
  %104 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 2
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %106 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @iwl_set_calib_hdr(i32* %104, i32 %107)
  %109 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %110 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %116 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, %struct.iwl_calib_chain_noise_gain_cmd* %10, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %122 = load i32, i32* @REPLY_PHY_CALIBRATION_CMD, align 4
  %123 = load i32, i32* @CMD_ASYNC, align 4
  %124 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %121, i32 %122, i32 %123, i32 12, %struct.iwl_calib_chain_noise_gain_cmd* %10)
  %125 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %126 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %125, i32 0, i32 1
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* @IWL_CHAIN_NOISE_CALIBRATED, align 4
  %128 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %9, align 8
  %129 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %102, %85
  ret void
}

declare dso_local i32 @min(i32, i64) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.iwl_calib_chain_noise_gain_cmd*, i32, i32) #1

declare dso_local i32 @iwl_set_calib_hdr(i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_calib_chain_noise_gain_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
