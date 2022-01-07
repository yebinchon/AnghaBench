; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_start_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_start_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i64*, i32, i64, i32, i32, i32, %struct.TYPE_10__*, %struct.mlx4_en_cq*, %struct.mlx4_en_cq*, %struct.mlx4_en_tx_ring*, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_9__*, i64, i32, i32, i32, i32, %struct.mlx4_en_dev* }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_cq = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx4_en_tx_ring = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mlx4_en_dev = type { i32, i32, i64* }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"start port called while port already up\0A\00", align 1
@MAX_NUM_OF_FS_RULES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Rx buf size:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to activate RX rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed activating Rx CQ\0A\00", align 1
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed setting cq moderation parameters\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Getting qp number for port %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed getting eth qp\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed configuring rss steering\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed allocating Tx CQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Resetting index of collapsed CQ:%d to -1\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed allocating Tx ring\0A\00", align 1
@STAMP_STRIDE = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed setting default qp numbers\0A\00", align 1
@HW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Initializing port\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed Initializing port\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"Failed Attaching Broadcast\0A\00", align 1
@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_start_port(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i64], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx4_en_priv* %15, %struct.mlx4_en_priv** %4, align 8
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 22
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %17, align 8
  store %struct.mlx4_en_dev* %18, %struct.mlx4_en_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = bitcast [16 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 128, i1 false)
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @DRV, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %27 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %25, %struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %475

28:                                               ; preds = %1
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 21
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 20
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 19
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i32, i32* @MAX_NUM_OF_FS_RULES, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i64* %41, i32 0, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 18
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @min(i32 %49, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @mlx4_en_calc_rx_buf(%struct.net_device* %56)
  %58 = load i32, i32* @DRV, align 4
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 17
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %58, %struct.mlx4_en_priv* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %65 = call i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %28
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %70 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %2, align 4
  br label %475

72:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %143, %72
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %73
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 8
  %82 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %82, i64 %84
  store %struct.mlx4_en_cq* %85, %struct.mlx4_en_cq** %6, align 8
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %87 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %86, %struct.mlx4_en_cq* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %94 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %440

95:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %104 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %116 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %117 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %115, %struct.mlx4_en_cq* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %122 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %124 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %125 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %123, %struct.mlx4_en_cq* %124)
  br label %440

126:                                              ; preds = %114
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %128 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %129 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %127, %struct.mlx4_en_cq* %128)
  %130 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 7
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %126
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %73

146:                                              ; preds = %73
  %147 = load i32, i32* @DRV, align 4
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %147, %struct.mlx4_en_priv* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %151)
  %153 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %154 = call i32 @mlx4_en_get_qp(%struct.mlx4_en_priv* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %159 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %440

160:                                              ; preds = %146
  %161 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %162 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %165 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  store i64 0, i64* %167, align 8
  %168 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %169 = call i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %174 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %437

175:                                              ; preds = %160
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %177 = call i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %434

181:                                              ; preds = %175
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %279, %181
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %185 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %282

188:                                              ; preds = %182
  %189 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %190 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %189, i32 0, i32 9
  %191 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %191, i64 %193
  store %struct.mlx4_en_cq* %194, %struct.mlx4_en_cq** %6, align 8
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %196 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %195, %struct.mlx4_en_cq* %196, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %188
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %203 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %409

204:                                              ; preds = %188
  %205 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %206 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %207 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %205, %struct.mlx4_en_cq* %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %212 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %211, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %213 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %214 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %215 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %213, %struct.mlx4_en_cq* %214)
  br label %409

216:                                              ; preds = %204
  %217 = load i32, i32* @DRV, align 4
  %218 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %217, %struct.mlx4_en_priv* %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %219)
  %221 = call i32 @cpu_to_be16(i32 65535)
  %222 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %222, i32 0, i32 2
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 4
  %226 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %227 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %226, i32 0, i32 10
  %228 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %228, i64 %230
  store %struct.mlx4_en_tx_ring* %231, %struct.mlx4_en_tx_ring** %7, align 8
  %232 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %233 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %234 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %235 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %240 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = sdiv i32 %238, %241
  %243 = call i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %232, %struct.mlx4_en_tx_ring* %233, i32 %237, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %216
  %247 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %248 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %249 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %250 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %251 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %249, %struct.mlx4_en_cq* %250)
  br label %409

252:                                              ; preds = %216
  %253 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %254 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %255 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %253, %struct.mlx4_en_cq* %254)
  store i32 0, i32* %12, align 4
  br label %256

256:                                              ; preds = %270, %252
  %257 = load i32, i32* %12, align 4
  %258 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %259 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %276

262:                                              ; preds = %256
  %263 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %264 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %265, %267
  %269 = inttoptr i64 %268 to i32*
  store i32 -1, i32* %269, align 4
  br label %270

270:                                              ; preds = %262
  %271 = load i64, i64* @STAMP_STRIDE, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %12, align 4
  br label %256

276:                                              ; preds = %256
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %182

282:                                              ; preds = %182
  %283 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %284 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %287 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %290 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %289, i32 0, i32 17
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @ETH_FCS_LEN, align 8
  %293 = add nsw i64 %291, %292
  %294 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %295 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %294, i32 0, i32 16
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %300 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %299, i32 0, i32 16
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %305 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %304, i32 0, i32 16
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %310 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %309, i32 0, i32 16
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @mlx4_SET_PORT_general(i32 %285, i64 %288, i64 %293, i32 %298, i32 %303, i32 %308, i32 %313)
  store i32 %314, i32* %10, align 4
  %315 = load i32, i32* %10, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %282
  %318 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %319 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %320 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %318, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i64 %321, i32 %322)
  br label %409

