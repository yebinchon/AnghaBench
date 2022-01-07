; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_register_mad_agent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_register_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i64, i64, %struct.TYPE_4__*, i8*, i64, i64, %struct.ib_device*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_mad_reg_req = type { i64, i64, %struct.ib_mad_agent, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_mad_reg_req*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.ib_mad_port_private = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_class_table* }
%struct.ib_mad_mgmt_vendor_class_table = type { %struct.ib_mad_mgmt_vendor_class** }
%struct.ib_mad_mgmt_vendor_class = type { i32 }
%struct.ib_mad_mgmt_class_table = type { %struct.ib_mad_mgmt_method_table** }
%struct.ib_mad_mgmt_method_table = type { i32 }
%struct.ib_mad_agent_private = type { i64, i64, %struct.ib_mad_agent, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_mad_agent_private*, %struct.TYPE_5__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_VERSION = common dso_local global i64 0, align 8
@MAX_MGMT_VERSION = common dso_local global i64 0, align 8
@MAX_MGMT_CLASS = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@timeout_sends = common dso_local global i32 0, align 4
@local_completions = common dso_local global i32 0, align 4
@ib_mad_client_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mad_agent* @ib_register_mad_agent(%struct.ib_device* %0, i64 %1, i32 %2, %struct.ib_mad_reg_req* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca %struct.ib_mad_agent*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_mad_reg_req*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ib_mad_port_private*, align 8
  %19 = alloca %struct.ib_mad_agent*, align 8
  %20 = alloca %struct.ib_mad_agent_private*, align 8
  %21 = alloca %struct.ib_mad_reg_req*, align 8
  %22 = alloca %struct.ib_mad_mgmt_class_table*, align 8
  %23 = alloca %struct.ib_mad_mgmt_vendor_class_table*, align 8
  %24 = alloca %struct.ib_mad_mgmt_vendor_class*, align 8
  %25 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.ib_mad_reg_req* %3, %struct.ib_mad_reg_req** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ib_mad_agent* @ERR_PTR(i32 %32)
  store %struct.ib_mad_agent* %33, %struct.ib_mad_agent** %19, align 8
  store %struct.ib_mad_reg_req* null, %struct.ib_mad_reg_req** %21, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @get_spl_qp_index(i32 %34)
  store i32 %35, i32* %27, align 4
  %36 = load i32, i32* %27, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %8
  br label %425

39:                                               ; preds = %8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @IB_MGMT_RMPP_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %425

47:                                               ; preds = %42, %39
  %48 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %49 = icmp ne %struct.ib_mad_reg_req* %48, null
  br i1 %49, label %50, label %141

50:                                               ; preds = %47
  %51 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %52 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MAX_MGMT_VERSION, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %425

57:                                               ; preds = %50
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %425

61:                                               ; preds = %57
  %62 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %63 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAX_MGMT_CLASS, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %69 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %425

74:                                               ; preds = %67
  br label %97

75:                                               ; preds = %61
  %76 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %77 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %425

81:                                               ; preds = %75
  %82 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %83 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @is_vendor_class(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %89 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @is_vendor_oui(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %425

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %99 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ib_is_mad_class_rmpp(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %425

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @IB_QPT_SMI, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %114 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %120 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %425

125:                                              ; preds = %118, %112
  br label %140

126:                                              ; preds = %108
  %127 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %128 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %134 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132, %126
  br label %425

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %125
  br label %146

141:                                              ; preds = %47
  %142 = load i64, i64* %15, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  br label %425

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %140
  %147 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device* %147, i64 %148)
  store %struct.ib_mad_port_private* %149, %struct.ib_mad_port_private** %18, align 8
  %150 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %151 = icmp ne %struct.ib_mad_port_private* %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  %155 = call %struct.ib_mad_agent* @ERR_PTR(i32 %154)
  store %struct.ib_mad_agent* %155, %struct.ib_mad_agent** %19, align 8
  br label %425

156:                                              ; preds = %146
  %157 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %158 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %27, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = icmp ne %struct.TYPE_4__* %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* @EPROTONOSUPPORT, align 4
  %168 = sub nsw i32 0, %167
  %169 = call %struct.ib_mad_agent* @ERR_PTR(i32 %168)
  store %struct.ib_mad_agent* %169, %struct.ib_mad_agent** %19, align 8
  br label %425

170:                                              ; preds = %156
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call %struct.ib_mad_reg_req* @kzalloc(i32 160, i32 %171)
  %173 = bitcast %struct.ib_mad_reg_req* %172 to %struct.ib_mad_agent_private*
  store %struct.ib_mad_agent_private* %173, %struct.ib_mad_agent_private** %20, align 8
  %174 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %175 = icmp ne %struct.ib_mad_agent_private* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  %179 = call %struct.ib_mad_agent* @ERR_PTR(i32 %178)
  store %struct.ib_mad_agent* %179, %struct.ib_mad_agent** %19, align 8
  br label %425

180:                                              ; preds = %170
  %181 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %182 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %181, i32 0, i32 3
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %27, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %192 = call i32 @ib_get_dma_mr(i32 %190, i32 %191)
  %193 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %194 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %197 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @IS_ERR(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %180
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  %205 = call %struct.ib_mad_agent* @ERR_PTR(i32 %204)
  store %struct.ib_mad_agent* %205, %struct.ib_mad_agent** %19, align 8
  br label %421

206:                                              ; preds = %180
  %207 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %208 = icmp ne %struct.ib_mad_reg_req* %207, null
  br i1 %208, label %209, label %220

209:                                              ; preds = %206
  %210 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call %struct.ib_mad_reg_req* @kmemdup(%struct.ib_mad_reg_req* %210, i32 160, i32 %211)
  store %struct.ib_mad_reg_req* %212, %struct.ib_mad_reg_req** %21, align 8
  %213 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %21, align 8
  %214 = icmp ne %struct.ib_mad_reg_req* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  %218 = call %struct.ib_mad_agent* @ERR_PTR(i32 %217)
  store %struct.ib_mad_agent* %218, %struct.ib_mad_agent** %19, align 8
  br label %415

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %206
  %221 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %222 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %221, i32 0, i32 3
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %27, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %228 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %227, i32 0, i32 15
  store %struct.TYPE_5__* %226, %struct.TYPE_5__** %228, align 8
  %229 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %21, align 8
  %230 = bitcast %struct.ib_mad_reg_req* %229 to %struct.ib_mad_agent_private*
  %231 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %232 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %231, i32 0, i32 14
  store %struct.ib_mad_agent_private* %230, %struct.ib_mad_agent_private** %232, align 8
  %233 = load i64, i64* %14, align 8
  %234 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %235 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %235, i32 0, i32 8
  store i64 %233, i64* %236, align 8
  %237 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %238 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %239 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %239, i32 0, i32 7
  store %struct.ib_device* %237, %struct.ib_device** %240, align 8
  %241 = load i64, i64* %16, align 8
  %242 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %243 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %243, i32 0, i32 6
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %247 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %247, i32 0, i32 5
  store i64 %245, i64* %248, align 8
  %249 = load i8*, i8** %17, align 8
  %250 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %251 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %251, i32 0, i32 4
  store i8* %249, i8** %252, align 8
  %253 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %254 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %253, i32 0, i32 3
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %262 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %262, i32 0, i32 3
  store %struct.TYPE_4__* %260, %struct.TYPE_4__** %263, align 8
  %264 = load i64, i64* %11, align 8
  %265 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %266 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %266, i32 0, i32 2
  store i64 %264, i64* %267, align 8
  %268 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %269 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %268, i32 0, i32 13
  %270 = call i32 @spin_lock_init(i32* %269)
  %271 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %272 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %271, i32 0, i32 12
  %273 = call i32 @INIT_LIST_HEAD(i32* %272)
  %274 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %275 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %274, i32 0, i32 11
  %276 = call i32 @INIT_LIST_HEAD(i32* %275)
  %277 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %278 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %277, i32 0, i32 10
  %279 = call i32 @INIT_LIST_HEAD(i32* %278)
  %280 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %281 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %280, i32 0, i32 9
  %282 = call i32 @INIT_LIST_HEAD(i32* %281)
  %283 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %284 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %283, i32 0, i32 8
  %285 = load i32, i32* @timeout_sends, align 4
  %286 = call i32 @INIT_DELAYED_WORK(i32* %284, i32 %285)
  %287 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %288 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %287, i32 0, i32 7
  %289 = call i32 @INIT_LIST_HEAD(i32* %288)
  %290 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %291 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %290, i32 0, i32 6
  %292 = load i32, i32* @local_completions, align 4
  %293 = call i32 @INIT_WORK(i32* %291, i32 %292)
  %294 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %295 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %294, i32 0, i32 5
  %296 = call i32 @atomic_set(i32* %295, i32 1)
  %297 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %298 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %297, i32 0, i32 4
  %299 = call i32 @init_completion(i32* %298)
  %300 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %301 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %300, i32 0, i32 0
  %302 = load i64, i64* %28, align 8
  %303 = call i32 @spin_lock_irqsave(i32* %301, i64 %302)
  %304 = load i64, i64* @ib_mad_client_id, align 8
  %305 = add nsw i64 %304, 1
  store i64 %305, i64* @ib_mad_client_id, align 8
  %306 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %307 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %307, i32 0, i32 1
  store i64 %305, i64* %308, align 8
  %309 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %310 = icmp ne %struct.ib_mad_reg_req* %309, null
  br i1 %310, label %311, label %396

311:                                              ; preds = %220
  %312 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %313 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i64 @convert_mgmt_class(i64 %314)
  store i64 %315, i64* %29, align 8
  %316 = load i64, i64* %29, align 8
  %317 = call i64 @is_vendor_class(i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %353, label %319

319:                                              ; preds = %311
  %320 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %321 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %320, i32 0, i32 2
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %324 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 1
  %328 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %327, align 8
  store %struct.ib_mad_mgmt_class_table* %328, %struct.ib_mad_mgmt_class_table** %22, align 8
  %329 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %22, align 8
  %330 = icmp ne %struct.ib_mad_mgmt_class_table* %329, null
  br i1 %330, label %331, label %347

331:                                              ; preds = %319
  %332 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %22, align 8
  %333 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %332, i32 0, i32 0
  %334 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %333, align 8
  %335 = load i64, i64* %29, align 8
  %336 = getelementptr inbounds %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %334, i64 %335
  %337 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %336, align 8
  store %struct.ib_mad_mgmt_method_table* %337, %struct.ib_mad_mgmt_method_table** %25, align 8
  %338 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %25, align 8
  %339 = icmp ne %struct.ib_mad_mgmt_method_table* %338, null
  br i1 %339, label %340, label %346

340:                                              ; preds = %331
  %341 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %342 = call i64 @method_in_use(%struct.ib_mad_mgmt_method_table** %25, %struct.ib_mad_reg_req* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  br label %408

345:                                              ; preds = %340
  br label %346

346:                                              ; preds = %345, %331
  br label %347

347:                                              ; preds = %346, %319
  %348 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %349 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %350 = bitcast %struct.ib_mad_agent_private* %349 to %struct.ib_mad_reg_req*
  %351 = load i64, i64* %29, align 8
  %352 = call i32 @add_nonoui_reg_req(%struct.ib_mad_reg_req* %348, %struct.ib_mad_reg_req* %350, i64 %351)
  store i32 %352, i32* %26, align 4
  br label %389

353:                                              ; preds = %311
  %354 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %355 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %354, i32 0, i32 2
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %358 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %361, align 8
  store %struct.ib_mad_mgmt_vendor_class_table* %362, %struct.ib_mad_mgmt_vendor_class_table** %23, align 8
  %363 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %23, align 8
  %364 = icmp ne %struct.ib_mad_mgmt_vendor_class_table* %363, null
  br i1 %364, label %365, label %384

365:                                              ; preds = %353
  %366 = load i64, i64* %29, align 8
  %367 = call i64 @vendor_class_index(i64 %366)
  store i64 %367, i64* %30, align 8
  %368 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %23, align 8
  %369 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table, %struct.ib_mad_mgmt_vendor_class_table* %368, i32 0, i32 0
  %370 = load %struct.ib_mad_mgmt_vendor_class**, %struct.ib_mad_mgmt_vendor_class*** %369, align 8
  %371 = load i64, i64* %30, align 8
  %372 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %370, i64 %371
  %373 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %372, align 8
  store %struct.ib_mad_mgmt_vendor_class* %373, %struct.ib_mad_mgmt_vendor_class** %24, align 8
  %374 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %24, align 8
  %375 = icmp ne %struct.ib_mad_mgmt_vendor_class* %374, null
  br i1 %375, label %376, label %383

376:                                              ; preds = %365
  %377 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %24, align 8
  %378 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %379 = call i64 @is_vendor_method_in_use(%struct.ib_mad_mgmt_vendor_class* %377, %struct.ib_mad_reg_req* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %408

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %382, %365
  br label %384

384:                                              ; preds = %383, %353
  %385 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %13, align 8
  %386 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %387 = bitcast %struct.ib_mad_agent_private* %386 to %struct.ib_mad_reg_req*
  %388 = call i32 @add_oui_reg_req(%struct.ib_mad_reg_req* %385, %struct.ib_mad_reg_req* %387)
  store i32 %388, i32* %26, align 4
  br label %389

389:                                              ; preds = %384, %347
  %390 = load i32, i32* %26, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load i32, i32* %26, align 4
  %394 = call %struct.ib_mad_agent* @ERR_PTR(i32 %393)
  store %struct.ib_mad_agent* %394, %struct.ib_mad_agent** %19, align 8
  br label %408

395:                                              ; preds = %389
  br label %396

396:                                              ; preds = %395, %220
  %397 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %398 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %397, i32 0, i32 3
  %399 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %400 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %399, i32 0, i32 1
  %401 = call i32 @list_add_tail(i32* %398, i32* %400)
  %402 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %403 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %402, i32 0, i32 0
  %404 = load i64, i64* %28, align 8
  %405 = call i32 @spin_unlock_irqrestore(i32* %403, i64 %404)
  %406 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %407 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %406, i32 0, i32 2
  store %struct.ib_mad_agent* %407, %struct.ib_mad_agent** %9, align 8
  br label %427

408:                                              ; preds = %392, %381, %344
  %409 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %18, align 8
  %410 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %409, i32 0, i32 0
  %411 = load i64, i64* %28, align 8
  %412 = call i32 @spin_unlock_irqrestore(i32* %410, i64 %411)
  %413 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %21, align 8
  %414 = call i32 @kfree(%struct.ib_mad_reg_req* %413)
  br label %415

415:                                              ; preds = %408, %215
  %416 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %417 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @ib_dereg_mr(i32 %419)
  br label %421

421:                                              ; preds = %415, %202
  %422 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %20, align 8
  %423 = bitcast %struct.ib_mad_agent_private* %422 to %struct.ib_mad_reg_req*
  %424 = call i32 @kfree(%struct.ib_mad_reg_req* %423)
  br label %425

425:                                              ; preds = %421, %176, %166, %152, %144, %138, %124, %106, %93, %80, %73, %60, %56, %46, %38
  %426 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %19, align 8
  store %struct.ib_mad_agent* %426, %struct.ib_mad_agent** %9, align 8
  br label %427

427:                                              ; preds = %425, %396
  %428 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  ret %struct.ib_mad_agent* %428
}

declare dso_local %struct.ib_mad_agent* @ERR_PTR(i32) #1

declare dso_local i32 @get_spl_qp_index(i32) #1

declare dso_local i64 @is_vendor_class(i64) #1

declare dso_local i32 @is_vendor_oui(i32) #1

declare dso_local i32 @ib_is_mad_class_rmpp(i64) #1

declare dso_local %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device*, i64) #1

declare dso_local %struct.ib_mad_reg_req* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_get_dma_mr(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.ib_mad_reg_req* @kmemdup(%struct.ib_mad_reg_req*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @convert_mgmt_class(i64) #1

declare dso_local i64 @method_in_use(%struct.ib_mad_mgmt_method_table**, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @add_nonoui_reg_req(%struct.ib_mad_reg_req*, %struct.ib_mad_reg_req*, i64) #1

declare dso_local i64 @vendor_class_index(i64) #1

declare dso_local i64 @is_vendor_method_in_use(%struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @add_oui_reg_req(%struct.ib_mad_reg_req*, %struct.ib_mad_reg_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ib_mad_reg_req*) #1

declare dso_local i32 @ib_dereg_mr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
