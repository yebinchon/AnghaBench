; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_irq_stats_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_irq_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__** }

@all_counters = common dso_local global i32* null, align 8
@acpi_current_gpe_count = common dso_local global i32 0, align 4
@num_gpes = common dso_local global i32 0, align 4
@ACPI_NUM_FIXED_EVENTS = common dso_local global i32 0, align 4
@NUM_COUNTERS_EXTRA = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@all_attrs = common dso_local global %struct.TYPE_7__** null, align 8
@counter_attrs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"gpe%02X\00", align 1
@ACPI_EVENT_PMTIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ff_pmtimer\00", align 1
@ACPI_EVENT_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ff_gbl_lock\00", align 1
@ACPI_EVENT_POWER_BUTTON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ff_pwr_btn\00", align 1
@ACPI_EVENT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ff_slp_btn\00", align 1
@ACPI_EVENT_RTC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ff_rt_clk\00", align 1
@COUNT_GPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"gpe_all\00", align 1
@COUNT_SCI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"sci\00", align 1
@COUNT_SCI_NOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"sci_not\00", align 1
@COUNT_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"bug%02X\00", align 1
@counter_show = common dso_local global i32 0, align 4
@counter_set = common dso_local global i32 0, align 4
@interrupt_stats_attr_group = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@acpi_kobj = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_irq_stats_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [12 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = load i32*, i32** @all_counters, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %224

7:                                                ; preds = %0
  %8 = load i32, i32* @acpi_current_gpe_count, align 4
  store i32 %8, i32* @num_gpes, align 4
  %9 = load i32, i32* @num_gpes, align 4
  %10 = load i32, i32* @ACPI_NUM_FIXED_EVENTS, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @NUM_COUNTERS_EXTRA, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* @num_counters, align 4
  %14 = load i32, i32* @num_counters, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %21, %struct.TYPE_7__*** @all_attrs, align 8
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_attrs, align 8
  %23 = icmp eq %struct.TYPE_7__** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  br label %224

25:                                               ; preds = %7
  %26 = load i32, i32* @num_counters, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @all_counters, align 8
  %33 = load i32*, i32** @all_counters, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %222

36:                                               ; preds = %25
  %37 = load i32, i32* @num_counters, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** @counter_attrs, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %222

47:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %212, %47
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @num_counters, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %215

52:                                               ; preds = %48
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @num_gpes, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %162

60:                                               ; preds = %52
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @num_gpes, align 4
  %63 = load i32, i32* @ACPI_EVENT_PMTIMER, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %161

69:                                               ; preds = %60
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @num_gpes, align 4
  %72 = load i32, i32* @ACPI_EVENT_GLOBAL, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %160

78:                                               ; preds = %69
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* @num_gpes, align 4
  %81 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %159

87:                                               ; preds = %78
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* @num_gpes, align 4
  %90 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %158

96:                                               ; preds = %87
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @num_gpes, align 4
  %99 = load i32, i32* @ACPI_EVENT_RTC, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %157

105:                                              ; preds = %96
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @num_gpes, align 4
  %108 = load i32, i32* @ACPI_NUM_FIXED_EVENTS, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @COUNT_GPE, align 4
  %111 = add nsw i32 %109, %110
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %156

116:                                              ; preds = %105
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @num_gpes, align 4
  %119 = load i32, i32* @ACPI_NUM_FIXED_EVENTS, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* @COUNT_SCI, align 4
  %122 = add nsw i32 %120, %121
  %123 = icmp eq i32 %117, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %155

127:                                              ; preds = %116
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* @num_gpes, align 4
  %130 = load i32, i32* @ACPI_NUM_FIXED_EVENTS, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @COUNT_SCI_NOT, align 4
  %133 = add nsw i32 %131, %132
  %134 = icmp eq i32 %128, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %137 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %154

138:                                              ; preds = %127
  %139 = load i32, i32* %1, align 4
  %140 = load i32, i32* @num_gpes, align 4
  %141 = load i32, i32* @ACPI_NUM_FIXED_EVENTS, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @COUNT_ERROR, align 4
  %144 = add nsw i32 %142, %143
  %145 = icmp eq i32 %139, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %148 = call i32 (i8*, i8*, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %153

149:                                              ; preds = %138
  %150 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %151 = load i32, i32* %1, align 4
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %155, %113
  br label %157

157:                                              ; preds = %156, %102
  br label %158

158:                                              ; preds = %157, %93
  br label %159

159:                                              ; preds = %158, %84
  br label %160

160:                                              ; preds = %159, %75
  br label %161

161:                                              ; preds = %160, %66
  br label %162

162:                                              ; preds = %161, %56
  %163 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %164 = call i32 @strlen(i8* %163)
  %165 = add nsw i32 %164, 1
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @kzalloc(i32 %165, i32 %166)
  store i8* %167, i8** %3, align 8
  %168 = load i8*, i8** %3, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %222

171:                                              ; preds = %162
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %174 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %175 = call i32 @strlen(i8* %174)
  %176 = add nsw i32 %175, 1
  %177 = call i32 @strncpy(i8* %172, i8* %173, i32 %176)
  %178 = load i8*, i8** %3, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i8* %178, i8** %184, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %186 = load i32, i32* %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  store i32 420, i32* %190, align 8
  %191 = load i32, i32* @counter_show, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  store i32 %191, i32* %196, align 4
  %197 = load i32, i32* @counter_set, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %199 = load i32, i32* %1, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i32 %197, i32* %202, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_attrs, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_attrs, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %208, i64 %210
  store %struct.TYPE_7__* %207, %struct.TYPE_7__** %211, align 8
  br label %212

212:                                              ; preds = %171
  %213 = load i32, i32* %1, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %1, align 4
  br label %48

215:                                              ; preds = %48
  %216 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_attrs, align 8
  store %struct.TYPE_7__** %216, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @interrupt_stats_attr_group, i32 0, i32 0), align 8
  %217 = load i32, i32* @acpi_kobj, align 4
  %218 = call i32 @sysfs_create_group(i32 %217, %struct.TYPE_5__* @interrupt_stats_attr_group)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  br label %224

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %170, %46, %35
  %223 = call i32 (...) @delete_gpe_attr_array()
  br label %224

224:                                              ; preds = %222, %220, %24, %6
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @delete_gpe_attr_array(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
