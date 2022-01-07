; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_prog_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_prog_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%union.ns_mem = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"prog_page: writing page %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"prog_page: read error for page %d ret %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"prog_page: write error for page %d ret %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"prog_page: allocating page %d\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"prog_page: error allocating memory for page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*, i32)* @prog_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_page(%struct.nandsim* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nandsim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ns_mem*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %14 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %192

17:                                               ; preds = %2
  %18 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %19 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @NS_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %24 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %27 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %33 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %39 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %44 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %42, %46
  %48 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %49 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %47, %51
  %53 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %54 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %59 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %62 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %17
  store i32 1, i32* %12, align 4
  %69 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %70 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %73 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memset(i32* %71, i32 255, i32 %75)
  br label %98

77:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %80 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %81 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @read_file(%struct.nandsim* %79, i64 %82, i32* %83, i32 %84, i32* %10)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %91 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 (i8*, i64, ...) @NS_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %95)
  store i32 -1, i32* %3, align 4
  br label %257

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %68
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %105 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %99

121:                                              ; preds = %99
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %170

124:                                              ; preds = %121
  %125 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %126 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %131 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %129, %133
  store i32 %134, i32* %10, align 4
  %135 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %136 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %137 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %140 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %143 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @write_file(%struct.nandsim* %135, i64 %138, i32* %141, i32 %145, i32* %10)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %149 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %147, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %124
  %154 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %155 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = call i32 (i8*, i64, ...) @NS_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %157, i64 %159)
  store i32 -1, i32* %3, align 4
  br label %257

161:                                              ; preds = %124
  %162 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %163 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %166 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  store i32 1, i32* %169, align 4
  br label %191

170:                                              ; preds = %121
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %10, align 4
  %172 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %173 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %174 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @write_file(%struct.nandsim* %172, i64 %175, i32* %176, i32 %177, i32* %10)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %170
  %183 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %184 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = call i32 (i8*, i64, ...) @NS_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %186, i64 %188)
  store i32 -1, i32* %3, align 4
  br label %257

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190, %161
  store i32 0, i32* %3, align 4
  br label %257

192:                                              ; preds = %2
  %193 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %194 = call %union.ns_mem* @NS_GET_PAGE(%struct.nandsim* %193)
  store %union.ns_mem* %194, %union.ns_mem** %7, align 8
  %195 = load %union.ns_mem*, %union.ns_mem** %7, align 8
  %196 = bitcast %union.ns_mem* %195 to i32**
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %231

199:                                              ; preds = %192
  %200 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %201 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @NS_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %203)
  %205 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %206 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @GFP_NOFS, align 4
  %209 = call i32* @kmem_cache_alloc(i32 %207, i32 %208)
  %210 = load %union.ns_mem*, %union.ns_mem** %7, align 8
  %211 = bitcast %union.ns_mem* %210 to i32**
  store i32* %209, i32** %211, align 8
  %212 = load %union.ns_mem*, %union.ns_mem** %7, align 8
  %213 = bitcast %union.ns_mem* %212 to i32**
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %199
  %217 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %218 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, i64, ...) @NS_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %220)
  store i32 -1, i32* %3, align 4
  br label %257

222:                                              ; preds = %199
  %223 = load %union.ns_mem*, %union.ns_mem** %7, align 8
  %224 = bitcast %union.ns_mem* %223 to i32**
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %227 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @memset(i32* %225, i32 255, i32 %229)
  br label %231

231:                                              ; preds = %222, %192
  %232 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %233 = call i32* @NS_PAGE_BYTE_OFF(%struct.nandsim* %232)
  store i32* %233, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %253, %231
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %234
  %239 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %240 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, %246
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %238
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %6, align 4
  br label %234

256:                                              ; preds = %234
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %216, %191, %182, %153, %89
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @NS_DBG(i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @read_file(%struct.nandsim*, i64, i32*, i32, i32*) #1

declare dso_local i32 @NS_ERR(i8*, i64, ...) #1

declare dso_local i32 @write_file(%struct.nandsim*, i64, i32*, i32, i32*) #1

declare dso_local %union.ns_mem* @NS_GET_PAGE(%struct.nandsim*) #1

declare dso_local i32* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32* @NS_PAGE_BYTE_OFF(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
