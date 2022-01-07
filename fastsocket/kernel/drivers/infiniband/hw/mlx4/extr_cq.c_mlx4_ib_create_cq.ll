; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32*, %struct.TYPE_20__*, %struct.mlx4_uar }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.mlx4_uar = type { i32 }
%struct.mlx4_ib_cq = type { %struct.TYPE_22__, %struct.ib_cq, %struct.TYPE_21__, i32, %struct.TYPE_17__, i32*, i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i64* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64*, i64* }
%struct.mlx4_ib_create_cq = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.mlx4_uar }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@mlx4_ib_cq_comp = common dso_local global i32 0, align 4
@mlx4_ib_cq_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @mlx4_ib_create_cq(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_ucontext* %3, %struct.ib_udata* %4) #0 {
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ucontext*, align 8
  %11 = alloca %struct.ib_udata*, align 8
  %12 = alloca %struct.mlx4_ib_dev*, align 8
  %13 = alloca %struct.mlx4_ib_cq*, align 8
  %14 = alloca %struct.mlx4_uar*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_ib_create_cq, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ib_ucontext* %3, %struct.ib_ucontext** %10, align 8
  store %struct.ib_udata* %4, %struct.ib_udata** %11, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %18 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %22, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ib_cq* @ERR_PTR(i32 %32)
  store %struct.ib_cq* %33, %struct.ib_cq** %6, align 8
  br label %258

34:                                               ; preds = %21
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.mlx4_ib_cq* @kmalloc(i32 88, i32 %35)
  store %struct.mlx4_ib_cq* %36, %struct.mlx4_ib_cq** %13, align 8
  %37 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %38 = icmp ne %struct.mlx4_ib_cq* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.ib_cq* @ERR_PTR(i32 %41)
  store %struct.ib_cq* %42, %struct.ib_cq** %6, align 8
  br label %258

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @roundup_pow_of_two(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %52, i32 0, i32 8
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %55, i32 0, i32 7
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %58, i32 0, i32 6
  store i32* null, i32** %59, align 8
  %60 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %60, i32 0, i32 5
  store i32* null, i32** %61, align 8
  %62 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %63 = icmp ne %struct.ib_ucontext* %62, null
  br i1 %63, label %64, label %100

64:                                               ; preds = %43
  %65 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %66 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_create_cq* %16, %struct.ib_udata* %65, i32 8)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %253

71:                                               ; preds = %64
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %73 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %74 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %74, i32 0, i32 2
  %76 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.mlx4_ib_create_cq, %struct.mlx4_ib_create_cq* %16, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %72, %struct.ib_ucontext* %73, %struct.TYPE_21__* %75, i32* %77, i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %253

85:                                               ; preds = %71
  %86 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %87 = call %struct.TYPE_19__* @to_mucontext(%struct.ib_ucontext* %86)
  %88 = getelementptr inbounds %struct.mlx4_ib_create_cq, %struct.mlx4_ib_create_cq* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %90, i32 0, i32 0
  %92 = call i32 @mlx4_ib_db_map_user(%struct.TYPE_19__* %87, i32 %89, %struct.TYPE_22__* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %217

96:                                               ; preds = %85
  %97 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %98 = call %struct.TYPE_19__* @to_mucontext(%struct.ib_ucontext* %97)
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store %struct.mlx4_uar* %99, %struct.mlx4_uar** %14, align 8
  br label %145

100:                                              ; preds = %43
  %101 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %101, i32 0, i32 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %104, i32 0, i32 0
  %106 = call i32 @mlx4_db_alloc(%struct.TYPE_20__* %103, %struct.TYPE_22__* %105, i32 1)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %253

110:                                              ; preds = %100
  %111 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  store i64* %114, i64** %117, align 8
  %118 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  store i64* %122, i64** %125, align 8
  %126 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 4
  %129 = load i64*, i64** %128, align 8
  store i64 0, i64* %129, align 8
  %130 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  store i64 0, i64* %133, align 8
  %134 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %135 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %135, i32 0, i32 2
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev* %134, %struct.TYPE_21__* %136, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %110
  br label %242

142:                                              ; preds = %110
  %143 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %144 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %143, i32 0, i32 2
  store %struct.mlx4_uar* %144, %struct.mlx4_uar** %14, align 8
  br label %145

145:                                              ; preds = %142, %96
  %146 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %152 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %156 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %150, %145
  %163 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %168 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load %struct.mlx4_uar*, %struct.mlx4_uar** %14, align 8
  %171 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %176 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %175, i32 0, i32 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @mlx4_cq_alloc(%struct.TYPE_20__* %165, i32 %166, i32* %169, %struct.mlx4_uar* %170, i32 %174, %struct.TYPE_17__* %176, i32 %177, i32 0, i32 0)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %162
  br label %207

182:                                              ; preds = %162
  %183 = load i32, i32* @mlx4_ib_cq_comp, align 4
  %184 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  %187 = load i32, i32* @mlx4_ib_cq_event, align 4
  %188 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %189 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %192 = icmp ne %struct.ib_ucontext* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %182
  %194 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %195 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = call i64 @ib_copy_to_udata(%struct.ib_udata* %194, i32* %197, i32 4)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* @EFAULT, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %15, align 4
  br label %207

203:                                              ; preds = %193
  br label %204

204:                                              ; preds = %203, %182
  %205 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %205, i32 0, i32 1
  store %struct.ib_cq* %206, %struct.ib_cq** %6, align 8
  br label %258

207:                                              ; preds = %200, %181
  %208 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %209 = icmp ne %struct.ib_ucontext* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %212 = call %struct.TYPE_19__* @to_mucontext(%struct.ib_ucontext* %211)
  %213 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %213, i32 0, i32 0
  %215 = call i32 @mlx4_ib_db_unmap_user(%struct.TYPE_19__* %212, %struct.TYPE_22__* %214)
  br label %216

216:                                              ; preds = %210, %207
  br label %217

217:                                              ; preds = %216, %95
  %218 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %219 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %218, i32 0, i32 1
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_20__* %220, i32* %223)
  %225 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %226 = icmp ne %struct.ib_ucontext* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %217
  %228 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %229 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @ib_umem_release(i32 %230)
  br label %241

232:                                              ; preds = %217
  %233 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %234 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %235 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %234, i32 0, i32 2
  %236 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %233, %struct.TYPE_21__* %235, i32 %239)
  br label %241

241:                                              ; preds = %232, %227
  br label %242

242:                                              ; preds = %241, %141
  %243 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %244 = icmp ne %struct.ib_ucontext* %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %247 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %246, i32 0, i32 1
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %250 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %249, i32 0, i32 0
  %251 = call i32 @mlx4_db_free(%struct.TYPE_20__* %248, %struct.TYPE_22__* %250)
  br label %252

252:                                              ; preds = %245, %242
  br label %253

253:                                              ; preds = %252, %109, %84, %68
  %254 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %13, align 8
  %255 = call i32 @kfree(%struct.mlx4_ib_cq* %254)
  %256 = load i32, i32* %15, align 4
  %257 = call %struct.ib_cq* @ERR_PTR(i32 %256)
  store %struct.ib_cq* %257, %struct.ib_cq** %6, align 8
  br label %258

258:                                              ; preds = %253, %204, %39, %30
  %259 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  ret %struct.ib_cq* %259
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_cq* @kmalloc(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_create_cq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev*, %struct.ib_ucontext*, %struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_ib_db_map_user(%struct.TYPE_19__*, i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @mlx4_db_alloc(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mlx4_cq_alloc(%struct.TYPE_20__*, i32, i32*, %struct.mlx4_uar*, i32, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mlx4_db_free(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
