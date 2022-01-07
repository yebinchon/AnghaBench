; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_MAD_IFC_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_MAD_IFC_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.mlx4_vhcr = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.ib_smp* }
%struct.ib_smp = type { i32*, i32, i64, i32, i64, i64, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { i32***, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@PORT_STATE_OFFSET = common dso_local global i32 0, align 4
@PORT_CAPABILITY_LOCATION_IN_SMP = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i64 0, align 8
@IB_SMP_ATTR_NODE_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"slave %d is trying to execute a Subnet MGMT MAD, class 0x%x, method 0x%x for attr 0x%x. Rejecting\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*)* @mlx4_MAD_IFC_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_MAD_IFC_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.ib_smp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx4_priv*, align 8
  %22 = alloca %struct.ib_smp*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 1
  %29 = load %struct.ib_smp*, %struct.ib_smp** %28, align 8
  store %struct.ib_smp* %29, %struct.ib_smp** %14, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %30)
  store %struct.mlx4_priv* %31, %struct.mlx4_priv** %21, align 8
  %32 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %33 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %32, i32 0, i32 1
  %34 = load %struct.ib_smp*, %struct.ib_smp** %33, align 8
  store %struct.ib_smp* %34, %struct.ib_smp** %22, align 8
  %35 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %36 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %23, align 8
  %38 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %326

45:                                               ; preds = %6
  %46 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %47 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %326

51:                                               ; preds = %45
  %52 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %53 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %326

56:                                               ; preds = %51
  %57 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %325

62:                                               ; preds = %56
  %63 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %64 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IB_SMP_ATTR_PKEY_TABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %155

68:                                               ; preds = %62
  %69 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %70 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be32_to_cpu(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %78 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %68
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %385

85:                                               ; preds = %75
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %87 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32* @kcalloc(i32 %93, i32 4, i32 %94)
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %385

101:                                              ; preds = %85
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %106 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %107 = call i32 @get_full_pkey_table(%struct.mlx4_dev* %102, i32 %103, i32* %104, %struct.mlx4_cmd_mailbox* %105, %struct.mlx4_cmd_mailbox* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %151, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %15, align 4
  %112 = mul nsw i32 %111, 32
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %147, %110
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  %117 = mul nsw i32 %116, 32
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %113
  %120 = load %struct.mlx4_priv*, %struct.mlx4_priv** %21, align 8
  %121 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %120, i32 0, i32 0
  %122 = load i32***, i32**** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32**, i32*** %122, i64 %124
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %126, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %20, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @cpu_to_be16(i32 %140)
  %142 = load i32*, i32** %23, align 8
  %143 = load i32, i32* %19, align 4
  %144 = srem i32 %143, 32
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %119
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %113

150:                                              ; preds = %113
  br label %151

151:                                              ; preds = %150, %101
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @kfree(i32* %152)
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %7, align 4
  br label %385

155:                                              ; preds = %62
  %156 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %157 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %227

161:                                              ; preds = %155
  %162 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %163 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %164 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %167 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %170 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %173 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %176 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %179 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %180 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %162, i32 %165, i32 %168, i32 %171, i32 %174, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %225, label %183

183:                                              ; preds = %161
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %186 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %185)
  %187 = icmp ne i32 %184, %186
  br i1 %187, label %188, label %225

188:                                              ; preds = %183
  %189 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %190 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @PORT_STATE_OFFSET, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32* %194, i32** %26, align 8
  %195 = load i32*, i32** %26, align 8
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 240
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @vf_port_state(%struct.mlx4_dev* %198, i32 %199, i32 %200)
  %202 = or i32 %197, %201
  %203 = load i32*, i32** %26, align 8
  store i32 %202, i32* %203, align 4
  %204 = load %struct.mlx4_priv*, %struct.mlx4_priv** %21, align 8
  %205 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %24, align 4
  %218 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %219 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* @PORT_CAPABILITY_LOCATION_IN_SMP, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = call i32 @memcpy(i32* %223, i32* %24, i32 4)
  br label %225

225:                                              ; preds = %188, %183, %161
  %226 = load i32, i32* %18, align 4
  store i32 %226, i32* %7, align 4
  br label %385

227:                                              ; preds = %155
  %228 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %229 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @IB_SMP_ATTR_GUID_INFO, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %285

233:                                              ; preds = %227
  %234 = load i32, i32* %9, align 4
  %235 = sdiv i32 %234, 8
  %236 = call i32 @cpu_to_be32(i32 %235)
  %237 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %238 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 8
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %240 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %241 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %244 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %247 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %250 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %253 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %256 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %257 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %239, i32 %242, i32 %245, i32 %248, i32 %251, i32 %254, i32 %255, i32 %256)
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %283, label %260

260:                                              ; preds = %233
  %261 = load i32, i32* %9, align 4
  %262 = srem i32 %261, 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %260
  %265 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %266 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %269 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = srem i32 %271, 8
  %273 = mul nsw i32 %272, 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  %276 = call i32 @memcpy(i32* %267, i32* %275, i32 8)
  br label %277

277:                                              ; preds = %264, %260
  %278 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %279 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 8
  %282 = call i32 @memset(i32* %281, i32 0, i32 56)
  br label %283

283:                                              ; preds = %277, %233
  %284 = load i32, i32* %18, align 4
  store i32 %284, i32* %7, align 4
  br label %385

285:                                              ; preds = %227
  %286 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %287 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %286, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @IB_SMP_ATTR_NODE_INFO, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %324

291:                                              ; preds = %285
  %292 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %293 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %294 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %297 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %300 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %303 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %306 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %309 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %310 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %292, i32 %295, i32 %298, i32 %301, i32 %304, i32 %307, i32 %308, i32 %309)
  store i32 %310, i32* %18, align 4
  %311 = load i32, i32* %18, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %291
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @mlx4_get_slave_node_guid(%struct.mlx4_dev* %314, i32 %315)
  store i32 %316, i32* %25, align 4
  %317 = load %struct.ib_smp*, %struct.ib_smp** %22, align 8
  %318 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 12
  %321 = call i32 @memcpy(i32* %320, i32* %25, i32 8)
  br label %322

