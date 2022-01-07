; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iSeries_process_Regatta_mainstore_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iSeries_process_Regatta_mainstore_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryBlock = type { i64, i64, i64, i64 }
%struct.IoHriMainStoreSegment5 = type { i32, %struct.IoHriMainStoreArea4* }
%struct.IoHriMainStoreArea4 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@xMsVpd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Mainstore_VPD: Regatta\0A\00", align 1
@MaxSegmentAreas = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"ms_vpd: processing area %2ld  blocks=%ld\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\0A          block %ld absStart=%016lx absEnd=%016lx\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"iSeries_process_mainstore_vpd: too many memory blocks\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (duplicate)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"ms_vpd: %ld sorted memory blocks\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"          Bitmap range: %016lx - %016lx\0A        Absolute range: %016lx - %016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.MemoryBlock*, i64)* @iSeries_process_Regatta_mainstore_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iSeries_process_Regatta_mainstore_vpd(%struct.MemoryBlock* %0, i64 %1) #0 {
  %3 = alloca %struct.MemoryBlock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.IoHriMainStoreSegment5*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.IoHriMainStoreArea4*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.MemoryBlock, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.MemoryBlock, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.MemoryBlock* %0, %struct.MemoryBlock** %3, align 8
  store i64 %1, i64* %4, align 8
  %20 = load i64, i64* @xMsVpd, align 8
  %21 = inttoptr i64 %20 to %struct.IoHriMainStoreSegment5*
  store %struct.IoHriMainStoreSegment5* %21, %struct.IoHriMainStoreSegment5** %5, align 8
  store i64 0, i64* %6, align 8
  %22 = load %struct.IoHriMainStoreSegment5*, %struct.IoHriMainStoreSegment5** %5, align 8
  %23 = getelementptr inbounds %struct.IoHriMainStoreSegment5, %struct.IoHriMainStoreSegment5* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %122, %2
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @MaxSegmentAreas, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %125

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %119

34:                                               ; preds = %30
  %35 = load %struct.IoHriMainStoreSegment5*, %struct.IoHriMainStoreSegment5** %5, align 8
  %36 = getelementptr inbounds %struct.IoHriMainStoreSegment5, %struct.IoHriMainStoreSegment5* %35, i32 0, i32 1
  %37 = load %struct.IoHriMainStoreArea4*, %struct.IoHriMainStoreArea4** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.IoHriMainStoreArea4, %struct.IoHriMainStoreArea4* %37, i64 %38
  store %struct.IoHriMainStoreArea4* %39, %struct.IoHriMainStoreArea4** %10, align 8
  %40 = load %struct.IoHriMainStoreArea4*, %struct.IoHriMainStoreArea4** %10, align 8
  %41 = getelementptr inbounds %struct.IoHriMainStoreArea4, %struct.IoHriMainStoreArea4* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %114, %34
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %117

50:                                               ; preds = %46
  %51 = load %struct.IoHriMainStoreArea4*, %struct.IoHriMainStoreArea4** %10, align 8
  %52 = getelementptr inbounds %struct.IoHriMainStoreArea4, %struct.IoHriMainStoreArea4* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load %struct.IoHriMainStoreArea4*, %struct.IoHriMainStoreArea4** %10, align 8
  %60 = getelementptr inbounds %struct.IoHriMainStoreArea4, %struct.IoHriMainStoreArea4* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %71, i64 %73)
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %90, %50
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %80, i64 %81
  %83 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %93

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %75

93:                                               ; preds = %88, %75
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97
  %104 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %104, i64 %105
  %107 = bitcast %struct.MemoryBlock* %106 to i8*
  %108 = bitcast %struct.MemoryBlock* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 32, i1 false)
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %113

111:                                              ; preds = %93
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %103
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %46

117:                                              ; preds = %46
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %30
  %120 = load i32, i32* %7, align 4
  %121 = shl i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %8, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %8, align 8
  br label %26

125:                                              ; preds = %26
  %126 = load i64, i64* %6, align 8
  %127 = icmp ugt i64 %126, 1
  br i1 %127, label %128, label %184

128:                                              ; preds = %125
  store i64 0, i64* %14, align 8
  br label %129

129:                                              ; preds = %180, %128
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %6, align 8
  %132 = sub i64 %131, 1
  %133 = icmp ult i64 %130, %132
  br i1 %133, label %134, label %183

134:                                              ; preds = %129
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %135, 1
  store i64 %136, i64* %15, align 8
  br label %137

