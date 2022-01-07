; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_setup_single_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_setup_single_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@ar9003_paprd_setup_single_table.ctrl0 = internal constant [3 x i32] [i32 133, i32 132, i32 131], align 4
@ar9003_paprd_setup_single_table.ctrl1 = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Training power: %d, Target power: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"PAPRD target power delta out of range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_AM2AM = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_AM2AM_MASK = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_AM2PM = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_AM2PM_MASK = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_HT40 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_HT40_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"PAPRD HT20 mask: 0x%x, HT40 mask: 0x%x\0A\00", align 1
@AR_PHY_PAPRD_CTRL0_USE_SINGLE_TABLE_MASK = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2PM_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2AM_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_PA_GAIN_SCALE_FACT_MASK = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL1_PAPRD_MAG_SCALE_FACT = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_CTRL0_PAPRD_MAG_THRSH = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_SKIP = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_TX_GAIN_FORCE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_RX_BB_GAIN_FORCE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_IQCORR_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_AGC2_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL1_CF_CF_PAPRD_TRAIN_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL2 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL2_CF_PAPRD_INIT_RX_BB_GAIN = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_FINE_CORR_LEN = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_COARSE_CORR_LEN = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_NUM_CORR_STAGES = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_MIN_LOOPBACK_DEL = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_ADC_DESIRED_SIZE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_BBTXMIX_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL4 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_SAFETY_DELTA = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_MIN_CORR = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_NUM_TRAIN_SAMPLES = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_0_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALING = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_1_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_2_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_3_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_4_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_5_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_6_B0 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_PRE_POST_SCALE_7_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ar9003_paprd_setup_single_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_paprd_setup_single_table(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_CHAN_2GHZ(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = call i32 @ar9003_get_training_power_2g(%struct.ath_hw* %20)
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i32 @ar9003_get_training_power_5g(%struct.ath_hw* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %27 = load i32, i32* @CALIBRATE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %26, i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %37 = load i32, i32* @CALIBRATE, align 4
  %38 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %323

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = call i64 @AR_SREV_9330(%struct.ath_hw* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load i32, i32* @AR_PHY_PAPRD_AM2AM, align 4
  %52 = load i32, i32* @AR_PHY_PAPRD_AM2AM_MASK, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %50, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_PHY_PAPRD_AM2PM, align 4
  %59 = load i32, i32* @AR_PHY_PAPRD_AM2PM_MASK, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_PHY_PAPRD_HT40, align 4
  %64 = load i32, i32* @AR_PHY_PAPRD_HT40_MASK, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %62, i32 %63, i32 %64, i32 %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %70 = load i32, i32* @CALIBRATE, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %142, %49
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %145

85:                                               ; preds = %78
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl0, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AR_PHY_PAPRD_CTRL0_USE_SINGLE_TABLE_MASK, align 4
  %92 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %86, i32 %90, i32 %91, i32 1)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2PM_ENABLE, align 4
  %99 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %93, i32 %97, i32 %98, i32 1)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2AM_ENABLE, align 4
  %106 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %104, i32 %105, i32 1)
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA, align 4
  %113 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %107, i32 %111, i32 %112, i32 0)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AR_PHY_PAPRD_CTRL1_PA_GAIN_SCALE_FACT_MASK, align 4
  %120 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %114, i32 %118, i32 %119, i32 181)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AR_PHY_PAPRD_CTRL1_PAPRD_MAG_SCALE_FACT, align 4
  %127 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %121, i32 %125, i32 %126, i32 361)
  %128 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl1, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA, align 4
  %134 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %128, i32 %132, i32 %133, i32 0)
  %135 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_paprd_setup_single_table.ctrl0, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AR_PHY_PAPRD_CTRL0_PAPRD_MAG_THRSH, align 4
  %141 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %135, i32 %139, i32 %140, i32 3)
  br label %142

142:                                              ; preds = %85
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %78

