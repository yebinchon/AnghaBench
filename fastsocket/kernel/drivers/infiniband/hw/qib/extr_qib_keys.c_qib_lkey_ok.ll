; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_lkey_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_lkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_lkey_table = type { i32* }
%struct.qib_pd = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qib_sge = type { i64, i64, i32, i32, i8*, %struct.qib_mregion* }
%struct.qib_mregion = type { i64, i64, i64, i32, i32, %struct.TYPE_6__**, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ib_sge = type { i64, i64, i64 }
%struct.qib_ibdev = type { i32 }

@ib_qib_lkey_table_size = common dso_local global i32 0, align 4
@QIB_SEGSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_lkey_ok(%struct.qib_lkey_table* %0, %struct.qib_pd* %1, %struct.qib_sge* %2, %struct.ib_sge* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_lkey_table*, align 8
  %8 = alloca %struct.qib_pd*, align 8
  %9 = alloca %struct.qib_sge*, align 8
  %10 = alloca %struct.ib_sge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qib_mregion*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qib_ibdev*, align 8
  %17 = alloca i64, align 8
  store %struct.qib_lkey_table* %0, %struct.qib_lkey_table** %7, align 8
  store %struct.qib_pd* %1, %struct.qib_pd** %8, align 8
  store %struct.qib_sge* %2, %struct.qib_sge** %9, align 8
  store %struct.ib_sge* %3, %struct.ib_sge** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %20 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %5
  %24 = load %struct.qib_pd*, %struct.qib_pd** %8, align 8
  %25 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.qib_ibdev* @to_idev(i32 %27)
  store %struct.qib_ibdev* %28, %struct.qib_ibdev** %16, align 8
  %29 = load %struct.qib_pd*, %struct.qib_pd** %8, align 8
  %30 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %295

34:                                               ; preds = %23
  %35 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %36 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.qib_mregion* @rcu_dereference(i32 %37)
  store %struct.qib_mregion* %38, %struct.qib_mregion** %12, align 8
  %39 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %40 = icmp ne %struct.qib_mregion* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %295

42:                                               ; preds = %34
  %43 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %44 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %43, i32 0, i32 7
  %45 = call i32 @atomic_inc_not_zero(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %295

52:                                               ; preds = %42
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %55 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %56 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %55, i32 0, i32 5
  store %struct.qib_mregion* %54, %struct.qib_mregion** %56, align 8
  %57 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %58 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %62 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %64 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %67 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %69 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %72 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %74 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %76 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  br label %294

77:                                               ; preds = %5
  %78 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %7, align 8
  %79 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %82 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %85 = sub nsw i32 32, %84
  %86 = zext i32 %85 to i64
  %87 = ashr i64 %83, %86
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.qib_mregion* @rcu_dereference(i32 %89)
  store %struct.qib_mregion* %90, %struct.qib_mregion** %12, align 8
  %91 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %92 = icmp ne %struct.qib_mregion* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %77
  %94 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %95 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %98 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %93
  %102 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %103 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %102, i32 0, i32 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load %struct.qib_pd*, %struct.qib_pd** %8, align 8
  %106 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %105, i32 0, i32 0
  %107 = icmp ne %struct.TYPE_4__* %104, %106
  br label %108

108:                                              ; preds = %101, %93, %77
  %109 = phi i1 [ true, %93 ], [ true, %77 ], [ %107, %101 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %295

114:                                              ; preds = %108
  %115 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %116 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %119 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  store i64 %121, i64* %15, align 8
  %122 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %123 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %126 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %147, label %129

129:                                              ; preds = %114
  %130 = load i64, i64* %15, align 8
  %131 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %132 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  %135 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %136 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %134, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %129
  %140 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %141 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %144, %145
  br label %147

147:                                              ; preds = %139, %129, %114
  %148 = phi i1 [ true, %129 ], [ true, %114 ], [ %146, %139 ]
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %295

153:                                              ; preds = %147
  %154 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %155 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %154, i32 0, i32 7
  %156 = call i32 @atomic_inc_not_zero(i32* %155)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %295

163:                                              ; preds = %153
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %166 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %15, align 8
  %170 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %171 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %163
  %175 = load i64, i64* %15, align 8
  %176 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %177 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  %180 = lshr i64 %175, %179
  store i64 %180, i64* %17, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %183 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  %186 = shl i64 %181, %185
  %187 = load i64, i64* %15, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %15, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* @QIB_SEGSZ, align 8
  %191 = udiv i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %14, align 4
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* @QIB_SEGSZ, align 8
  %195 = urem i64 %193, %194
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %13, align 4
  br label %243

197:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %198

198:                                              ; preds = %241, %197
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %201 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %200, i32 0, i32 5
  %202 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %202, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp uge i64 %199, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %198
  %216 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %217 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %216, i32 0, i32 5
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %15, align 8
  %231 = sub i64 %230, %229
  store i64 %231, i64* %15, align 8
  %232 = load i32, i32* %13, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* @QIB_SEGSZ, align 8
  %237 = icmp uge i64 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %215
  %239 = load i32, i32* %14, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %241

241:                                              ; preds = %238, %215
  br label %198

242:                                              ; preds = %198
  br label %243

243:                                              ; preds = %242, %174
  %244 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %245 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %246 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %245, i32 0, i32 5
  store %struct.qib_mregion* %244, %struct.qib_mregion** %246, align 8
  %247 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %248 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %247, i32 0, i32 5
  %249 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %249, i64 %251
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i64, i64* %15, align 8
  %262 = getelementptr i8, i8* %260, i64 %261
  %263 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %264 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %263, i32 0, i32 4
  store i8* %262, i8** %264, align 8
  %265 = load %struct.qib_mregion*, %struct.qib_mregion** %12, align 8
  %266 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %265, i32 0, i32 5
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %267, i64 %269
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %15, align 8
  %280 = sub i64 %278, %279
  %281 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %282 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %284 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %287 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %286, i32 0, i32 1
  store i64 %285, i64* %287, align 8
  %288 = load i32, i32* %14, align 4
  %289 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %290 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %293 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %243, %52
  store i32 1, i32* %6, align 4
  br label %297

295:                                              ; preds = %162, %152, %113, %51, %41, %33
  %296 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %295, %294
  %298 = load i32, i32* %6, align 4
  ret i32 %298
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.qib_mregion* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
