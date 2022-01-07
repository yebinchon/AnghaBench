; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_set_part_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_set_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.ipath_portdata = type { i32*, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@IPATH_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"p%u try to set pkey %hx, current keys %hx:%x %hx:%x %hx:%x %hx:%x\0A\00", align 1
@PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"p%u tries to set key 0, not allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"p%u tries to set same pkey (%x) more than once\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"All pkeys for port %u already in use, can't set %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"p%u set key %x matches #%d, count now %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Lost race, count was 0, after dec, it's %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"port %u, all pkeys already in use, can't set %x\0A\00", align 1
@ipath_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"p%u set key %x in #%d, portidx %d, new pkey reg %llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"port %u, all pkeys already in use 2nd pass, can't set %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*, i32)* @ipath_set_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_set_part_key(%struct.ipath_portdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_portdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %13, i32 0, i32 2
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %14, align 8
  store %struct.ipath_devdata* %15, %struct.ipath_devdata** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 32767
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IPATH_DEFAULT_P_KEY, align 4
  %20 = and i32 %19, 32767
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %335

23:                                               ; preds = %2
  %24 = load i32, i32* @VERBOSE, align 4
  %25 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @atomic_read(i32* %37)
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = call i32 @atomic_read(i32* %57)
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = call i32 @atomic_read(i32* %67)
  %69 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %33, i32 %38, i32 %43, i32 %48, i32 %53, i32 %58, i32 %63, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %23
  %73 = load i32, i32* @PROC, align 4
  %74 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %75 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %335

80:                                               ; preds = %23
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, 32768
  store i32 %82, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %124, %80
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %86 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ARRAY_SIZE(i32* %87)
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %83
  %91 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %92 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %99, %90
  %105 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %106 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load i32, i32* @VERBOSE, align 4
  %116 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %117 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @EEXIST, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %335

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %132 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @ipath_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @EBUSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %335

138:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %220, %138
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @ARRAY_SIZE(i32* %143)
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %223

146:                                              ; preds = %139
  %147 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %148 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %220

158:                                              ; preds = %146
  %159 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %160 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %205

168:                                              ; preds = %158
  %169 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %170 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32* %174, i32** %11, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @atomic_inc_return(i32* %175)
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %195

178:                                              ; preds = %168
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %181 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load i32, i32* @VERBOSE, align 4
  %187 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %188 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @atomic_read(i32* %192)
  %194 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %186, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %193)
  store i32 0, i32* %10, align 4
  br label %335

195:                                              ; preds = %168
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @atomic_dec(i32* %196)
  %198 = load i32, i32* @VERBOSE, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @atomic_read(i32* %199)
  %201 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %198, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %158
  %206 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %207 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 32767
  %214 = load i32, i32* %9, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %205
  %217 = load i32, i32* @EEXIST, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %10, align 4
  br label %335

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %155
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %139

223:                                              ; preds = %139
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %223
  %227 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %228 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = call i32 @ipath_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load i32, i32* @EBUSY, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %10, align 4
  br label %335

234:                                              ; preds = %223
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %324, %234
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %238 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @ARRAY_SIZE(i32* %239)
  %241 = icmp slt i32 %236, %240
  br i1 %241, label %242, label %327

242:                                              ; preds = %235
  %243 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %244 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %323, label %251

251:                                              ; preds = %242
  %252 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %253 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = call i32 @atomic_inc_return(i32* %257)
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %323

260:                                              ; preds = %251
  %261 = load i32, i32* %9, align 4
  %262 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipath_stats, i32 0, i32 0), align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %261, i32* %265, align 4
  %266 = load i32, i32* %4, align 4
  %267 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %268 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %266, i32* %272, align 4
  %273 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %274 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %266, i32* %278, align 4
  %279 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %280 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %285 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 16
  %290 = or i32 %283, %289
  %291 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %292 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 %295, 32
  %297 = or i32 %290, %296
  %298 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %299 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 48
  %304 = or i32 %297, %303
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* @PROC, align 4
  %306 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %307 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %4, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = call i32 (i32, i8*, i32, ...) @ipath_cdbg(i32 %305, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %308, i32 %309, i32 %310, i32 %311, i64 %313)
  %315 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %316 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %317 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %316, i32 0, i32 1
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %12, align 4
  %322 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %315, i32 %320, i32 %321)
  store i32 0, i32* %10, align 4
  br label %335

323:                                              ; preds = %251, %242
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %6, align 4
  br label %235

327:                                              ; preds = %235
  %328 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %329 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %4, align 4
  %332 = call i32 @ipath_dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %330, i32 %331)
  %333 = load i32, i32* @EBUSY, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %327, %260, %226, %216, %178, %130, %114, %72, %22
  %336 = load i32, i32* %10, align 4
  ret i32 %336
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
