; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_fill_dfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_fill_dfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i64* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i64*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_13__ }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"hfcpci_fill_Dfifo f1(%d) f2(%d) z1(f1)(%x)\00", align 1
@D_FREG_MASK = common dso_local global i64 0, align 8
@MAX_D_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"hfcpci_fill_Dfifo more as 14 frames\00", align 1
@D_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"hfcpci_fill_Dfifo count(%ld/%d)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"hfcpci_fill_Dfifo no fifo mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @hfcpci_fill_dfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_fill_dfifo(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %281

16:                                               ; preds = %1
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %281

24:                                               ; preds = %16
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %7, align 8
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @L1_DEB_ISAC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %24
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @D_FREG_MASK, align 8
  %54 = and i64 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46, i32 %57)
  br label %59

59:                                               ; preds = %39, %24
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub i64 %62, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load i32, i32* @MAX_D_FRAMES, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MAX_D_FRAMES, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @L1_DEB_ISAC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %90 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %81
  br label %281

92:                                               ; preds = %76
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @D_FREG_MASK, align 8
  %101 = and i64 %99, %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @D_FREG_MASK, align 8
  %112 = and i64 %110, %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %104, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %92
  %121 = load i32, i32* @D_FIFO_SIZE, align 4
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %92
  %125 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %126 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @L1_DEB_ISAC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %133 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %134 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %131, %124
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %143 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %150 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @L1_DEB_ISAC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %157 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %148
  br label %281

159:                                              ; preds = %140
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %161 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %160, i32 0, i32 1
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %4, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @D_FREG_MASK, align 8
  %172 = and i64 %170, %171
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* @D_FIFO_SIZE, align 4
  %179 = sub nsw i32 %178, 1
  %180 = and i32 %177, %179
  store i32 %180, i32* %5, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  %185 = load i64, i64* @D_FREG_MASK, align 8
  %186 = and i64 %184, %185
  %187 = load i64, i64* @D_FREG_MASK, align 8
  %188 = add i64 %187, 1
  %189 = or i64 %186, %188
  store i64 %189, i64* %10, align 8
  %190 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %191 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  store i64* %194, i64** %8, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @D_FREG_MASK, align 8
  %205 = and i64 %203, %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %197, i64 %209
  store i64* %210, i64** %9, align 8
  %211 = load i32, i32* @D_FIFO_SIZE, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @D_FREG_MASK, align 8
  %219 = and i64 %217, %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %211, %222
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %4, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %159
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %227, %159
  %230 = load i64*, i64** %9, align 8
  %231 = load i64*, i64** %8, align 8
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @memcpy(i64* %230, i64* %231, i32 %232)
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %4, align 4
  %236 = sub nsw i32 %235, %234
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %229
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i64*, i64** %241, align 8
  store i64* %242, i64** %9, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i64*, i64** %8, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  store i64* %246, i64** %8, align 8
  %247 = load i64*, i64** %9, align 8
  %248 = load i64*, i64** %8, align 8
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @memcpy(i64* %247, i64* %248, i32 %249)
  br label %251

251:                                              ; preds = %239, %229
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = load i64, i64* %10, align 8
  %257 = load i64, i64* @D_FREG_MASK, align 8
  %258 = and i64 %256, %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  store i32 %252, i32* %260, align 4
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @D_FREG_MASK, align 8
  %269 = and i64 %267, %268
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  store i32 %261, i32* %271, align 4
  %272 = load i64, i64* %10, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  store i64 %272, i64* %274, align 8
  %275 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %276 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = call i32 @dev_kfree_skb_any(%struct.TYPE_14__* %277)
  %279 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %280 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %279, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %280, align 8
  br label %281

281:                                              ; preds = %251, %158, %91, %23, %15
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
