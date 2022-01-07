; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.BCState = type { i64, i32, i32, i32, %struct.TYPE_21__*, i32, %struct.TYPE_14__*, i64, i32, %struct.IsdnCardState* }
%struct.TYPE_21__ = type { i32, i64*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.IsdnCardState = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i16, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64*, i64*, %struct.TYPE_20__, %struct.TYPE_20__ }

@L1_MODE_TRANS = common dso_local global i64 0, align 8
@MAX_B_FRAMES = common dso_local global i64 0, align 8
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"hfcpci_fill_fifo_trans %d z1(%x) z2(%x)\00", align 1
@B_FIFO_SIZE = common dso_local global i32 0, align 4
@HFCPCI_BTRANS_THRESHOLD = common dso_local global i32 0, align 4
@B_SUB_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"hfcpci_fill_fifo_trans %d frame length %d discarded\00", align 1
@FLG_LLI_L1WAKEUP = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@B_ACKPENDING = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"hfcpci_fill_fifo_hdlc %d f1(%d) f2(%d) z1(f1)(%x)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"hfcpci_fill_Bfifo more as 14 frames\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"hfcpci_fill_fifo %d count(%ld/%d),%lx\00", align 1
@current = common dso_local global %struct.TYPE_12__* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"hfcpci_fill_fifo no fifo mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @hfcpci_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %17 = load %struct.BCState*, %struct.BCState** %2, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 9
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %18, align 8
  store %struct.IsdnCardState* %19, %struct.IsdnCardState** %3, align 8
  %20 = load %struct.BCState*, %struct.BCState** %2, align 8
  %21 = getelementptr inbounds %struct.BCState, %struct.BCState* %20, i32 0, i32 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = icmp ne %struct.TYPE_21__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %609

25:                                               ; preds = %1
  %26 = load %struct.BCState*, %struct.BCState** %2, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %609

33:                                               ; preds = %25
  %34 = load %struct.BCState*, %struct.BCState** %2, align 8
  %35 = getelementptr inbounds %struct.BCState, %struct.BCState* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %38
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_19__*
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %8, align 8
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_19__*
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %9, align 8
  br label %81

63:                                               ; preds = %38, %33
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %65 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_19__*
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %8, align 8
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_19__*
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %9, align 8
  br label %81

81:                                               ; preds = %63, %45
  %82 = load %struct.BCState*, %struct.BCState** %2, align 8
  %83 = getelementptr inbounds %struct.BCState, %struct.BCState* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @L1_MODE_TRANS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %312

87:                                               ; preds = %81
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load i64, i64* @MAX_B_FRAMES, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store i16* %93, i16** %13, align 8
  %94 = load i16*, i16** %13, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 1
  store i16* %95, i16** %14, align 8
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %97 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @L1_DEB_HSCX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %87
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %104 = load %struct.BCState*, %struct.BCState** %2, align 8
  %105 = getelementptr inbounds %struct.BCState, %struct.BCState* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i16*, i16** %13, align 8
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = load i16*, i16** %14, align 8
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %106, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %102, %87
  %115 = load i16*, i16** %14, align 8
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16*, i16** %13, align 8
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  %121 = sub nsw i32 %117, %120
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %114
  %125 = load i32, i32* @B_FIFO_SIZE, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %114
  %129 = load i32, i32* @B_FIFO_SIZE, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %297, %128
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @HFCPCI_BTRANS_THRESHOLD, align 4
  %135 = mul nsw i32 2, %134
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.BCState*, %struct.BCState** %2, align 8
  %139 = getelementptr inbounds %struct.BCState, %struct.BCState* %138, i32 0, i32 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = icmp ne %struct.TYPE_21__* %140, null
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ false, %132 ], [ %141, %137 ]
  br i1 %143, label %144, label %307

144:                                              ; preds = %142
  %145 = load %struct.BCState*, %struct.BCState** %2, align 8
  %146 = getelementptr inbounds %struct.BCState, %struct.BCState* %145, i32 0, i32 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @B_FIFO_SIZE, align 4
  %151 = load i32, i32* %5, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %240

