; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_resize_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ipath_cq = type { i32, %struct.ipath_mmap_info*, %struct.ipath_cq_wc*, %struct.TYPE_2__ }
%struct.ipath_mmap_info = type { i32, i32 }
%struct.ipath_cq_wc = type { i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_ibdev = type { i32, i32 }

@ib_ipath_max_cqes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.ipath_cq*, align 8
  %8 = alloca %struct.ipath_cq_wc*, align 8
  %9 = alloca %struct.ipath_cq_wc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipath_ibdev*, align 8
  %17 = alloca %struct.ipath_mmap_info*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %19 = call %struct.ipath_cq* @to_icq(%struct.ib_cq* %18)
  store %struct.ipath_cq* %19, %struct.ipath_cq** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ib_ipath_max_cqes, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  br label %275

29:                                               ; preds = %22
  store i32 24, i32* %14, align 4
  %30 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %31 = icmp ne %struct.ib_udata* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %34 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  br label %56

47:                                               ; preds = %32, %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.ipath_cq_wc* @vmalloc_user(i32 %57)
  store %struct.ipath_cq_wc* %58, %struct.ipath_cq_wc** %9, align 8
  %59 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %60 = icmp ne %struct.ipath_cq_wc* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %275

64:                                               ; preds = %56
  %65 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %66 = icmp ne %struct.ib_udata* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %69 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %71, 4
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  %74 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %75 = call i32 @ib_copy_to_udata(%struct.ib_udata* %74, i32* %15, i32 4)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %272

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %67, %64
  %81 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %82 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %81, i32 0, i32 0
  %83 = call i32 @spin_lock_irq(i32* %82)
  %84 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %85 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %84, i32 0, i32 2
  %86 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %85, align 8
  store %struct.ipath_cq_wc* %86, %struct.ipath_cq_wc** %8, align 8
  %87 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %88 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %92 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %90, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %80
  %97 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %98 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %96, %80
  %102 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %103 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %107 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %113 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %111, %101
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %122 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %12, align 4
  br label %134

130:                                              ; preds = %116
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %130, %120
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %13, align 4
  br label %268

144:                                              ; preds = %134
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %194, %144
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %145
  %150 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %151 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %150, i32 0, i32 1
  %152 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %151, align 8
  %153 = icmp ne %struct.ipath_mmap_info* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %156 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %163 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  br label %182

168:                                              ; preds = %149
  %169 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %170 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %177 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  br label %182

182:                                              ; preds = %168, %154
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %185 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %183, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i32 0, i32* %11, align 4
  br label %193

190:                                              ; preds = %182
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %190, %189
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %145

197:                                              ; preds = %145
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %200 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %204 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %206 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  %207 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %208 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %209 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %208, i32 0, i32 2
  store %struct.ipath_cq_wc* %207, %struct.ipath_cq_wc** %209, align 8
  %210 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %211 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock_irq(i32* %211)
  %213 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %214 = call i32 @vfree(%struct.ipath_cq_wc* %213)
  %215 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %216 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %215, i32 0, i32 1
  %217 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %216, align 8
  %218 = icmp ne %struct.ipath_mmap_info* %217, null
  br i1 %218, label %219, label %267

219:                                              ; preds = %197
  %220 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %221 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call %struct.ipath_ibdev* @to_idev(i32 %222)
  store %struct.ipath_ibdev* %223, %struct.ipath_ibdev** %16, align 8
  %224 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %225 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %224, i32 0, i32 1
  %226 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %225, align 8
  store %struct.ipath_mmap_info* %226, %struct.ipath_mmap_info** %17, align 8
  %227 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %16, align 8
  %228 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %17, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %231 = call i32 @ipath_update_mmap_info(%struct.ipath_ibdev* %227, %struct.ipath_mmap_info* %228, i32 %229, %struct.ipath_cq_wc* %230)
  %232 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %233 = icmp ne %struct.ib_udata* %232, null
  br i1 %233, label %234, label %249

234:                                              ; preds = %219
  %235 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %236 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = icmp uge i64 %238, 4
  br i1 %239, label %240, label %249

240:                                              ; preds = %234
  %241 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %242 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %17, align 8
  %243 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %242, i32 0, i32 1
  %244 = call i32 @ib_copy_to_udata(%struct.ib_udata* %241, i32* %243, i32 4)
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %275

248:                                              ; preds = %240
  br label %249

249:                                              ; preds = %248, %234, %219
  %250 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %16, align 8
  %251 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %250, i32 0, i32 0
  %252 = call i32 @spin_lock_irq(i32* %251)
  %253 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %17, align 8
  %254 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %253, i32 0, i32 0
  %255 = call i64 @list_empty(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %249
  %258 = load %struct.ipath_mmap_info*, %struct.ipath_mmap_info** %17, align 8
  %259 = getelementptr inbounds %struct.ipath_mmap_info, %struct.ipath_mmap_info* %258, i32 0, i32 0
  %260 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %16, align 8
  %261 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %260, i32 0, i32 1
  %262 = call i32 @list_add(i32* %259, i32* %261)
  br label %263

263:                                              ; preds = %257, %249
  %264 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %16, align 8
  %265 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %264, i32 0, i32 0
  %266 = call i32 @spin_unlock_irq(i32* %265)
  br label %267

267:                                              ; preds = %263, %197
  store i32 0, i32* %13, align 4
  br label %275

268:                                              ; preds = %141
  %269 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %270 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %269, i32 0, i32 0
  %271 = call i32 @spin_unlock_irq(i32* %270)
  br label %272

272:                                              ; preds = %268, %78
  %273 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %9, align 8
  %274 = call i32 @vfree(%struct.ipath_cq_wc* %273)
  br label %275

275:                                              ; preds = %272, %267, %247, %61, %26
  %276 = load i32, i32* %13, align 4
  ret i32 %276
}

declare dso_local %struct.ipath_cq* @to_icq(%struct.ib_cq*) #1

declare dso_local %struct.ipath_cq_wc* @vmalloc_user(i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(%struct.ipath_cq_wc*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @ipath_update_mmap_info(%struct.ipath_ibdev*, %struct.ipath_mmap_info*, i32, %struct.ipath_cq_wc*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
