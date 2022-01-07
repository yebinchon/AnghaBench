; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_templates_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_templates_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32 }

@WL12XX_INVALID_ROLE_ID = common dso_local global i32 0, align 4
@WL1271_CMD_TEMPL_MAX_SIZE = common dso_local global i32 0, align 4
@WL1271_RATE_AUTOMATIC = common dso_local global i32 0, align 4
@WLCORE_QUIRK_DUAL_PROBE_TMPL = common dso_local global i32 0, align 4
@CMD_TEMPL_NULL_DATA = common dso_local global i32 0, align 4
@CMD_TEMPL_PS_POLL = common dso_local global i32 0, align 4
@CMD_TEMPL_QOS_NULL_DATA = common dso_local global i32 0, align 4
@CMD_TEMPL_PROBE_RESPONSE = common dso_local global i32 0, align 4
@WL1271_CMD_TEMPL_DFLT_SIZE = common dso_local global i32 0, align 4
@CMD_TEMPL_BEACON = common dso_local global i32 0, align 4
@WL1271_EXTRA_SPACE_MAX = common dso_local global i32 0, align 4
@CMD_TEMPL_ARP_RSP = common dso_local global i32 0, align 4
@CMD_TEMPL_AP_PROBE_RESPONSE = common dso_local global i32 0, align 4
@CMD_TEMPL_AP_BEACON = common dso_local global i32 0, align 4
@CMD_TEMPL_DEAUTH_AP = common dso_local global i32 0, align 4
@WLCORE_MAX_KLV_TEMPLATES = common dso_local global i32 0, align 4
@CMD_TEMPL_KLV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_init_templates_config(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %13 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %14 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %7, i32 %8, i32 %11, i32* null, i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %186

19:                                               ; preds = %1
  %20 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %21 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %26 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %27 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %20, i32 %21, i32 %24, i32* null, i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %186

32:                                               ; preds = %19
  %33 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WLCORE_QUIRK_DUAL_PROBE_TMPL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %41 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %42 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %46 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %47 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %40, i32 %41, i32 %44, i32* null, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %186

52:                                               ; preds = %39
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %55 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %59 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %60 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %53, i32 %54, i32 %57, i32* null, i32 %58, i32 0, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %186

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %68 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %69 = load i32, i32* @CMD_TEMPL_NULL_DATA, align 4
  %70 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %71 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %67, i32 %68, i32 %69, i32* null, i32 4, i32 0, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %186

76:                                               ; preds = %66
  %77 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %78 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %79 = load i32, i32* @CMD_TEMPL_PS_POLL, align 4
  %80 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %81 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %77, i32 %78, i32 %79, i32* null, i32 4, i32 0, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %186

86:                                               ; preds = %76
  %87 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %88 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %89 = load i32, i32* @CMD_TEMPL_QOS_NULL_DATA, align 4
  %90 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %91 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %87, i32 %88, i32 %89, i32* null, i32 4, i32 0, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %186

96:                                               ; preds = %86
  %97 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %98 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %99 = load i32, i32* @CMD_TEMPL_PROBE_RESPONSE, align 4
  %100 = load i32, i32* @WL1271_CMD_TEMPL_DFLT_SIZE, align 4
  %101 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %102 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %97, i32 %98, i32 %99, i32* null, i32 %100, i32 0, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %186

107:                                              ; preds = %96
  %108 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %109 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %110 = load i32, i32* @CMD_TEMPL_BEACON, align 4
  %111 = load i32, i32* @WL1271_CMD_TEMPL_DFLT_SIZE, align 4
  %112 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %113 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %108, i32 %109, i32 %110, i32* null, i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %186

118:                                              ; preds = %107
  %119 = load i32, i32* @WL1271_EXTRA_SPACE_MAX, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 4, %120
  store i64 %121, i64* %6, align 8
  %122 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %123 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %124 = load i32, i32* @CMD_TEMPL_ARP_RSP, align 4
  %125 = load i64, i64* %6, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %128 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %122, i32 %123, i32 %124, i32* null, i32 %126, i32 0, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %186

133:                                              ; preds = %118
  %134 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %135 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %136 = load i32, i32* @CMD_TEMPL_AP_PROBE_RESPONSE, align 4
  %137 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %138 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %139 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %134, i32 %135, i32 %136, i32* null, i32 %137, i32 0, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %186

144:                                              ; preds = %133
  %145 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %146 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %147 = load i32, i32* @CMD_TEMPL_AP_BEACON, align 4
  %148 = load i32, i32* @WL1271_CMD_TEMPL_MAX_SIZE, align 4
  %149 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %150 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %145, i32 %146, i32 %147, i32* null, i32 %148, i32 0, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %186

155:                                              ; preds = %144
  %156 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %157 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %158 = load i32, i32* @CMD_TEMPL_DEAUTH_AP, align 4
  %159 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %160 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %156, i32 %157, i32 %158, i32* null, i32 4, i32 0, i32 %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %186

165:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %182, %165
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @WLCORE_MAX_KLV_TEMPLATES, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %172 = load i32, i32* @WL12XX_INVALID_ROLE_ID, align 4
  %173 = load i32, i32* @CMD_TEMPL_KLV, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @WL1271_RATE_AUTOMATIC, align 4
  %176 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %171, i32 %172, i32 %173, i32* null, i32 4, i32 %174, i32 %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %186

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %166

185:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %179, %163, %153, %142, %131, %116, %105, %94, %84, %74, %63, %50, %30, %17
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