154:                                              ; preds = %144
  %155 = load %struct.BCState*, %struct.BCState** %2, align 8
  %156 = getelementptr inbounds %struct.BCState, %struct.BCState* %155, i32 0, i32 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %6, align 4
  %160 = load i16*, i16** %13, align 8
  %161 = load i16, i16* %160, align 2
  %162 = zext i16 %161 to i32
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %162, %163
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @B_FIFO_SIZE, align 4
  %167 = load i32, i32* @B_SUB_VAL, align 4
  %168 = add nsw i32 %166, %167
  %169 = icmp sge i32 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %154
  %171 = load i32, i32* @B_FIFO_SIZE, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %170, %154
  %175 = load %struct.BCState*, %struct.BCState** %2, align 8
  %176 = getelementptr inbounds %struct.BCState, %struct.BCState* %175, i32 0, i32 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load i64*, i64** %178, align 8
  store i64* %179, i64** %11, align 8
  %180 = load i64*, i64** %9, align 8
  %181 = load i16*, i16** %13, align 8
  %182 = load i16, i16* %181, align 2
  %183 = zext i16 %182 to i32
  %184 = load i32, i32* @B_SUB_VAL, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %180, i64 %186
  store i64* %187, i64** %12, align 8
  %188 = load i32, i32* @B_FIFO_SIZE, align 4
  %189 = load i32, i32* @B_SUB_VAL, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i16*, i16** %13, align 8
  %192 = load i16, i16* %191, align 2
  %193 = zext i16 %192 to i32
  %194 = sub nsw i32 %190, %193
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %174
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %198, %174
  %201 = load i64*, i64** %12, align 8
  %202 = load i64*, i64** %11, align 8
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @memcpy(i64* %201, i64* %202, i32 %203)
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %6, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %200
  %211 = load i64*, i64** %9, align 8
  store i64* %211, i64** %12, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i64*, i64** %11, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  store i64* %215, i64** %11, align 8
  %216 = load i64*, i64** %12, align 8
  %217 = load i64*, i64** %11, align 8
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @memcpy(i64* %216, i64* %217, i32 %218)
  br label %220

220:                                              ; preds = %210, %200
  %221 = load %struct.BCState*, %struct.BCState** %2, align 8
  %222 = getelementptr inbounds %struct.BCState, %struct.BCState* %221, i32 0, i32 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.BCState*, %struct.BCState** %2, align 8
  %227 = getelementptr inbounds %struct.BCState, %struct.BCState* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.BCState*, %struct.BCState** %2, align 8
  %231 = getelementptr inbounds %struct.BCState, %struct.BCState* %230, i32 0, i32 4
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %7, align 4
  %238 = trunc i32 %237 to i16
  %239 = load i16*, i16** %13, align 8
  store i16 %238, i16* %239, align 2
  br label %259

240:                                              ; preds = %144
  %241 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %242 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @L1_DEB_HSCX, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %240
  %248 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %249 = load %struct.BCState*, %struct.BCState** %2, align 8
  %250 = getelementptr inbounds %struct.BCState, %struct.BCState* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.BCState*, %struct.BCState** %2, align 8
  %253 = getelementptr inbounds %struct.BCState, %struct.BCState* %252, i32 0, i32 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %248, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %251, i32 %256)
  br label %258

258:                                              ; preds = %247, %240
  br label %259

