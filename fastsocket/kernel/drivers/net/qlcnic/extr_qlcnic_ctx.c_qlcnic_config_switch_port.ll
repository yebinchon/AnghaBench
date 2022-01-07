; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_config_switch_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_config_switch_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_esw_func_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@BIT_0 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLCNIC_FW_CAPABILITY_TSO = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIGURE_ESWITCH = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to configure eswitch for vNIC function %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Configured eSwitch for vNIC function %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_config_switch_port(%struct.qlcnic_adapter* %0, %struct.qlcnic_esw_func_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_esw_func_cfg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_esw_func_cfg* %1, %struct.qlcnic_esw_func_cfg** %5, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %235

28:                                               ; preds = %2
  %29 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %235

39:                                               ; preds = %28
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BIT_0, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %55 = call i64 @__qlcnic_get_eswitch_port_config(%struct.qlcnic_adapter* %54, i32* %10, i32* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %235

59:                                               ; preds = %39
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, -65281
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @BIT_2, align 4
  %67 = load i32, i32* @BIT_3, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %203 [
    i32 128, label %75
    i32 130, label %183
    i32 129, label %195
  ]

75:                                               ; preds = %59
  %76 = load i32, i32* @BIT_4, align 4
  %77 = load i32, i32* @BIT_6, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @BIT_7, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @BIT_0, align 4
  %84 = load i32, i32* @BIT_1, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @QLCNIC_FW_CAPABILITY_TSO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %75
  %97 = load i32, i32* @BIT_2, align 4
  %98 = load i32, i32* @BIT_3, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %96, %75
  %103 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @BIT_4, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %10, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @BIT_6, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @BIT_7, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @BIT_0, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %144 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BIT_0, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* @BIT_1, align 4
  %151 = load i32, i32* @BIT_2, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @BIT_3, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %11, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %149, %142
  %159 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %160 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BIT_1, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @BIT_2, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %11, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %165, %158
  %171 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %172 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @BIT_2, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @BIT_3, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %177, %170
  br label %205

183:                                              ; preds = %59
  %184 = load i32, i32* @BIT_2, align 4
  %185 = load i32, i32* @BIT_5, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  %189 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %5, align 8
  %190 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 16
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  br label %205

195:                                              ; preds = %59
  %196 = load i32, i32* @BIT_3, align 4
  %197 = load i32, i32* @BIT_5, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = and i32 %201, 65535
  store i32 %202, i32* %10, align 4
  br label %205

203:                                              ; preds = %59
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %3, align 4
  br label %235

205:                                              ; preds = %195, %183, %182
  %206 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %207 = load i32, i32* @QLCNIC_CMD_CONFIGURE_ESWITCH, align 4
  %208 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %206, i32 %207)
  %209 = load i32, i32* %10, align 4
  %210 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  store i32 %209, i32* %213, align 4
  %214 = load i32, i32* %11, align 4
  %215 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  store i32 %214, i32* %218, align 4
  %219 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %220 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %219, %struct.qlcnic_cmd_args* %7)
  store i32 %220, i32* %8, align 4
  %221 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %205
  %226 = load %struct.device*, %struct.device** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @dev_err(%struct.device* %226, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %227)
  br label %233

229:                                              ; preds = %205
  %230 = load %struct.device*, %struct.device** %6, align 8
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @dev_info(%struct.device* %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %229, %225
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %203, %57, %37, %26
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @__qlcnic_get_eswitch_port_config(%struct.qlcnic_adapter*, i32*, i32*) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
