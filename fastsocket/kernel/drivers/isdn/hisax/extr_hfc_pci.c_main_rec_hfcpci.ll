; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_main_rec_hfcpci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_main_rec_hfcpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i64, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_14__, i32*, %struct.TYPE_14__ }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rec_data %d blocked\00", align 1
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"hfcpci rec %d f1(%d) f2(%d)\00", align 1
@B_FIFO_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"hfcpci rec %d z1(%x) z2(%x) cnt(%d)\00", align 1
@B_RCVBUFREADY = common dso_local global i32 0, align 4
@MAX_B_FRAMES = common dso_local global i64 0, align 8
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @main_rec_hfcpci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_rec_hfcpci(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %12 = load %struct.BCState*, %struct.BCState** %2, align 8
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %12, i32 0, i32 3
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  store %struct.IsdnCardState* %14, %struct.IsdnCardState** %3, align 8
  store i32 5, i32* %7, align 4
  %15 = load %struct.BCState*, %struct.BCState** %2, align 8
  %16 = getelementptr inbounds %struct.BCState, %struct.BCState* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %9, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %10, align 8
  store i32 1, i32* %5, align 4
  br label %62

44:                                               ; preds = %19, %1
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_13__*
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %9, align 8
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_13__*
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %10, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %44, %26
  br label %63

63:                                               ; preds = %237, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = call i64 @test_and_set_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = load %struct.BCState*, %struct.BCState** %2, align 8
  %74 = getelementptr inbounds %struct.BCState, %struct.BCState* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.IsdnCardState*, i8*, i64, ...) @debugl1(%struct.IsdnCardState* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %238

77:                                               ; preds = %63
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %214

85:                                               ; preds = %77
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @L1_DEB_HSCX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %94 = load %struct.BCState*, %struct.BCState** %2, align 8
  %95 = getelementptr inbounds %struct.BCState, %struct.BCState* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.IsdnCardState*, i8*, i64, ...) @debugl1(%struct.IsdnCardState* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %92, %85
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %111
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %11, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %104
  %123 = load i64, i64* @B_FIFO_SIZE, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %122, %104
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  %131 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %132 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @L1_DEB_HSCX, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %128
  %138 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %139 = load %struct.BCState*, %struct.BCState** %2, align 8
  %140 = getelementptr inbounds %struct.BCState, %struct.BCState* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (%struct.IsdnCardState*, i8*, i64, ...) @debugl1(%struct.IsdnCardState* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %141, i32 %144, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %137, %128
  %151 = load %struct.BCState*, %struct.BCState** %2, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call %struct.sk_buff* @hfcpci_empty_fifo(%struct.BCState* %151, %struct.TYPE_14__* %152, i32* %153, i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %8, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.BCState*, %struct.BCState** %2, align 8
  %159 = getelementptr inbounds %struct.BCState, %struct.BCState* %158, i32 0, i32 1
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = call i32 @skb_queue_tail(i32* %159, %struct.sk_buff* %160)
  %162 = load %struct.BCState*, %struct.BCState** %2, align 8
  %163 = load i32, i32* @B_RCVBUFREADY, align 4
  %164 = call i32 @hfcpci_sched_event(%struct.BCState* %162, i32 %163)
  br label %165

165:                                              ; preds = %157, %150
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %168, %171
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load i64, i64* @MAX_B_FRAMES, align 8
  %177 = add nsw i64 %176, 1
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %175, %165
  %183 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %184 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  %194 = icmp sgt i32 %191, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  %196 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @hfcpci_clear_fifo_rx(%struct.IsdnCardState* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %182
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %202 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %200, i32* %208, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp sgt i32 %209, 1
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  store i32 1, i32* %6, align 4
  br label %213

212:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %211
  br label %227

214:                                              ; preds = %77
  %215 = load %struct.BCState*, %struct.BCState** %2, align 8
  %216 = getelementptr inbounds %struct.BCState, %struct.BCState* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @L1_MODE_TRANS, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load %struct.BCState*, %struct.BCState** %2, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @hfcpci_empty_fifo_trans(%struct.BCState* %221, %struct.TYPE_14__* %222, i32* %223)
  store i32 %224, i32* %6, align 4
  br label %226

225:                                              ; preds = %214
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %220
  br label %227

227:                                              ; preds = %226, %213
  %228 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %229 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %230 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %229, i32 0, i32 1
  %231 = call i32 @test_and_clear_bit(i32 %228, i32* %230)
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %63

238:                                              ; preds = %71, %234, %227
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i64, ...) #1

declare dso_local %struct.sk_buff* @hfcpci_empty_fifo(%struct.BCState*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hfcpci_sched_event(%struct.BCState*, i32) #1

declare dso_local i32 @hfcpci_clear_fifo_rx(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @hfcpci_empty_fifo_trans(%struct.BCState*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