259:                                              ; preds = %258, %220
  %260 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %261 = load %struct.BCState*, %struct.BCState** %2, align 8
  %262 = getelementptr inbounds %struct.BCState, %struct.BCState* %261, i32 0, i32 6
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = call i64 @test_bit(i32 %260, i32* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %297

268:                                              ; preds = %259
  %269 = load i64, i64* @PACKET_NOACK, align 8
  %270 = load %struct.BCState*, %struct.BCState** %2, align 8
  %271 = getelementptr inbounds %struct.BCState, %struct.BCState* %270, i32 0, i32 4
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %269, %274
  br i1 %275, label %276, label %297

276:                                              ; preds = %268
  %277 = load %struct.BCState*, %struct.BCState** %2, align 8
  %278 = getelementptr inbounds %struct.BCState, %struct.BCState* %277, i32 0, i32 5
  %279 = load i32, i32* %15, align 4
  %280 = call i32 @spin_lock_irqsave(i32* %278, i32 %279)
  %281 = load %struct.BCState*, %struct.BCState** %2, align 8
  %282 = getelementptr inbounds %struct.BCState, %struct.BCState* %281, i32 0, i32 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.BCState*, %struct.BCState** %2, align 8
  %287 = getelementptr inbounds %struct.BCState, %struct.BCState* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.BCState*, %struct.BCState** %2, align 8
  %291 = getelementptr inbounds %struct.BCState, %struct.BCState* %290, i32 0, i32 5
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @spin_unlock_irqrestore(i32* %291, i32 %292)
  %294 = load %struct.BCState*, %struct.BCState** %2, align 8
  %295 = load i32, i32* @B_ACKPENDING, align 4
  %296 = call i32 @schedule_event(%struct.BCState* %294, i32 %295)
  br label %297

297:                                              ; preds = %276, %268, %259
  %298 = load %struct.BCState*, %struct.BCState** %2, align 8
  %299 = getelementptr inbounds %struct.BCState, %struct.BCState* %298, i32 0, i32 4
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %299, align 8
  %301 = call i32 @dev_kfree_skb_any(%struct.TYPE_21__* %300)
  %302 = load %struct.BCState*, %struct.BCState** %2, align 8
  %303 = getelementptr inbounds %struct.BCState, %struct.BCState* %302, i32 0, i32 8
  %304 = call %struct.TYPE_21__* @skb_dequeue(i32* %303)
  %305 = load %struct.BCState*, %struct.BCState** %2, align 8
  %306 = getelementptr inbounds %struct.BCState, %struct.BCState* %305, i32 0, i32 4
  store %struct.TYPE_21__* %304, %struct.TYPE_21__** %306, align 8
  br label %132

307:                                              ; preds = %142
  %308 = load i32, i32* @BC_FLG_BUSY, align 4
  %309 = load %struct.BCState*, %struct.BCState** %2, align 8
  %310 = getelementptr inbounds %struct.BCState, %struct.BCState* %309, i32 0, i32 3
  %311 = call i32 @test_and_clear_bit(i32 %308, i32* %310)
  br label %609

312:                                              ; preds = %81
  %313 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %314 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @L1_DEB_HSCX, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %341

319:                                              ; preds = %312
  %320 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %321 = load %struct.BCState*, %struct.BCState** %2, align 8
  %322 = getelementptr inbounds %struct.BCState, %struct.BCState* %321, i32 0, i32 7
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %331, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 0
  %338 = load i16, i16* %337, align 4
  %339 = zext i16 %338 to i32
  %340 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %320, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %323, i64 %326, i32 %329, i32 %339)
  br label %341

341:                                              ; preds = %319, %312
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = sub i64 %344, %348
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %5, align 4
  %351 = load i32, i32* %5, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %341
  %354 = load i64, i64* @MAX_B_FRAMES, align 8
  %355 = add i64 %354, 1
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = add i64 %357, %355
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %5, align 4
  br label %360

360:                                              ; preds = %353, %341
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = load i64, i64* @MAX_B_FRAMES, align 8
  %364 = sub i64 %363, 1
  %365 = icmp ugt i64 %362, %364
  br i1 %365, label %366, label %377

366:                                              ; preds = %360
  %367 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %368 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @L1_DEB_HSCX, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %366
  %374 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %375 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %366
  br label %609

377:                                              ; preds = %360
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %379, align 8
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 2
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %389, align 8
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  %396 = load i16, i16* %395, align 4
  %397 = zext i16 %396 to i32
  %398 = sub nsw i32 %387, %397
  %399 = sub nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  %400 = load i32, i32* %6, align 4
  %401 = icmp sle i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %377
  %403 = load i32, i32* @B_FIFO_SIZE, align 4
  %404 = load i32, i32* %6, align 4
  %405 = add nsw i32 %404, %403
  store i32 %405, i32* %6, align 4
  br label %406

406:                                              ; preds = %402, %377
  %407 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %408 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @L1_DEB_HSCX, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %428

413:                                              ; preds = %406
  %414 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %415 = load %struct.BCState*, %struct.BCState** %2, align 8
  %416 = getelementptr inbounds %struct.BCState, %struct.BCState* %415, i32 0, i32 7
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.BCState*, %struct.BCState** %2, align 8
  %419 = getelementptr inbounds %struct.BCState, %struct.BCState* %418, i32 0, i32 4
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %414, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %417, i32 %422, i32 %423, i32 %426)
  br label %428

428:                                              ; preds = %413, %406
  %429 = load i32, i32* %6, align 4
  %430 = load %struct.BCState*, %struct.BCState** %2, align 8
  %431 = getelementptr inbounds %struct.BCState, %struct.BCState* %430, i32 0, i32 4
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp slt i32 %429, %434
  br i1 %435, label %436, label %447

