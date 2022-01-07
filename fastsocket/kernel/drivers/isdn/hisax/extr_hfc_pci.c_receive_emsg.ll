; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_receive_emsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_receive_emsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i64*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, %struct.TYPE_12__ }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"echo_rec_data blocked\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"hfcpci e_rec f1(%d) f2(%d)\00", align 1
@B_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"hfcpci e_rec z1(%x) z2(%x) cnt(%d)\00", align 1
@B_SUB_VAL = common dso_local global i32 0, align 4
@MAX_B_FRAMES = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"hfcpci_empty_echan: incoming packet invalid length %d or crc\00", align 1
@DEB_DLOG_HEX = common dso_local global i32 0, align 4
@MAX_DLOG_SPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"LogEcho: \00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"warning Frame too big (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @receive_emsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_emsg(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i64], align 16
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 5, i32* %5, align 4
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_11__*
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %7, align 8
  br label %33

33:                                               ; preds = %317, %1
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 2
  %39 = call i64 @test_and_set_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %318

44:                                               ; preds = %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %306

52:                                               ; preds = %44
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @L1_DEB_ISAC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %75
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %8, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %68
  %87 = load i32, i32* @B_FIFO_SIZE, align 4
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %68
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @L1_DEB_ISAC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %90
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @B_FIFO_SIZE, align 4
  %117 = load i32, i32* @B_SUB_VAL, align 4
  %118 = add nsw i32 %116, %117
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load i32, i32* @B_FIFO_SIZE, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %109
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* @MAX_B_FRAMES, align 4
  %130 = and i32 %128, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %11, align 8
  %132 = load i32, i32* %3, align 4
  %133 = icmp sgt i32 %132, 259
  br i1 %133, label %148, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %148, label %137

137:                                              ; preds = %134
  %138 = load i64*, i64** %7, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @B_SUB_VAL, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %138, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %137, %134, %124
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %150 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @L1_DEB_WARN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %156, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store i32 %160, i32* %166, align 4
  %167 = load i64, i64* %11, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %285

171:                                              ; preds = %137
  %172 = load i32, i32* %3, align 4
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %3, align 4
  %174 = sub nsw i32 %173, 3
  store i32 %174, i32* %3, align 4
  %175 = getelementptr inbounds [256 x i64], [256 x i64]* %15, i64 0, i64 0
  store i64* %175, i64** %9, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @B_FIFO_SIZE, align 4
  %180 = load i32, i32* @B_SUB_VAL, align 4
  %181 = add nsw i32 %179, %180
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* %3, align 4
  store i32 %184, i32* %13, align 4
  br label %193

185:                                              ; preds = %171
  %186 = load i32, i32* @B_FIFO_SIZE, align 4
  %187 = load i32, i32* @B_SUB_VAL, align 4
  %188 = add nsw i32 %186, %187
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %188, %191
  store i32 %192, i32* %13, align 4
  br label %193

193:                                              ; preds = %185, %183
  %194 = load i64*, i64** %7, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @B_SUB_VAL, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %194, i64 %200
  store i64* %201, i64** %10, align 8
  %202 = load i64*, i64** %9, align 8
  %203 = load i64*, i64** %10, align 8
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @memcpy(i64* %202, i64* %203, i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %3, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* %3, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %193
  %212 = load i32, i32* %13, align 4
  %213 = load i64*, i64** %9, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  store i64* %215, i64** %9, align 8
  %216 = load i64*, i64** %7, align 8
  store i64* %216, i64** %10, align 8
  %217 = load i64*, i64** %9, align 8
  %218 = load i64*, i64** %10, align 8
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @memcpy(i64* %217, i64* %218, i32 %219)
  br label %221

221:                                              ; preds = %211, %193
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = load i64, i64* %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store i32 %222, i32* %228, align 4
  %229 = load i64, i64* %11, align 8
  %230 = trunc i64 %229 to i32
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %234 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @DEB_DLOG_HEX, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %284

239:                                              ; preds = %221
  %240 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %241 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  store i64* %242, i64** %9, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sub nsw i32 %243, 3
  %245 = load i32, i32* @MAX_DLOG_SPACE, align 4
  %246 = sdiv i32 %245, 3
  %247 = sub nsw i32 %246, 10
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %278

249:                                              ; preds = %239
  %250 = load i64*, i64** %9, align 8
  %251 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %251, i64** %9, align 8
  store i64 69, i64* %250, align 8
  %252 = load i64*, i64** %9, align 8
  %253 = getelementptr inbounds i64, i64* %252, i32 1
  store i64* %253, i64** %9, align 8
  store i64 67, i64* %252, align 8
  %254 = load i64*, i64** %9, align 8
  %255 = getelementptr inbounds i64, i64* %254, i32 1
  store i64* %255, i64** %9, align 8
  store i64 72, i64* %254, align 8
  %256 = load i64*, i64** %9, align 8
  %257 = getelementptr inbounds i64, i64* %256, i32 1
  store i64* %257, i64** %9, align 8
  store i64 79, i64* %256, align 8
  %258 = load i64*, i64** %9, align 8
  %259 = getelementptr inbounds i64, i64* %258, i32 1
  store i64* %259, i64** %9, align 8
  store i64 58, i64* %258, align 8
  %260 = load i64*, i64** %9, align 8
  %261 = getelementptr inbounds [256 x i64], [256 x i64]* %15, i64 0, i64 0
  %262 = load i32, i32* %12, align 4
  %263 = sub nsw i32 %262, 3
  %264 = call i32 @QuickHex(i64* %260, i64* %261, i32 %263)
  %265 = load i64*, i64** %9, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  store i64* %267, i64** %9, align 8
  %268 = load i64*, i64** %9, align 8
  %269 = getelementptr inbounds i64, i64* %268, i32 -1
  store i64* %269, i64** %9, align 8
  %270 = load i64*, i64** %9, align 8
  %271 = getelementptr inbounds i64, i64* %270, i32 1
  store i64* %271, i64** %9, align 8
  store i64 10, i64* %270, align 8
  %272 = load i64*, i64** %9, align 8
  store i64 0, i64* %272, align 8
  %273 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %274 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %275 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %274, i32 0, i32 1
  %276 = load i64*, i64** %275, align 8
  %277 = call i32 (%struct.IsdnCardState*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %273, i8* null, i64* %276)
  br label %283

278:                                              ; preds = %239
  %279 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sub nsw i32 %280, 3
  %282 = call i32 (%struct.IsdnCardState*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %278, %249
  br label %284

284:                                              ; preds = %283, %221
  br label %285

285:                                              ; preds = %284, %159
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %288, %291
  store i32 %292, i32* %3, align 4
  %293 = load i32, i32* %3, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %285
  %296 = load i32, i32* @MAX_B_FRAMES, align 4
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %295, %285
  %301 = load i32, i32* %3, align 4
  %302 = icmp sgt i32 %301, 1
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 1, i32* %4, align 4
  br label %305

304:                                              ; preds = %300
  store i32 0, i32* %4, align 4
  br label %305

305:                                              ; preds = %304, %303
  br label %307

306:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %307

307:                                              ; preds = %306, %305
  %308 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %309 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %310 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %309, i32 0, i32 2
  %311 = call i32 @test_and_clear_bit(i32 %308, i32* %310)
  %312 = load i32, i32* %5, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load i32, i32* %4, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %33

318:                                              ; preds = %41, %314, %307
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @QuickHex(i64*, i64*, i32) #1

declare dso_local i32 @HiSax_putstatus(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
