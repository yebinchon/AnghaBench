; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_main_irq_hfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_main_irq_hfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i32, i64, i32, i32, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32, %struct.TYPE_4__, i32 (%struct.IsdnCardState*, i32, i32, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@HFC_CIP = common dso_local global i32 0, align 4
@HFC_F1 = common dso_local global i32 0, align 4
@HFC_REC = common dso_local global i32 0, align 4
@HFC_STATUS = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@HFC_DATA = common dso_local global i32 0, align 4
@HFC_F2 = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hfc rec %d f1(%d) f2(%d)\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@HFC_Z1 = common dso_local global i32 0, align 4
@HFC_Z2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"hfc rec %d z1(%x) z2(%x) cnt(%d)\00", align 1
@B_RCVBUFREADY = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@B_XMTBUFREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_irq_hfc(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %14 = load %struct.BCState*, %struct.BCState** %2, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 6
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %15, align 8
  store %struct.IsdnCardState* %16, %struct.IsdnCardState** %3, align 8
  store i32 5, i32* %12, align 4
  br label %17

17:                                               ; preds = %248, %1
  %18 = load i32, i32* %12, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @HFC_CIP, align 4
  %21 = load i32, i32* @HFC_F1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HFC_REC, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.BCState*, %struct.BCState** %2, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HFC_CHANNEL(i32 %27)
  %29 = or i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 195
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 195
  %38 = icmp ne i32 %31, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %17
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 3
  %42 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %41, align 8
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = load i32, i32* @HFC_STATUS, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 %42(%struct.IsdnCardState* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %49 = call i32 @WaitForBusy(%struct.IsdnCardState* %48)
  br label %50

50:                                               ; preds = %39, %17
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %52 = call i32 @WaitNoBusy(%struct.IsdnCardState* %51)
  store i32 0, i32* %10, align 4
  %53 = load %struct.BCState*, %struct.BCState** %2, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @L1_MODE_HDLC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %50
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 0
  %61 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %60, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = load i32, i32* @HFC_DATA, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 %61(%struct.IsdnCardState* %62, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @HFC_CIP, align 4
  %67 = load i32, i32* @HFC_F2, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @HFC_REC, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.BCState*, %struct.BCState** %2, align 8
  %72 = getelementptr inbounds %struct.BCState, %struct.BCState* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @HFC_CHANNEL(i32 %73)
  %75 = or i32 %70, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %77 = call i32 @WaitNoBusy(%struct.IsdnCardState* %76)
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %79 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %78, i32 0, i32 0
  %80 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %79, align 8
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %82 = load i32, i32* @HFC_DATA, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 %80(%struct.IsdnCardState* %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %58
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @L1_DEB_HSCX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %97 = load %struct.BCState*, %struct.BCState** %2, align 8
  %98 = getelementptr inbounds %struct.BCState, %struct.BCState* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct.IsdnCardState*, i8*, i32, i32, i32, ...) @debugl1(%struct.IsdnCardState* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %88
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %58
  br label %105

105:                                              ; preds = %104, %50
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load %struct.BCState*, %struct.BCState** %2, align 8
  %110 = getelementptr inbounds %struct.BCState, %struct.BCState* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @L1_MODE_TRANS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %194

114:                                              ; preds = %108, %105
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %116 = call i32 @WaitForBusy(%struct.IsdnCardState* %115)
  %117 = load %struct.BCState*, %struct.BCState** %2, align 8
  %118 = load i32, i32* @HFC_Z1, align 4
  %119 = load i32, i32* @HFC_REC, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.BCState*, %struct.BCState** %2, align 8
  %122 = getelementptr inbounds %struct.BCState, %struct.BCState* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @HFC_CHANNEL(i32 %123)
  %125 = or i32 %120, %124
  %126 = call i32 @ReadZReg(%struct.BCState* %117, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load %struct.BCState*, %struct.BCState** %2, align 8
  %128 = load i32, i32* @HFC_Z2, align 4
  %129 = load i32, i32* @HFC_REC, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.BCState*, %struct.BCState** %2, align 8
  %132 = getelementptr inbounds %struct.BCState, %struct.BCState* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @HFC_CHANNEL(i32 %133)
  %135 = or i32 %130, %134
  %136 = call i32 @ReadZReg(%struct.BCState* %127, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %114
  %143 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %144 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %142, %114
  %153 = load %struct.BCState*, %struct.BCState** %2, align 8
  %154 = getelementptr inbounds %struct.BCState, %struct.BCState* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @L1_MODE_HDLC, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %158, %152
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  %164 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %165 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @L1_DEB_HSCX, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %161
  %171 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %172 = load %struct.BCState*, %struct.BCState** %2, align 8
  %173 = getelementptr inbounds %struct.BCState, %struct.BCState* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 (%struct.IsdnCardState*, i8*, i32, i32, i32, ...) @debugl1(%struct.IsdnCardState* %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %170, %161
  %180 = load %struct.BCState*, %struct.BCState** %2, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call %struct.sk_buff* @hfc_empty_fifo(%struct.BCState* %180, i32 %181)
  store %struct.sk_buff* %182, %struct.sk_buff** %13, align 8
  %183 = icmp ne %struct.sk_buff* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.BCState*, %struct.BCState** %2, align 8
  %186 = getelementptr inbounds %struct.BCState, %struct.BCState* %185, i32 0, i32 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %188 = call i32 @skb_queue_tail(i32* %186, %struct.sk_buff* %187)
  %189 = load %struct.BCState*, %struct.BCState** %2, align 8
  %190 = load i32, i32* @B_RCVBUFREADY, align 4
  %191 = call i32 @schedule_event(%struct.BCState* %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %179
  br label %193

193:                                              ; preds = %192, %158
  store i32 1, i32* %10, align 4
  br label %194

194:                                              ; preds = %193, %108
  %195 = load %struct.BCState*, %struct.BCState** %2, align 8
  %196 = getelementptr inbounds %struct.BCState, %struct.BCState* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  store i32 1, i32* %11, align 4
  %200 = load i32, i32* @BC_FLG_BUSY, align 4
  %201 = load %struct.BCState*, %struct.BCState** %2, align 8
  %202 = getelementptr inbounds %struct.BCState, %struct.BCState* %201, i32 0, i32 1
  %203 = call i32 @test_and_set_bit(i32 %200, i32* %202)
  %204 = load %struct.BCState*, %struct.BCState** %2, align 8
  %205 = call i32 @hfc_fill_fifo(%struct.BCState* %204)
  %206 = load i32, i32* @BC_FLG_BUSY, align 4
  %207 = load %struct.BCState*, %struct.BCState** %2, align 8
  %208 = getelementptr inbounds %struct.BCState, %struct.BCState* %207, i32 0, i32 1
  %209 = call i64 @test_bit(i32 %206, i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %211, %199
  br label %239

213:                                              ; preds = %194
  %214 = load %struct.BCState*, %struct.BCState** %2, align 8
  %215 = getelementptr inbounds %struct.BCState, %struct.BCState* %214, i32 0, i32 2
  %216 = call i64 @skb_dequeue(i32* %215)
  %217 = load %struct.BCState*, %struct.BCState** %2, align 8
  %218 = getelementptr inbounds %struct.BCState, %struct.BCState* %217, i32 0, i32 3
  store i64 %216, i64* %218, align 8
  %219 = icmp ne i64 %216, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %213
  store i32 1, i32* %11, align 4
  %221 = load i32, i32* @BC_FLG_BUSY, align 4
  %222 = load %struct.BCState*, %struct.BCState** %2, align 8
  %223 = getelementptr inbounds %struct.BCState, %struct.BCState* %222, i32 0, i32 1
  %224 = call i32 @test_and_set_bit(i32 %221, i32* %223)
  %225 = load %struct.BCState*, %struct.BCState** %2, align 8
  %226 = call i32 @hfc_fill_fifo(%struct.BCState* %225)
  %227 = load i32, i32* @BC_FLG_BUSY, align 4
  %228 = load %struct.BCState*, %struct.BCState** %2, align 8
  %229 = getelementptr inbounds %struct.BCState, %struct.BCState* %228, i32 0, i32 1
  %230 = call i64 @test_bit(i32 %227, i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %220
  store i32 0, i32* %11, align 4
  br label %233

233:                                              ; preds = %232, %220
  br label %238

234:                                              ; preds = %213
  store i32 0, i32* %11, align 4
  %235 = load %struct.BCState*, %struct.BCState** %2, align 8
  %236 = load i32, i32* @B_XMTBUFREADY, align 4
  %237 = call i32 @schedule_event(%struct.BCState* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %233
  br label %239

239:                                              ; preds = %238, %212
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %17

249:                                              ; preds = %245, %242
  ret void
}

declare dso_local i32 @HFC_CHANNEL(i32) #1

declare dso_local i32 @WaitForBusy(%struct.IsdnCardState*) #1

declare dso_local i32 @WaitNoBusy(%struct.IsdnCardState*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ReadZReg(%struct.BCState*, i32) #1

declare dso_local %struct.sk_buff* @hfc_empty_fifo(%struct.BCState*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hfc_fill_fifo(%struct.BCState*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