324:                                              ; preds = %282
  %325 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %326 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %329 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %332 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %331, i32 0, i32 15
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @mlx4_SET_PORT_qpn_calc(i32 %327, i64 %330, i32 %333, i32 0)
  store i32 %334, i32* %10, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %324
  %338 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %339 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %338, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %409

340:                                              ; preds = %324
  %341 = load i32, i32* @HW, align 4
  %342 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %343 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %341, %struct.mlx4_en_priv* %342, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %344 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %345 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %348 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @mlx4_INIT_PORT(i32 %346, i64 %349)
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %340
  %354 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %355 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %354, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %409

356:                                              ; preds = %340
  %357 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 10
  %358 = load i32, i32* @ETH_ALEN, align 4
  %359 = call i32 @memset(i64* %357, i32 255, i32 %358)
  %360 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %361 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 5
  store i64 %362, i64* %363, align 8
  %364 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %365 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %368 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %367, i32 0, i32 14
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %371 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %372 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* @MLX4_PROT_ETH, align 4
  %375 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %376 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %375, i32 0, i32 13
  %377 = call i64 @mlx4_multicast_attach(i32 %366, i32* %369, i64* %370, i64 %373, i32 0, i32 %374, i32* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %356
  %380 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %381 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %380, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %382

382:                                              ; preds = %379, %356
  %383 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %384 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %385 = or i32 %383, %384
  %386 = xor i32 %385, -1
  %387 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %388 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 8
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 8
  %391 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %392 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %395 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %394, i32 0, i32 12
  %396 = call i32 @queue_work(i32 %393, i32* %395)
  %397 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %398 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %401 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %400, i32 0, i32 11
  %402 = call i32 @mlx4_set_stats_bitmap(i32 %399, i32* %401)
  %403 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %404 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %403, i32 0, i32 0
  store i32 1, i32* %404, align 8
  %405 = load %struct.net_device*, %struct.net_device** %3, align 8
  %406 = call i32 @netif_tx_start_all_queues(%struct.net_device* %405)
  %407 = load %struct.net_device*, %struct.net_device** %3, align 8
  %408 = call i32 @netif_device_attach(%struct.net_device* %407)
  store i32 0, i32* %2, align 4
  br label %475

409:                                              ; preds = %353, %337, %317, %246, %210, %201
  br label %410

410:                                              ; preds = %414, %409
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %411, -1
  store i32 %412, i32* %9, align 4
  %413 = icmp ne i32 %411, 0
  br i1 %413, label %414, label %431

414:                                              ; preds = %410
  %415 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %416 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %417 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %416, i32 0, i32 10
  %418 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %417, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %418, i64 %420
  %422 = call i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv* %415, %struct.mlx4_en_tx_ring* %421)
  %423 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %424 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %425 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %424, i32 0, i32 9
  %426 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %425, align 8
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %426, i64 %428
  %430 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %423, %struct.mlx4_en_cq* %429)
  br label %410

431:                                              ; preds = %410
  %432 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %433 = call i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv* %432)
  br label %434

434:                                              ; preds = %431, %180
  %435 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %436 = call i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv* %435)
  br label %437

437:                                              ; preds = %434, %172
  %438 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %439 = call i32 @mlx4_en_put_qp(%struct.mlx4_en_priv* %438)
  br label %440

440:                                              ; preds = %437, %157, %120, %92
  br label %441

441:                                              ; preds = %445, %440
  %442 = load i32, i32* %8, align 4
  %443 = add nsw i32 %442, -1
  store i32 %443, i32* %8, align 4
  %444 = icmp ne i32 %442, 0
  br i1 %444, label %445, label %454

445:                                              ; preds = %441
  %446 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %447 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %448 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %447, i32 0, i32 8
  %449 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %448, align 8
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %449, i64 %451
  %453 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %446, %struct.mlx4_en_cq* %452)
  br label %441

454:                                              ; preds = %441
  store i32 0, i32* %11, align 4
  br label %455

455:                                              ; preds = %470, %454
  %456 = load i32, i32* %11, align 4
  %457 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %458 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = icmp slt i32 %456, %459
  br i1 %460, label %461, label %473

461:                                              ; preds = %455
  %462 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %463 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %464 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %463, i32 0, i32 7
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %464, align 8
  %466 = load i32, i32* %11, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i64 %467
  %469 = call i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv* %462, %struct.TYPE_10__* %468)
  br label %470

470:                                              ; preds = %461
  %471 = load i32, i32* %11, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %11, align 4
  br label %455

473:                                              ; preds = %455
  %474 = load i32, i32* %10, align 4
  store i32 %474, i32* %2, align 4
  br label %475

475:                                              ; preds = %473, %382, %68, %24
  %476 = load i32, i32* %2, align 4
  ret i32 %476
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mlx4_en_calc_rx_buf(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*, i32) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_get_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(i32, i64, i32, i32) #1

declare dso_local i32 @mlx4_INIT_PORT(i32, i64) #1

declare dso_local i64 @mlx4_multicast_attach(i32, i32*, i64*, i64, i32, i32, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx4_set_stats_bitmap(i32, i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_put_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
