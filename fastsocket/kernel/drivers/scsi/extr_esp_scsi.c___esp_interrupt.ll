; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c___esp_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c___esp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i64, i64, i64, i32, i64, i32, i32* }

@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_FLAG_RESETTING = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@ESP_INTR_SR = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_DIP = common dso_local global i32 0, align 4
@ESP_DOP = common dso_local global i32 0, align 4
@ESP_SELECT_NONE = common dso_local global i64 0, align 8
@ESP_EVENT_STATUS = common dso_local global i64 0, align 8
@ESP_EVENT_DATA_DONE = common dso_local global i64 0, align 8
@ESP_INTR_RSEL = common dso_local global i32 0, align 4
@ESP_STATUS2 = common dso_local global i32 0, align 4
@ESP_STAT2_FEMPTY = common dso_local global i32 0, align 4
@ESP_STAT2_F1BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ESP: intr sreg[%02x] seqreg[%02x] sreg2[%02x] ireg[%02x]\0A\00", align 1
@ESP_INTR_S = common dso_local global i32 0, align 4
@ESP_INTR_SATN = common dso_local global i32 0, align 4
@ESP_INTR_IC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ESP: unexpected IREG %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @__esp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__esp_interrupt(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %6 = load i32, i32* @ESP_STATUS, align 4
  %7 = call i8* @esp_read8(i32 %6)
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.esp*, %struct.esp** %2, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.esp*, %struct.esp** %2, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ESP_FLAG_RESETTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.esp*, %struct.esp** %2, align 8
  %20 = call i64 @esp_check_gross_error(%struct.esp* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %215

23:                                               ; preds = %18
  %24 = load %struct.esp*, %struct.esp** %2, align 8
  %25 = call i32 @esp_check_spur_intr(%struct.esp* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %215

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* @ESP_INTRPT, align 4
  %32 = call i8* @esp_read8(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.esp*, %struct.esp** %2, align 8
  %35 = getelementptr inbounds %struct.esp, %struct.esp* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.esp*, %struct.esp** %2, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ESP_INTR_SR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.esp*, %struct.esp** %2, align 8
  %48 = call i32 @esp_reset_cleanup(%struct.esp* %47)
  %49 = load %struct.esp*, %struct.esp** %2, align 8
  %50 = getelementptr inbounds %struct.esp, %struct.esp* %49, i32 0, i32 9
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.esp*, %struct.esp** %2, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 9
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @complete(i32* %56)
  %58 = load %struct.esp*, %struct.esp** %2, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 9
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %46
  br label %215

61:                                               ; preds = %43
  %62 = load %struct.esp*, %struct.esp** %2, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ESP_STAT_PMASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.esp*, %struct.esp** %2, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FASHME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %129

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ESP_DIP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ESP_DOP, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load %struct.esp*, %struct.esp** %2, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ESP_SELECT_NONE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.esp*, %struct.esp** %2, align 8
  %88 = getelementptr inbounds %struct.esp, %struct.esp* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ESP_EVENT_STATUS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.esp*, %struct.esp** %2, align 8
  %94 = getelementptr inbounds %struct.esp, %struct.esp* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ESP_EVENT_DATA_DONE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %92, %86, %80, %76, %72
  %99 = load %struct.esp*, %struct.esp** %2, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ESP_INTR_RSEL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %98, %92
  %106 = load i32, i32* @ESP_STATUS2, align 4
  %107 = call i8* @esp_read8(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.esp*, %struct.esp** %2, align 8
  %110 = getelementptr inbounds %struct.esp, %struct.esp* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.esp*, %struct.esp** %2, align 8
  %112 = getelementptr inbounds %struct.esp, %struct.esp* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ESP_STAT2_FEMPTY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %105
  %118 = load %struct.esp*, %struct.esp** %2, align 8
  %119 = getelementptr inbounds %struct.esp, %struct.esp* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ESP_STAT2_F1BYTE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117, %105
  %125 = load %struct.esp*, %struct.esp** %2, align 8
  %126 = call i32 @hme_read_fifo(%struct.esp* %125)
  br label %127

127:                                              ; preds = %124, %117
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %61
  %130 = load %struct.esp*, %struct.esp** %2, align 8
  %131 = getelementptr inbounds %struct.esp, %struct.esp* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.esp*, %struct.esp** %2, align 8
  %134 = getelementptr inbounds %struct.esp, %struct.esp* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.esp*, %struct.esp** %2, align 8
  %137 = getelementptr inbounds %struct.esp, %struct.esp* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.esp*, %struct.esp** %2, align 8
  %140 = getelementptr inbounds %struct.esp, %struct.esp* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @esp_log_intr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %141)
  store i32 0, i32* %4, align 4
  %143 = load %struct.esp*, %struct.esp** %2, align 8
  %144 = getelementptr inbounds %struct.esp, %struct.esp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ESP_INTR_S, align 4
  %147 = load i32, i32* @ESP_INTR_SATN, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @ESP_INTR_IC, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %145, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %129
  %154 = load %struct.esp*, %struct.esp** %2, align 8
  %155 = getelementptr inbounds %struct.esp, %struct.esp* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load %struct.esp*, %struct.esp** %2, align 8
  %159 = getelementptr inbounds %struct.esp, %struct.esp* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ESP_INTR_IC, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load %struct.esp*, %struct.esp** %2, align 8
  %166 = call i32 @esp_dump_cmd_log(%struct.esp* %165)
  br label %167

167:                                              ; preds = %164, %153
  %168 = load %struct.esp*, %struct.esp** %2, align 8
  %169 = call i32 @esp_schedule_reset(%struct.esp* %168)
  br label %207

170:                                              ; preds = %129
  %171 = load %struct.esp*, %struct.esp** %2, align 8
  %172 = getelementptr inbounds %struct.esp, %struct.esp* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ESP_INTR_RSEL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %170
  %178 = load %struct.esp*, %struct.esp** %2, align 8
  %179 = getelementptr inbounds %struct.esp, %struct.esp* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ESP_SELECT_NONE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.esp*, %struct.esp** %2, align 8
  %185 = call i32 @esp_finish_select(%struct.esp* %184)
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %183, %177
  br label %206

187:                                              ; preds = %170
  %188 = load %struct.esp*, %struct.esp** %2, align 8
  %189 = getelementptr inbounds %struct.esp, %struct.esp* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ESP_INTR_RSEL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %187
  %195 = load %struct.esp*, %struct.esp** %2, align 8
  %196 = getelementptr inbounds %struct.esp, %struct.esp* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.esp*, %struct.esp** %2, align 8
  %201 = call i32 @esp_finish_select(%struct.esp* %200)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load %struct.esp*, %struct.esp** %2, align 8
  %204 = call i32 @esp_reconnect(%struct.esp* %203)
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %202, %187
  br label %206

206:                                              ; preds = %205, %186
  br label %207

207:                                              ; preds = %206, %167
  br label %208

208:                                              ; preds = %212, %207
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load %struct.esp*, %struct.esp** %2, align 8
  %214 = call i32 @esp_process_event(%struct.esp* %213)
  store i32 %214, i32* %4, align 4
  br label %208

215:                                              ; preds = %22, %28, %60, %208
  ret void
}

declare dso_local i8* @esp_read8(i32) #1

declare dso_local i64 @esp_check_gross_error(%struct.esp*) #1

declare dso_local i32 @esp_check_spur_intr(%struct.esp*) #1

declare dso_local i32 @esp_reset_cleanup(%struct.esp*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hme_read_fifo(%struct.esp*) #1

declare dso_local i32 @esp_log_intr(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @esp_dump_cmd_log(%struct.esp*) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

declare dso_local i32 @esp_finish_select(%struct.esp*) #1

declare dso_local i32 @esp_reconnect(%struct.esp*) #1

declare dso_local i32 @esp_process_event(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
