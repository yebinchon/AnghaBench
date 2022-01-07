; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32 }
%struct.bnx2x_vfop_qctor_params = type { %struct.bnx2x_queue_setup_params, %struct.TYPE_8__ }
%struct.bnx2x_queue_setup_params = type { i64, %struct.TYPE_12__, %struct.bnx2x_rxq_setup_params, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.bnx2x_queue_init_params }
%struct.bnx2x_queue_init_params = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { i64, i8* }

@BNX2X_Q_FLG_HC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_HC_EN = common dso_local global i32 0, align 4
@VF_CFG_FW_FC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"No support for pause to VFs (abs_vfid: %d)\0A\00", align 1
@BNX2X_Q_FLG_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ZERO_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TX_SWITCH = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TX_SEC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ANTI_SPOOF = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_LEADING_RSS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_MCAST = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA = common dso_local global i32 0, align 4
@BNX2X_VF_MAX_TPA_AGG_QUEUES = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vfop_qctor_prep(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vfop_qctor_params* %3, i64 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_virtf*, align 8
  %8 = alloca %struct.bnx2x_vf_queue*, align 8
  %9 = alloca %struct.bnx2x_vfop_qctor_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2x_queue_init_params*, align 8
  %12 = alloca %struct.bnx2x_queue_setup_params*, align 8
  %13 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %7, align 8
  store %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue** %8, align 8
  store %struct.bnx2x_vfop_qctor_params* %3, %struct.bnx2x_vfop_qctor_params** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.bnx2x_vfop_qctor_params*, %struct.bnx2x_vfop_qctor_params** %9, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vfop_qctor_params, %struct.bnx2x_vfop_qctor_params* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.bnx2x_queue_init_params* %17, %struct.bnx2x_queue_init_params** %11, align 8
  %18 = load %struct.bnx2x_vfop_qctor_params*, %struct.bnx2x_vfop_qctor_params** %9, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vfop_qctor_params, %struct.bnx2x_vfop_qctor_params* %18, i32 0, i32 0
  store %struct.bnx2x_queue_setup_params* %19, %struct.bnx2x_queue_setup_params** %12, align 8
  %20 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %21 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %22 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %20, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %28 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %29 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i32 @__set_bit(i32 %27, i64* %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %34 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %35 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %33, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %41 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %42 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @__set_bit(i32 %40, i64* %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %47 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %48 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %46, i32 %49)
  %51 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %52 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %55 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %54, i32 %57)
  %59 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %60 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %66 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %70 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %73 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %76 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %77 = call i32 @vfq_stat_id(%struct.bnx2x_virtf* %75, %struct.bnx2x_vf_queue* %76)
  %78 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %79 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %82 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VF_CFG_FW_FC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %45
  %88 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %89 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %45
  %93 = load i32, i32* @BNX2X_Q_FLG_STATS, align 4
  %94 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %95 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @BNX2X_Q_FLG_ZERO_STATS, align 4
  %100 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %101 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %100, i32 0, i32 0
  %102 = call i32 @__set_bit(i32 %99, i64* %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* @BNX2X_Q_FLG_TX_SWITCH, align 4
  %105 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %106 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %105, i32 0, i32 0
  %107 = call i32 @__set_bit(i32 %104, i64* %106)
  %108 = load i32, i32* @BNX2X_Q_FLG_TX_SEC, align 4
  %109 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %110 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %109, i32 0, i32 0
  %111 = call i32 @__set_bit(i32 %108, i64* %110)
  %112 = load i32, i32* @BNX2X_Q_FLG_ANTI_SPOOF, align 4
  %113 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %114 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %113, i32 0, i32 0
  %115 = call i32 @__set_bit(i32 %112, i64* %114)
  %116 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %117 = call i64 @vfq_is_leading(%struct.bnx2x_vf_queue* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %103
  %120 = load i32, i32* @BNX2X_Q_FLG_LEADING_RSS, align 4
  %121 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %122 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %121, i32 0, i32 0
  %123 = call i32 @__set_bit(i32 %120, i64* %122)
  %124 = load i32, i32* @BNX2X_Q_FLG_MCAST, align 4
  %125 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %126 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %125, i32 0, i32 0
  %127 = call i32 @__set_bit(i32 %124, i64* %126)
  br label %128

128:                                              ; preds = %119, %103
  %129 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %130 = call i64 @test_bit(i32 %129, i64* %10)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %134 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %133, i32 0, i32 2
  store %struct.bnx2x_rxq_setup_params* %134, %struct.bnx2x_rxq_setup_params** %13, align 8
  %135 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %136 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %137 = call i32 @vfq_qzone_id(%struct.bnx2x_virtf* %135, %struct.bnx2x_vf_queue* %136)
  %138 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %139 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %141 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %142 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %140, i32 %143)
  %145 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %146 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %148 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @FW_VF_HANDLE(i32 %149)
  %151 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %152 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @BNX2X_Q_FLG_TPA, align 4
  %154 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %155 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %154, i32 0, i32 0
  %156 = call i64 @test_bit(i32 %153, i64* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %132
  %159 = load i32, i32* @BNX2X_VF_MAX_TPA_AGG_QUEUES, align 4
  %160 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %161 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %132
  br label %163

163:                                              ; preds = %162, %128
  %164 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %165 = call i64 @test_bit(i32 %164, i64* %10)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %169 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %172 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 8
  %174 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %175 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %176 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %174, i32 %177)
  %179 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %180 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  br label %182

182:                                              ; preds = %167, %163
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i8* @vf_igu_sb(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @vfq_stat_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i64 @vfq_is_leading(%struct.bnx2x_vf_queue*) #1

declare dso_local i32 @vfq_qzone_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