145:                                              ; preds = %78
  %146 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %147 = call i32 @ar9003_paprd_enable(%struct.ath_hw* %146, i32 0)
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %150 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_SKIP, align 4
  %151 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %148, i32 %149, i32 %150, i32 48)
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %154 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_ENABLE, align 4
  %155 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %152, i32 %153, i32 %154, i32 1)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %158 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_TX_GAIN_FORCE, align 4
  %159 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %156, i32 %157, i32 %158, i32 1)
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %162 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_RX_BB_GAIN_FORCE, align 4
  %163 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %160, i32 %161, i32 %162, i32 0)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %166 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_IQCORR_ENABLE, align 4
  %167 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %164, i32 %165, i32 %166, i32 0)
  %168 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %169 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %170 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_AGC2_SETTLING, align 4
  %171 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %168, i32 %169, i32 %170, i32 28)
  %172 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %173 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1, align 4
  %174 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL1_CF_CF_PAPRD_TRAIN_ENABLE, align 4
  %175 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %172, i32 %173, i32 %174, i32 1)
  %176 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %177 = call i64 @AR_SREV_9485(%struct.ath_hw* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %145
  store i32 148, i32* %7, align 4
  br label %199

180:                                              ; preds = %145
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @IS_CHAN_2GHZ(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %188 = call i64 @AR_SREV_9462(%struct.ath_hw* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %192 = call i64 @AR_SREV_9565(%struct.ath_hw* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190, %186
  store i32 145, i32* %7, align 4
  br label %196

195:                                              ; preds = %190
  store i32 147, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %194
  br label %198

197:                                              ; preds = %180
  store i32 137, i32* %7, align 4
  br label %198

198:                                              ; preds = %197, %196
  br label %199

199:                                              ; preds = %198, %179
  %200 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %201 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL2, align 4
  %202 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL2_CF_PAPRD_INIT_RX_BB_GAIN, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %200, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %206 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %207 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_FINE_CORR_LEN, align 4
  %208 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %205, i32 %206, i32 %207, i32 4)
  %209 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %210 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %211 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_COARSE_CORR_LEN, align 4
  %212 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %209, i32 %210, i32 %211, i32 4)
  %213 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %214 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %215 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_NUM_CORR_STAGES, align 4
  %216 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %213, i32 %214, i32 %215, i32 7)
  %217 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %218 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %219 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_MIN_LOOPBACK_DEL, align 4
  %220 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %217, i32 %218, i32 %219, i32 1)
  %221 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %222 = call i64 @AR_SREV_9485(%struct.ath_hw* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %244, label %224

224:                                              ; preds = %199
  %225 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %226 = call i64 @AR_SREV_9462(%struct.ath_hw* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %224
  %229 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %230 = call i64 @AR_SREV_9565(%struct.ath_hw* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %228
  %233 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %234 = call i64 @AR_SREV_9550(%struct.ath_hw* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %238 = call i64 @AR_SREV_9330(%struct.ath_hw* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %242 = call i64 @AR_SREV_9340(%struct.ath_hw* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %240, %236, %232, %228, %224, %199
  %245 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %246 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %247 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %248 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %245, i32 %246, i32 %247, i32 -3)
  br label %254

249:                                              ; preds = %240
  %250 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %251 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %252 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, align 4
  %253 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %250, i32 %251, i32 %252, i32 -6)
  br label %254

254:                                              ; preds = %249, %244
  store i32 -10, i32* %7, align 4
  %255 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %256 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @IS_CHAN_2GHZ(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %254
  %261 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %262 = call i64 @AR_SREV_9462(%struct.ath_hw* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %266 = call i64 @AR_SREV_9565(%struct.ath_hw* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  store i32 -15, i32* %7, align 4
  br label %269

269:                                              ; preds = %268, %264, %260, %254
  %270 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %271 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %272 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_ADC_DESIRED_SIZE, align 4
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %270, i32 %271, i32 %272, i32 %273)
  %275 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %276 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3, align 4
  %277 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_BBTXMIX_DISABLE, align 4
  %278 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %275, i32 %276, i32 %277, i32 1)
  %279 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %280 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4, align 4
  %281 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_SAFETY_DELTA, align 4
  %282 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %279, i32 %280, i32 %281, i32 0)
  %283 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %284 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4, align 4
  %285 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_MIN_CORR, align 4
  %286 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %283, i32 %284, i32 %285, i32 400)
  %287 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %288 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4, align 4
  %289 = load i32, i32* @AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_NUM_TRAIN_SAMPLES, align 4
  %290 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %287, i32 %288, i32 %289, i32 100)
  %291 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %292 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_0_B0, align 4
  %293 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %294 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %291, i32 %292, i32 %293, i32 261376)
  %295 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %296 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_1_B0, align 4
  %297 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %298 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %295, i32 %296, i32 %297, i32 248079)
  %299 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %300 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_2_B0, align 4
  %301 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %302 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %299, i32 %300, i32 %301, i32 233759)
  %303 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %304 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_3_B0, align 4
  %305 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %306 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %303, i32 %304, i32 %305, i32 220464)
  %307 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %308 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_4_B0, align 4
  %309 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %310 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %307, i32 %308, i32 %309, i32 208194)
  %311 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %312 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_5_B0, align 4
  %313 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %314 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %311, i32 %312, i32 %313, i32 196949)
  %315 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %316 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_6_B0, align 4
  %317 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %318 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %315, i32 %316, i32 %317, i32 185706)
  %319 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %320 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALE_7_B0, align 4
  %321 = load i32, i32* @AR_PHY_PAPRD_PRE_POST_SCALING, align 4
  %322 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %319, i32 %320, i32 %321, i32 175487)
  store i32 0, i32* %2, align 4
  br label %323

323:                                              ; preds = %269, %35
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @ar9003_get_training_power_2g(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_get_training_power_5g(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ar9003_paprd_enable(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
