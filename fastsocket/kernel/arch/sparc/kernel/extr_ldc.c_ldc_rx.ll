; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i64, i64, i32, i32, i32, %struct.ldc_packet*, %struct.TYPE_2__, i32 }
%struct.ldc_packet = type { i32 }
%struct.TYPE_2__ = type { i64 }

@RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\0A\00", align 1
@LDC_MODE_RAW = common dso_local global i64 0, align 8
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i64 0, align 8
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@LDC_FLAG_RESET = common dso_local global i32 0, align 4
@LDC_EVENT_RESET = common dso_local global i32 0, align 4
@LDC_EVENT_DATA_READY = common dso_local global i32 0, align 4
@LDC_PACKET_SIZE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ldc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldc_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ldc_packet*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.ldc_channel*
  store %struct.ldc_channel* %15, %struct.ldc_channel** %5, align 8
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 6
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 1
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %28, i32 0, i32 2
  %30 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %30, i32 0, i32 0
  %32 = call i64 @sun4v_ldc_rx_get_state(i32 %25, i32* %27, i64* %29, i64* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* @RX, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %39 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ldcdbg(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %37, i32 %40, i64 %43)
  store i32 0, i32* %9, align 4
  %45 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %46 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LDC_MODE_RAW, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %2
  %52 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %53 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %59 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %60 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %62 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %63 = call i32 @ldc_set_state(%struct.ldc_channel* %61, i32 %62)
  %64 = load i32, i32* @LDC_EVENT_UP, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %68 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %57, %51, %2
  %71 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %72 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @LDC_FLAG_RESET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %79 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %80 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @__set_rx_head(%struct.ldc_channel* %78, i64 %81)
  br label %220

83:                                               ; preds = %70
  %84 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %85 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %217, %89
  %91 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %92 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i32, i32* @LDC_EVENT_RESET, align 4
  store i32 %97, i32* %10, align 4
  %98 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %99 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @LDC_EVENT_UP, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %105, %90
  %110 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %111 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %115 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %109
  br label %220

123:                                              ; preds = %83
  %124 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %125 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %220

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %218, %130
  %132 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %133 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %137 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %219

140:                                              ; preds = %131
  %141 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %142 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %141, i32 0, i32 7
  %143 = load %struct.ldc_packet*, %struct.ldc_packet** %142, align 8
  %144 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %145 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %148 = sdiv i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %143, i64 %149
  store %struct.ldc_packet* %150, %struct.ldc_packet** %11, align 8
  %151 = load %struct.ldc_packet*, %struct.ldc_packet** %11, align 8
  %152 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %173 [
    i32 130, label %154
    i32 129, label %165
    i32 128, label %169
  ]

154:                                              ; preds = %140
  %155 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %156 = load %struct.ldc_packet*, %struct.ldc_packet** %11, align 8
  %157 = call i32 @process_control_frame(%struct.ldc_channel* %155, %struct.ldc_packet* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %160, %154
  br label %176

165:                                              ; preds = %140
  %166 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %176

169:                                              ; preds = %140
  %170 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %171 = load %struct.ldc_packet*, %struct.ldc_packet** %11, align 8
  %172 = call i32 @process_error_frame(%struct.ldc_channel* %170, %struct.ldc_packet* %171)
  store i32 %172, i32* %13, align 4
  br label %176

173:                                              ; preds = %140
  %174 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %175 = call i32 @ldc_abort(%struct.ldc_channel* %174)
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %173, %169, %165, %164
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %219

180:                                              ; preds = %176
  %181 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %182 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %12, align 8
  %185 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %12, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %12, align 8
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %191 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = icmp eq i64 %189, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %180
  store i64 0, i64* %12, align 8
  br label %198

198:                                              ; preds = %197, %180
  %199 = load i64, i64* %12, align 8
  %200 = trunc i64 %199 to i32
  %201 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %202 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %204 = load i64, i64* %12, align 8
  %205 = call i32 @__set_rx_head(%struct.ldc_channel* %203, i64 %204)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %198
  %209 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %210 = call i32 @ldc_abort(%struct.ldc_channel* %209)
  br label %219

211:                                              ; preds = %198
  %212 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %213 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LDC_HS_COMPLETE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %90

218:                                              ; preds = %211
  br label %131

219:                                              ; preds = %208, %179, %131
  br label %220

220:                                              ; preds = %219, %129, %122, %77
  %221 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %222 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %221, i32 0, i32 6
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  %225 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @send_events(%struct.ldc_channel* %225, i32 %226)
  %228 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %228
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sun4v_ldc_rx_get_state(i32, i32*, i64*, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64, i32, i64) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @__set_rx_head(%struct.ldc_channel*, i64) #1

declare dso_local i32 @process_control_frame(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @process_error_frame(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_events(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