322:                                              ; preds = %313, %291
  %323 = load i32, i32* %18, align 4
  store i32 %323, i32* %7, align 4
  br label %385

324:                                              ; preds = %285
  br label %325

325:                                              ; preds = %324, %56
  br label %326

326:                                              ; preds = %325, %51, %45, %6
  %327 = load i32, i32* %9, align 4
  %328 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %329 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %328)
  %330 = icmp ne i32 %327, %329
  br i1 %330, label %331, label %365

331:                                              ; preds = %326
  %332 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %333 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %349, label %337

337:                                              ; preds = %331
  %338 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %339 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %365

343:                                              ; preds = %337
  %344 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %345 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %365

349:                                              ; preds = %343, %331
  %350 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %351 = load i32, i32* %9, align 4
  %352 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %353 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %356 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %359 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %358, i32 0, i32 5
  %360 = load i64, i64* %359, align 8
  %361 = call i32 @be16_to_cpu(i64 %360)
  %362 = call i32 @mlx4_err(%struct.mlx4_dev* %350, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %351, i64 %354, i64 %357, i32 %361)
  %363 = load i32, i32* @EPERM, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %7, align 4
  br label %385

365:                                              ; preds = %343, %337, %326
  %366 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %367 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %368 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %371 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %374 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %377 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %380 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %383 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %384 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %366, i32 %369, i32 %372, i32 %375, i32 %378, i32 %381, i32 %382, i32 %383)
  store i32 %384, i32* %7, align 4
  br label %385

385:                                              ; preds = %365, %349, %322, %283, %225, %151, %98, %82
  %386 = load i32, i32* %7, align 4
  ret i32 %386
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_full_pkey_table(%struct.mlx4_dev*, i32, i32*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @vf_port_state(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlx4_get_slave_node_guid(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