137:                                              ; preds = %176, %134
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %137
  %142 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %143 = load i64, i64* %15, align 8
  %144 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %142, i64 %143
  %145 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %148 = load i64, i64* %15, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %147, i64 %149
  %151 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %146, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %141
  %155 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %155, i64 %156
  %158 = bitcast %struct.MemoryBlock* %16 to i8*
  %159 = bitcast %struct.MemoryBlock* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 32, i1 false)
  %160 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %161 = load i64, i64* %15, align 8
  %162 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %160, i64 %161
  %163 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %164 = load i64, i64* %15, align 8
  %165 = sub i64 %164, 1
  %166 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %163, i64 %165
  %167 = bitcast %struct.MemoryBlock* %162 to i8*
  %168 = bitcast %struct.MemoryBlock* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 32, i1 false)
  %169 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %170 = load i64, i64* %15, align 8
  %171 = sub i64 %170, 1
  %172 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %169, i64 %171
  %173 = bitcast %struct.MemoryBlock* %172 to i8*
  %174 = bitcast %struct.MemoryBlock* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 32, i1 false)
  br label %175

175:                                              ; preds = %154, %141
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %15, align 8
  %178 = add i64 %177, -1
  store i64 %178, i64* %15, align 8
  br label %137

179:                                              ; preds = %137
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %14, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %14, align 8
  br label %129

183:                                              ; preds = %129
  br label %184

184:                                              ; preds = %183, %125
  %185 = load i64, i64* %6, align 8
  %186 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %185)
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %187

187:                                              ; preds = %289, %184
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %292

191:                                              ; preds = %187
  %192 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %193 = load i64, i64* %17, align 8
  %194 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %192, i64 %193
  %195 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %198 = load i64, i64* %17, align 8
  %199 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %197, i64 %198
  %200 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %196, %201
  store i64 %202, i64* %19, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %205 = load i64, i64* %17, align 8
  %206 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %204, i64 %205
  %207 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %206, i32 0, i32 2
  store i64 %203, i64* %207, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i64, i64* %19, align 8
  %210 = add i64 %208, %209
  %211 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %211, i64 %212
  %214 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %213, i32 0, i32 3
  store i64 %210, i64* %214, align 8
  %215 = load i64, i64* %19, align 8
  %216 = load i64, i64* %18, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %18, align 8
  %218 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %219 = load i64, i64* %17, align 8
  %220 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %218, i64 %219
  %221 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %224 = load i64, i64* %17, align 8
  %225 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %223, i64 %224
  %226 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %229 = load i64, i64* %17, align 8
  %230 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %228, i64 %229
  %231 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %234 = load i64, i64* %17, align 8
  %235 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %233, i64 %234
  %236 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0), i64 %222, i64 %227, i64 %232, i64 %237)
  %239 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %240 = load i64, i64* %17, align 8
  %241 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %239, i64 %240
  %242 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = and i64 %243, 4503599627370495
  %245 = trunc i64 %244 to i32
  %246 = call i8* @addr_to_chunk(i32 %245)
  %247 = ptrtoint i8* %246 to i64
  %248 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %249 = load i64, i64* %17, align 8
  %250 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %248, i64 %249
  %251 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %250, i32 0, i32 0
  store i64 %247, i64* %251, align 8
  %252 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %253 = load i64, i64* %17, align 8
  %254 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %252, i64 %253
  %255 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = and i64 %256, 4503599627370495
  %258 = trunc i64 %257 to i32
  %259 = call i8* @addr_to_chunk(i32 %258)
  %260 = ptrtoint i8* %259 to i64
  %261 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %262 = load i64, i64* %17, align 8
  %263 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %261, i64 %262
  %264 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %263, i32 0, i32 1
  store i64 %260, i64* %264, align 8
  %265 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %266 = load i64, i64* %17, align 8
  %267 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %265, i64 %266
  %268 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i8* @addr_to_chunk(i32 %270)
  %272 = ptrtoint i8* %271 to i64
  %273 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %274 = load i64, i64* %17, align 8
  %275 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %273, i64 %274
  %276 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %275, i32 0, i32 2
  store i64 %272, i64* %276, align 8
  %277 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %278 = load i64, i64* %17, align 8
  %279 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %277, i64 %278
  %280 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i8* @addr_to_chunk(i32 %282)
  %284 = ptrtoint i8* %283 to i64
  %285 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %286 = load i64, i64* %17, align 8
  %287 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %285, i64 %286
  %288 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %287, i32 0, i32 3
  store i64 %284, i64* %288, align 8
  br label %289

289:                                              ; preds = %191
  %290 = load i64, i64* %17, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %17, align 8
  br label %187

292:                                              ; preds = %187
  %293 = load i64, i64* %6, align 8
  ret i64 %293
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @addr_to_chunk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
