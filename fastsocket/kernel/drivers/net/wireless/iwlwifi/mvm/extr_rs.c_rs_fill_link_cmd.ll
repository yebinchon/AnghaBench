; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_fill_link_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_fill_link_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32, %struct.iwl_lq_cmd }
%struct.iwl_lq_cmd = type { i32, i32, i64, i32, i8**, i32, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32 }

@IWL_NUMBER_TRY = common dso_local global i32 0, align 4
@IWL_HT_NUMBER_TRY = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_DISABLE_START_DEF = common dso_local global i64 0, align 8
@LINK_QUAL_MAX_RETRY_NUM = common dso_local global i32 0, align 4
@NUM_TRY_BEFORE_ANT_TOGGLE = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_FRAME_LIMIT_DEF = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_TIME_LIMIT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_lq_sta*, i32)* @rs_fill_link_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_fill_link_cmd(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_lq_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_scale_tbl_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_lq_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %15, i32 0, i32 1
  store %struct.iwl_lq_cmd* %16, %struct.iwl_lq_cmd** %14, align 8
  %17 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @rs_dbgfs_set_mcs(%struct.iwl_lq_sta* %17, i32* %6, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @rs_get_tbl_info_from_mcs(i32 %20, i32 %23, %struct.iwl_scale_tbl_info* %7, i32* %9)
  %25 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_legacy(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* @IWL_NUMBER_TRY, align 4
  store i32 %30, i32* %10, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @IWL_HT_NUMBER_TRY, align 4
  %33 = load i64, i64* @LINK_QUAL_AGG_DISABLE_START_DEF, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @min(i32 %32, i64 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_mimo(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %44 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %48 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %47, i32 0, i32 4
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %46, i8** %52, align 8
  %53 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @num_of_ant(i32 %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %61 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  br label %73

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @num_of_ant(i32 %64)
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %71 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %79 = icmp ne %struct.iwl_mvm* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @iwl_fw_valid_tx_ant(i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %181, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %197

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ false, %91 ], [ %97, %94 ]
  br i1 %99, label %100, label %138

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @is_legacy(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @NUM_TRY_BEFORE_ANT_TOGGLE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %121

112:                                              ; preds = %105
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %114 = icmp ne %struct.iwl_mvm* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @rs_toggle_antenna(i32 %116, i32* %6, %struct.iwl_scale_tbl_info* %7)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %115, %112
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %100
  %123 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @rs_dbgfs_set_mcs(%struct.iwl_lq_sta* %123, i32* %6, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %129 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %128, i32 0, i32 4
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %127, i8** %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %91

138:                                              ; preds = %98
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %141 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @rs_get_tbl_info_from_mcs(i32 %139, i32 %142, %struct.iwl_scale_tbl_info* %7, i32* %9)
  %144 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @is_mimo(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %151 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %138
  %153 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @rs_get_lower_rate(%struct.iwl_lq_sta* %153, %struct.iwl_scale_tbl_info* %7, i32 %154, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %7, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @is_legacy(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %152
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @NUM_TRY_BEFORE_ANT_TOGGLE, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %177

168:                                              ; preds = %161
  %169 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %170 = icmp ne %struct.iwl_mvm* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @rs_toggle_antenna(i32 %172, i32* %6, %struct.iwl_scale_tbl_info* %7)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 1, i32* %11, align 4
  br label %176

176:                                              ; preds = %175, %171, %168
  br label %177

177:                                              ; preds = %176, %165
  %178 = load i32, i32* @IWL_NUMBER_TRY, align 4
  store i32 %178, i32* %10, align 4
  br label %181

179:                                              ; preds = %152
  %180 = load i32, i32* @IWL_HT_NUMBER_TRY, align 4
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %179, %177
  store i32 0, i32* %12, align 4
  %182 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @rs_dbgfs_set_mcs(%struct.iwl_lq_sta* %182, i32* %6, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = call i8* @cpu_to_le32(i32 %185)
  %187 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %188 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %187, i32 0, i32 4
  %189 = load i8**, i8*** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  store i8* %186, i8** %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %10, align 4
  br label %86

197:                                              ; preds = %86
  %198 = load i32, i32* @LINK_QUAL_AGG_FRAME_LIMIT_DEF, align 4
  %199 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %200 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load i64, i64* @LINK_QUAL_AGG_DISABLE_START_DEF, align 8
  %202 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %203 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_DEF, align 4
  %205 = call i32 @cpu_to_le16(i32 %204)
  %206 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %14, align 8
  %207 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  ret void
}

declare dso_local i32 @rs_dbgfs_set_mcs(%struct.iwl_lq_sta*, i32*, i32) #1

declare dso_local i32 @rs_get_tbl_info_from_mcs(i32, i32, %struct.iwl_scale_tbl_info*, i32*) #1

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @is_mimo(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i64 @rs_toggle_antenna(i32, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_get_lower_rate(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