436:                                              ; preds = %428
  %437 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %438 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @L1_DEB_HSCX, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %436
  %444 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %445 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %444, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %446

446:                                              ; preds = %443, %436
  br label %609

447:                                              ; preds = %428
  %448 = load %struct.BCState*, %struct.BCState** %2, align 8
  %449 = getelementptr inbounds %struct.BCState, %struct.BCState* %448, i32 0, i32 4
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  store i32 %452, i32* %6, align 4
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 2
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %454, align 8
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 0
  %461 = load i16, i16* %460, align 4
  %462 = zext i16 %461 to i32
  %463 = load i32, i32* %6, align 4
  %464 = add nsw i32 %462, %463
  store i32 %464, i32* %7, align 4
  %465 = load i32, i32* %7, align 4
  %466 = load i32, i32* @B_FIFO_SIZE, align 4
  %467 = load i32, i32* @B_SUB_VAL, align 4
  %468 = add nsw i32 %466, %467
  %469 = icmp sge i32 %465, %468
  br i1 %469, label %470, label %474

470:                                              ; preds = %447
  %471 = load i32, i32* @B_FIFO_SIZE, align 4
  %472 = load i32, i32* %7, align 4
  %473 = sub nsw i32 %472, %471
  store i32 %473, i32* %7, align 4
  br label %474

474:                                              ; preds = %470, %447
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = add i64 %477, 1
  %479 = load i64, i64* @MAX_B_FRAMES, align 8
  %480 = and i64 %478, %479
  store i64 %480, i64* %10, align 8
  %481 = load %struct.BCState*, %struct.BCState** %2, align 8
  %482 = getelementptr inbounds %struct.BCState, %struct.BCState* %481, i32 0, i32 4
  %483 = load %struct.TYPE_21__*, %struct.TYPE_21__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 1
  %485 = load i64*, i64** %484, align 8
  store i64* %485, i64** %11, align 8
  %486 = load i64*, i64** %9, align 8
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 2
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %488, align 8
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 0
  %495 = load i16, i16* %494, align 4
  %496 = zext i16 %495 to i32
  %497 = load i32, i32* @B_SUB_VAL, align 4
  %498 = sub nsw i32 %496, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i64, i64* %486, i64 %499
  store i64* %500, i64** %12, align 8
  %501 = load i32, i32* @B_FIFO_SIZE, align 4
  %502 = load i32, i32* @B_SUB_VAL, align 4
  %503 = add nsw i32 %501, %502
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_18__*, %struct.TYPE_18__** %505, align 8
  %507 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 0
  %512 = load i16, i16* %511, align 4
  %513 = zext i16 %512 to i32
  %514 = sub nsw i32 %503, %513
  store i32 %514, i32* %4, align 4
  %515 = load i32, i32* %4, align 4
  %516 = load i32, i32* %6, align 4
  %517 = icmp sgt i32 %515, %516
  br i1 %517, label %518, label %520

518:                                              ; preds = %474
  %519 = load i32, i32* %6, align 4
  store i32 %519, i32* %4, align 4
  br label %520

520:                                              ; preds = %518, %474
  %521 = load i64*, i64** %12, align 8
  %522 = load i64*, i64** %11, align 8
  %523 = load i32, i32* %4, align 4
  %524 = call i32 @memcpy(i64* %521, i64* %522, i32 %523)
  %525 = load i32, i32* %4, align 4
  %526 = load i32, i32* %6, align 4
  %527 = sub nsw i32 %526, %525
  store i32 %527, i32* %6, align 4
  %528 = load i32, i32* %6, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %540

530:                                              ; preds = %520
  %531 = load i64*, i64** %9, align 8
  store i64* %531, i64** %12, align 8
  %532 = load i32, i32* %4, align 4
  %533 = load i64*, i64** %11, align 8
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i64, i64* %533, i64 %534
  store i64* %535, i64** %11, align 8
  %536 = load i64*, i64** %12, align 8
  %537 = load i64*, i64** %11, align 8
  %538 = load i32, i32* %6, align 4
  %539 = call i32 @memcpy(i64* %536, i64* %537, i32 %538)
  br label %540

