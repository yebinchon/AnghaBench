; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_rkey_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_rkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.qib_sge = type { i32, i32, i32, i32, i8*, %struct.qib_mregion* }
%struct.qib_mregion = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_8__**, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.qib_lkey_table = type { i32* }
%struct.qib_pd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qib_ibdev = type { i32, %struct.qib_lkey_table }

@ib_qib_lkey_table_size = common dso_local global i32 0, align 4
@QIB_SEGSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_rkey_ok(%struct.qib_qp* %0, %struct.qib_sge* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_qp*, align 8
  %9 = alloca %struct.qib_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qib_lkey_table*, align 8
  %15 = alloca %struct.qib_mregion*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.qib_pd*, align 8
  %20 = alloca %struct.qib_ibdev*, align 8
  %21 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %8, align 8
  store %struct.qib_sge* %1, %struct.qib_sge** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.qib_ibdev* @to_idev(i32 %25)
  %27 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %26, i32 0, i32 1
  store %struct.qib_lkey_table* %27, %struct.qib_lkey_table** %14, align 8
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %6
  %32 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %33 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.qib_pd* @to_ipd(i64 %35)
  store %struct.qib_pd* %36, %struct.qib_pd** %19, align 8
  %37 = load %struct.qib_pd*, %struct.qib_pd** %19, align 8
  %38 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.qib_ibdev* @to_idev(i32 %40)
  store %struct.qib_ibdev* %41, %struct.qib_ibdev** %20, align 8
  %42 = load %struct.qib_pd*, %struct.qib_pd** %19, align 8
  %43 = getelementptr inbounds %struct.qib_pd, %struct.qib_pd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %294

47:                                               ; preds = %31
  %48 = load %struct.qib_ibdev*, %struct.qib_ibdev** %20, align 8
  %49 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.qib_mregion* @rcu_dereference(i32 %50)
  store %struct.qib_mregion* %51, %struct.qib_mregion** %15, align 8
  %52 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %53 = icmp ne %struct.qib_mregion* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %294

55:                                               ; preds = %47
  %56 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %57 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %56, i32 0, i32 8
  %58 = call i32 @atomic_inc_not_zero(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %294

65:                                               ; preds = %55
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %68 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %69 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %68, i32 0, i32 5
  store %struct.qib_mregion* %67, %struct.qib_mregion** %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %73 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %76 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %79 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %81 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %83 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %82, i32 0, i32 3
  store i32 0, i32* %83, align 4
  br label %293

84:                                               ; preds = %6
  %85 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %14, align 8
  %86 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %90 = sub nsw i32 32, %89
  %91 = ashr i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.qib_mregion* @rcu_dereference(i32 %94)
  store %struct.qib_mregion* %95, %struct.qib_mregion** %15, align 8
  %96 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %97 = icmp ne %struct.qib_mregion* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %84
  %99 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %100 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %106 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %110 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br label %113

113:                                              ; preds = %104, %98, %84
  %114 = phi i1 [ true, %98 ], [ true, %84 ], [ %112, %104 ]
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %294

119:                                              ; preds = %113
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %122 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  store i64 %124, i64* %18, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %127 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %147, label %130

130:                                              ; preds = %119
  %131 = load i64, i64* %18, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %136 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = icmp ugt i64 %134, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %130
  %141 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %142 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br label %147

147:                                              ; preds = %140, %130, %119
  %148 = phi i1 [ true, %130 ], [ true, %119 ], [ %146, %140 ]
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %294

153:                                              ; preds = %147
  %154 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %155 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %154, i32 0, i32 8
  %156 = call i32 @atomic_inc_not_zero(i32* %155)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %294

163:                                              ; preds = %153
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %166 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %18, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %18, align 8
  %170 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %171 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %163
  %175 = load i64, i64* %18, align 8
  %176 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %177 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = zext i32 %178 to i64
  %180 = lshr i64 %175, %179
  store i64 %180, i64* %21, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %183 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = zext i32 %184 to i64
  %186 = shl i64 %181, %185
  %187 = load i64, i64* %18, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %18, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load i64, i64* @QIB_SEGSZ, align 8
  %191 = udiv i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %17, align 4
  %193 = load i64, i64* %21, align 8
  %194 = load i64, i64* @QIB_SEGSZ, align 8
  %195 = urem i64 %193, %194
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %16, align 4
  br label %243

197:                                              ; preds = %163
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %241, %197
  %199 = load i64, i64* %18, align 8
  %200 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %201 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %200, i32 0, i32 6
  %202 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %202, i64 %204
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %16, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp uge i64 %199, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %198
  %216 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %217 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %216, i32 0, i32 6
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %18, align 8
  %231 = sub i64 %230, %229
  store i64 %231, i64* %18, align 8
  %232 = load i32, i32* %16, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %16, align 4
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* @QIB_SEGSZ, align 8
  %237 = icmp uge i64 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %215
  %239 = load i32, i32* %17, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %241

241:                                              ; preds = %238, %215
  br label %198

242:                                              ; preds = %198
  br label %243

243:                                              ; preds = %242, %174
  %244 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %245 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %246 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %245, i32 0, i32 5
  store %struct.qib_mregion* %244, %struct.qib_mregion** %246, align 8
  %247 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %248 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %247, i32 0, i32 6
  %249 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %248, align 8
  %250 = load i32, i32* %17, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %249, i64 %251
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i32, i32* %16, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i64, i64* %18, align 8
  %262 = getelementptr i8, i8* %260, i64 %261
  %263 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %264 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %263, i32 0, i32 4
  store i8* %262, i8** %264, align 8
  %265 = load %struct.qib_mregion*, %struct.qib_mregion** %15, align 8
  %266 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %265, i32 0, i32 6
  %267 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %266, align 8
  %268 = load i32, i32* %17, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %267, i64 %269
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = load i32, i32* %16, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %18, align 8
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %283 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %286 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %17, align 4
  %288 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %289 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.qib_sge*, %struct.qib_sge** %9, align 8
  %292 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %243, %65
  store i32 1, i32* %7, align 4
  br label %296

294:                                              ; preds = %162, %152, %118, %64, %54, %46
  %295 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %7, align 4
  br label %296

296:                                              ; preds = %294, %293
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.qib_pd* @to_ipd(i64) #1

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
