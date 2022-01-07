; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i64 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.ib_port_attr = type { i64 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i32 0, align 4
@IB_SMP_ATTR_VENDOR_MASK = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MTHCA_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MAD_IFC returned %d\0A\00", align 1
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_port_attr, align 8
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %21 = icmp ne %struct.ib_wc* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %25, %22 ], [ %28, %26 ]
  store i64 %30, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %31 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %32 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %42 = call i32 @to_mdev(%struct.ib_device* %41)
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %45 = call i32 @forward_trap(i32 %42, i32 %43, %struct.ib_mad* %44)
  %46 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %47 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  br label %257

49:                                               ; preds = %37, %29
  %50 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %51 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %58 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %56, %49
  %64 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %65 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %72 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %79 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %85, i32* %8, align 4
  br label %257

86:                                               ; preds = %77, %70, %63
  %87 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %88 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IB_SMP_ATTR_SM_INFO, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %86
  %94 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %95 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @IB_SMP_ATTR_VENDOR_MASK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93, %86
  %103 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %103, i32* %8, align 4
  br label %257

104:                                              ; preds = %93
  br label %146

105:                                              ; preds = %56
  %106 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %107 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %126, label %112

112:                                              ; preds = %105
  %113 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %114 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MTHCA_VENDOR_CLASS1, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %121 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MTHCA_VENDOR_CLASS2, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %119, %112, %105
  %127 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %128 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %135 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %141, i32* %8, align 4
  br label %257

142:                                              ; preds = %133, %126
  br label %145

143:                                              ; preds = %119
  %144 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %144, i32* %8, align 4
  br label %257

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145, %104
  %147 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %148 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %155 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %153, %146
  %161 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %162 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %160
  %168 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %169 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @ib_query_port(%struct.ib_device* %175, i32 %176, %struct.ib_port_attr* %19)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %18, align 8
  br label %182

182:                                              ; preds = %179, %174, %167, %160, %153
  %183 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %184 = call i32 @to_mdev(%struct.ib_device* %183)
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %190 = and i32 %188, %189
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %193 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %194 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %195 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %196 = call i32 @mthca_MAD_IFC(i32 %184, i32 %187, i32 %190, i32 %191, %struct.ib_wc* %192, %struct.ib_grh* %193, %struct.ib_mad* %194, %struct.ib_mad* %195)
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @EBADMSG, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %182
  %202 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %202, i32* %8, align 4
  br label %257

203:                                              ; preds = %182
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %208 = call i32 @to_mdev(%struct.ib_device* %207)
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @mthca_err(i32 %208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %211, i32* %8, align 4
  br label %257

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %215 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %213
  %220 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %223 = load i64, i64* %18, align 8
  %224 = call i32 @smp_snoop(%struct.ib_device* %220, i32 %221, %struct.ib_mad* %222, i64 %223)
  %225 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %226 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %227 = call i32 @node_desc_override(%struct.ib_device* %225, %struct.ib_mad* %226)
  br label %228

228:                                              ; preds = %219, %213
  %229 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %230 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %228
  %236 = call i32 @cpu_to_be16(i32 32768)
  %237 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %238 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %236
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %235, %228
  %243 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %244 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %251 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %8, align 4
  br label %257

253:                                              ; preds = %242
  %254 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %255 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %256 = or i32 %254, %255
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %253, %249, %206, %201, %143, %140, %102, %84, %40
  %258 = load i32, i32* %8, align 4
  ret i32 %258
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @forward_trap(i32, i32, %struct.ib_mad*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mthca_MAD_IFC(i32, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @mthca_err(i32, i8*, i32) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
