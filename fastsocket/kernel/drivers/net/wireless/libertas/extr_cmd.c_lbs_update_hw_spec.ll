; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_update_hw_spec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_update_hw_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cmd_ds_get_hw_spec = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_GET_HW_SPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%pM, fw %u.%u.%up%u, cap 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\0A\00", align 1
@MRVL_FW_V5 = common dso_local global i64 0, align 8
@MESH_FW_OLD = common dso_local global i32 0, align 4
@MRVL_FW_V10 = common dso_local global i64 0, align 8
@MESH_CAPINFO_ENABLE_MASK = common dso_local global i32 0, align 4
@MESH_FW_NEW = common dso_local global i32 0, align 4
@MESH_NONE = common dso_local global i32 0, align 4
@MRVL_FW_V4 = common dso_local global i64 0, align 8
@MRVDRV_MAX_REGION_CODE = common dso_local global i64 0, align 8
@lbs_region_code_to_index = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"unidentified region code; using the default (USA)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_update_hw_spec(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_get_hw_spec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = load i32, i32* @LBS_DEB_CMD, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = call i32 @memset(%struct.cmd_ds_get_hw_spec* %3, i32 0, i32 28)
  %9 = call i32 @cpu_to_le16(i32 28)
  %10 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i32 %13, i32* %16, i32 %17)
  %19 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %20 = load i32, i32* @CMD_GET_HW_SPEC, align 4
  %21 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %19, i32 %20, %struct.cmd_ds_get_hw_spec* %3)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %217

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le32_to_cpu(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %43 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 24
  %46 = and i32 %45, 255
  %47 = or i32 %41, %46
  %48 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 255
  %57 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66, i32 %70, i32 %73)
  %75 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @MRVL_FW_MAJOR_REV(i32 %82)
  %84 = load i64, i64* @MRVL_FW_V5, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %25
  %87 = load i32, i32* @MESH_FW_OLD, align 4
  %88 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  br label %113

90:                                               ; preds = %25
  %91 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @MRVL_FW_MAJOR_REV(i32 %93)
  %95 = load i64, i64* @MRVL_FW_V10, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %99 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MESH_CAPINFO_ENABLE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @MESH_FW_NEW, align 4
  %106 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  br label %112

108:                                              ; preds = %97, %90
  %109 = load i32, i32* @MESH_NONE, align 4
  %110 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %86
  %114 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %115 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @MRVL_FW_MAJOR_REV(i32 %116)
  %118 = load i64, i64* @MRVL_FW_V4, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 255
  %126 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %127 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  br label %135

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le16_to_cpu(i32 %130)
  %132 = and i32 %131, 255
  %133 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %134 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %128, %120
  store i64 0, i64* %5, align 8
  br label %136

136:                                              ; preds = %151, %135
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @MRVDRV_MAX_REGION_CODE, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %142 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** @lbs_region_code_to_index, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %143, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %154

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %5, align 8
  br label %136

154:                                              ; preds = %149, %136
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @MRVDRV_MAX_REGION_CODE, align 8
  %157 = icmp uge i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %160 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %159, i32 0, i32 3
  store i32 16, i32* %160, align 8
  %161 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %154
  %163 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %164 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 255
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %171 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ETH_ALEN, align 4
  %176 = call i32 @memmove(i32* %172, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %169, %162
  %178 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %179 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %178, i32 0, i32 5
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %184 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @ETH_ALEN, align 4
  %187 = call i32 @memcpy(i32 %182, i32* %185, i32 %186)
  %188 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %189 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = icmp ne %struct.TYPE_6__* %190, null
  br i1 %191, label %192, label %203

192:                                              ; preds = %177
  %193 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %194 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %199 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @ETH_ALEN, align 4
  %202 = call i32 @memcpy(i32 %197, i32* %200, i32 %201)
  br label %203

203:                                              ; preds = %192, %177
  %204 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %205 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %206 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @lbs_set_regiontable(%struct.lbs_private* %204, i32 %207, i32 0)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i32 -1, i32* %4, align 4
  br label %217

211:                                              ; preds = %203
  %212 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %213 = call i64 @lbs_set_universaltable(%struct.lbs_private* %212, i32 0)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 -1, i32* %4, align 4
  br label %217

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216, %215, %210, %24
  %218 = load i32, i32* @LBS_DEB_CMD, align 4
  %219 = call i32 @lbs_deb_leave(i32 %218)
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_get_hw_spec*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_get_hw_spec*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @lbs_pr_info(i8*, ...) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32, i32) #1

declare dso_local i64 @MRVL_FW_MAJOR_REV(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(i32*, i32, i32) #1

declare dso_local i64 @lbs_set_regiontable(%struct.lbs_private*, i32, i32) #1

declare dso_local i64 @lbs_set_universaltable(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
