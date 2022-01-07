; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }
%struct.mlx4_func_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_QUERY_FUNC_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_ETH = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The host supports neither eth nor rdma interfaces\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_NUM_PORTS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PF_BHVR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RESERVED_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_ETH_PROPS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_ETH_PROPS_FORCE_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VLAN is enforced on this port\0A\00", align 1
@QUERY_FUNC_CAP_ETH_PROPS_FORCE_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Force mac is enabled on this port\0A\00", align 1
@MLX4_PORT_TYPE_IB = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_RDMA_PROPS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RDMA_PROPS_FORCE_PHY_WQE_GID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"phy_wqe_gid is enforced on this ib port\0A\00", align 1
@QUERY_FUNC_CAP_PHYS_PORT_OFFSET = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_PROXY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_func_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_func_cap*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_func_cap* %2, %struct.mlx4_func_cap** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %19)
  store %struct.mlx4_cmd_mailbox* %20, %struct.mlx4_cmd_mailbox** %8, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %22 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %25)
  store i32 %26, i32* %4, align 4
  br label %272

27:                                               ; preds = %3
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MLX4_CMD_QUERY_FUNC_CAP, align 4
  %35 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %36 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %37 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %28, i32 0, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %267

41:                                               ; preds = %27
  %42 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %145, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @QUERY_FUNC_CAP_FLAGS_OFFSET, align 4
  %51 = call i32 @MLX4_GET(i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @QUERY_FUNC_CAP_FLAG_ETH, align 4
  %54 = load i32, i32* @QUERY_FUNC_CAP_FLAG_RDMA, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %47
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %60 = call i32 @mlx4_err(%struct.mlx4_dev* %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EPROTONOSUPPORT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %267

63:                                               ; preds = %47
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @QUERY_FUNC_CAP_NUM_PORTS_OFFSET, align 4
  %70 = call i32 @MLX4_GET(i32 %67, i32* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @QUERY_FUNC_CAP_PF_BHVR_OFFSET, align 4
  %77 = call i32 @MLX4_GET(i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %80 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @QUERY_FUNC_CAP_QP_QUOTA_OFFSET, align 4
  %84 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, 16777215
  %87 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %88 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET, align 4
  %92 = call i32 @MLX4_GET(i32 %89, i32* %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 16777215
  %95 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %96 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @QUERY_FUNC_CAP_CQ_QUOTA_OFFSET, align 4
  %100 = call i32 @MLX4_GET(i32 %97, i32* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, 16777215
  %103 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %104 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @QUERY_FUNC_CAP_MAX_EQ_OFFSET, align 4
  %108 = call i32 @MLX4_GET(i32 %105, i32* %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, 16777215
  %111 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %112 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @QUERY_FUNC_CAP_RESERVED_EQ_OFFSET, align 4
  %116 = call i32 @MLX4_GET(i32 %113, i32* %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 16777215
  %119 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %120 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* @QUERY_FUNC_CAP_MPT_QUOTA_OFFSET, align 4
  %124 = call i32 @MLX4_GET(i32 %121, i32* %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 16777215
  %127 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %128 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* @QUERY_FUNC_CAP_MTT_QUOTA_OFFSET, align 4
  %132 = call i32 @MLX4_GET(i32 %129, i32* %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 16777215
  %135 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* @QUERY_FUNC_CAP_MCG_QUOTA_OFFSET, align 4
  %140 = call i32 @MLX4_GET(i32 %137, i32* %138, i32 %139)
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, 16777215
  %143 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %144 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 4
  br label %267

145:                                              ; preds = %41
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %148 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %146, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %13, align 4
  br label %267

155:                                              ; preds = %145
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %155
  %167 = load i32, i32* %10, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* @QUERY_FUNC_CAP_ETH_PROPS_OFFSET, align 4
  %170 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @QUERY_FUNC_CAP_ETH_PROPS_FORCE_VLAN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %177 = call i32 @mlx4_err(%struct.mlx4_dev* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i32, i32* @EPROTONOSUPPORT, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %13, align 4
  br label %267

180:                                              ; preds = %166
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @QUERY_FUNC_CAP_ETH_PROPS_FORCE_MAC, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %187 = call i32 @mlx4_err(%struct.mlx4_dev* %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %188 = load i32, i32* @EPROTONOSUPPORT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %13, align 4
  br label %267

190:                                              ; preds = %180
  br label %218

191:                                              ; preds = %155
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %193 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MLX4_PORT_TYPE_IB, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %191
  %203 = load i32, i32* %10, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* @QUERY_FUNC_CAP_RDMA_PROPS_OFFSET, align 4
  %206 = call i32 @MLX4_GET(i32 %203, i32* %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @QUERY_FUNC_CAP_RDMA_PROPS_FORCE_PHY_WQE_GID, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %202
  %212 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %213 = call i32 @mlx4_err(%struct.mlx4_dev* %212, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %214 = load i32, i32* @EPROTONOSUPPORT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %13, align 4
  br label %267

216:                                              ; preds = %202
  br label %217

217:                                              ; preds = %216, %191
  br label %218

218:                                              ; preds = %217, %190
  %219 = load i32, i32* %10, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* @QUERY_FUNC_CAP_PHYS_PORT_OFFSET, align 4
  %222 = call i32 @MLX4_GET(i32 %219, i32* %220, i32 %221)
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %225 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %224, i32 0, i32 11
  store i32 %223, i32* %225, align 4
  %226 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %227 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %218
  %232 = load i32, i32* @ENOSYS, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %13, align 4
  br label %267

234:                                              ; preds = %218
  %235 = load i32, i32* %12, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* @QUERY_FUNC_CAP_QP0_TUNNEL, align 4
  %238 = call i32 @MLX4_GET(i32 %235, i32* %236, i32 %237)
  %239 = load i32, i32* %12, align 4
  %240 = and i32 %239, 16777215
  %241 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %242 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %241, i32 0, i32 12
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = load i32, i32* @QUERY_FUNC_CAP_QP0_PROXY, align 4
  %246 = call i32 @MLX4_GET(i32 %243, i32* %244, i32 %245)
  %247 = load i32, i32* %12, align 4
  %248 = and i32 %247, 16777215
  %249 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %250 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %249, i32 0, i32 13
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %12, align 4
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* @QUERY_FUNC_CAP_QP1_TUNNEL, align 4
  %254 = call i32 @MLX4_GET(i32 %251, i32* %252, i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = and i32 %255, 16777215
  %257 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %258 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %257, i32 0, i32 14
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* @QUERY_FUNC_CAP_QP1_PROXY, align 4
  %262 = call i32 @MLX4_GET(i32 %259, i32* %260, i32 %261)
  %263 = load i32, i32* %12, align 4
  %264 = and i32 %263, 16777215
  %265 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %266 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %265, i32 0, i32 15
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %234, %231, %211, %185, %175, %152, %63, %58, %40
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %269 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %270 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %268, %struct.mlx4_cmd_mailbox* %269)
  %271 = load i32, i32* %13, align 4
  store i32 %271, i32* %4, align 4
  br label %272

272:                                              ; preds = %267, %24
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