540:                                              ; preds = %530, %520
  %541 = load %struct.BCState*, %struct.BCState** %2, align 8
  %542 = getelementptr inbounds %struct.BCState, %struct.BCState* %541, i32 0, i32 4
  %543 = load %struct.TYPE_21__*, %struct.TYPE_21__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.BCState*, %struct.BCState** %2, align 8
  %547 = getelementptr inbounds %struct.BCState, %struct.BCState* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = sub nsw i32 %548, %545
  store i32 %549, i32* %547, align 8
  %550 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %551 = load %struct.BCState*, %struct.BCState** %2, align 8
  %552 = getelementptr inbounds %struct.BCState, %struct.BCState* %551, i32 0, i32 6
  %553 = load %struct.TYPE_14__*, %struct.TYPE_14__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %554, i32 0, i32 0
  %556 = call i64 @test_bit(i32 %550, i32* %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %587

558:                                              ; preds = %540
  %559 = load i64, i64* @PACKET_NOACK, align 8
  %560 = load %struct.BCState*, %struct.BCState** %2, align 8
  %561 = getelementptr inbounds %struct.BCState, %struct.BCState* %560, i32 0, i32 4
  %562 = load %struct.TYPE_21__*, %struct.TYPE_21__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %562, i32 0, i32 2
  %564 = load i64, i64* %563, align 8
  %565 = icmp ne i64 %559, %564
  br i1 %565, label %566, label %587

566:                                              ; preds = %558
  %567 = load %struct.BCState*, %struct.BCState** %2, align 8
  %568 = getelementptr inbounds %struct.BCState, %struct.BCState* %567, i32 0, i32 5
  %569 = load i32, i32* %16, align 4
  %570 = call i32 @spin_lock_irqsave(i32* %568, i32 %569)
  %571 = load %struct.BCState*, %struct.BCState** %2, align 8
  %572 = getelementptr inbounds %struct.BCState, %struct.BCState* %571, i32 0, i32 4
  %573 = load %struct.TYPE_21__*, %struct.TYPE_21__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = load %struct.BCState*, %struct.BCState** %2, align 8
  %577 = getelementptr inbounds %struct.BCState, %struct.BCState* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %578, %575
  store i32 %579, i32* %577, align 4
  %580 = load %struct.BCState*, %struct.BCState** %2, align 8
  %581 = getelementptr inbounds %struct.BCState, %struct.BCState* %580, i32 0, i32 5
  %582 = load i32, i32* %16, align 4
  %583 = call i32 @spin_unlock_irqrestore(i32* %581, i32 %582)
  %584 = load %struct.BCState*, %struct.BCState** %2, align 8
  %585 = load i32, i32* @B_ACKPENDING, align 4
  %586 = call i32 @schedule_event(%struct.BCState* %584, i32 %585)
  br label %587

587:                                              ; preds = %566, %558, %540
  %588 = load i32, i32* %7, align 4
  %589 = trunc i32 %588 to i16
  %590 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %591 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %590, i32 0, i32 2
  %592 = load %struct.TYPE_18__*, %struct.TYPE_18__** %591, align 8
  %593 = load i64, i64* %10, align 8
  %594 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %592, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %594, i32 0, i32 0
  store i16 %589, i16* %595, align 4
  %596 = load i64, i64* %10, align 8
  %597 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %597, i32 0, i32 0
  store i64 %596, i64* %598, align 8
  %599 = load %struct.BCState*, %struct.BCState** %2, align 8
  %600 = getelementptr inbounds %struct.BCState, %struct.BCState* %599, i32 0, i32 4
  %601 = load %struct.TYPE_21__*, %struct.TYPE_21__** %600, align 8
  %602 = call i32 @dev_kfree_skb_any(%struct.TYPE_21__* %601)
  %603 = load %struct.BCState*, %struct.BCState** %2, align 8
  %604 = getelementptr inbounds %struct.BCState, %struct.BCState* %603, i32 0, i32 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %604, align 8
  %605 = load i32, i32* @BC_FLG_BUSY, align 4
  %606 = load %struct.BCState*, %struct.BCState** %2, align 8
  %607 = getelementptr inbounds %struct.BCState, %struct.BCState* %606, i32 0, i32 3
  %608 = call i32 @test_and_clear_bit(i32 %605, i32* %607)
  br label %609

609:                                              ; preds = %587, %446, %376, %307, %32, %24
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @skb_dequeue(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
