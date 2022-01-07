; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_create_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_srq.c_mlx4_ib_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.ib_pd = type { %struct.TYPE_48__*, i32 }
%struct.TYPE_48__ = type { i32 }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_47__, %struct.TYPE_43__ }
%struct.TYPE_47__ = type { i32, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i64, i64 }
%struct.mlx4_ib_srq = type { i32, %struct.TYPE_39__, %struct.TYPE_41__, %struct.TYPE_38__*, i32, %struct.mlx4_ib_srq*, %struct.ib_srq, %struct.TYPE_37__, i64, i64, i32, i32 }
%struct.TYPE_39__ = type { i32, i64* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i64, i32, i32, i32 }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i32 }
%struct.mlx4_ib_create_srq = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4
@IB_SRQT_XRC = common dso_local global i64 0, align 8
@mlx4_ib_srq_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @mlx4_ib_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_srq*, align 8
  %10 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %11 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_ib_create_srq, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.mlx4_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %8, align 8
  %23 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %26, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %3
  %35 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %38, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34, %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ib_srq* @ERR_PTR(i32 %48)
  store %struct.ib_srq* %49, %struct.ib_srq** %4, align 8
  br label %490

50:                                               ; preds = %34
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kmalloc(i32 120, i32 %51)
  %53 = bitcast i8* %52 to %struct.mlx4_ib_srq*
  store %struct.mlx4_ib_srq* %53, %struct.mlx4_ib_srq** %9, align 8
  %54 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %55 = icmp ne %struct.mlx4_ib_srq* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.ib_srq* @ERR_PTR(i32 %58)
  store %struct.ib_srq* %59, %struct.ib_srq** %4, align 8
  br label %490

60:                                               ; preds = %50
  %61 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %61, i32 0, i32 11
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %64, i32 0, i32 10
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  %72 = call i32 @roundup_pow_of_two(i32 %71)
  %73 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %86, 4
  %88 = add i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @roundup_pow_of_two(i32 %89)
  %91 = call i32 @max(i64 32, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ilog2(i32 %92)
  %94 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %15, align 4
  %103 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %104 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %103, i32 0, i32 0
  %105 = load %struct.TYPE_48__*, %struct.TYPE_48__** %104, align 8
  %106 = icmp ne %struct.TYPE_48__* %105, null
  br i1 %106, label %107, label %183

107:                                              ; preds = %60
  %108 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %109 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_create_srq* %18, %struct.ib_udata* %108, i32 8)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %16, align 4
  br label %485

114:                                              ; preds = %107
  %115 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %116 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %115, i32 0, i32 0
  %117 = load %struct.TYPE_48__*, %struct.TYPE_48__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.mlx4_ib_create_srq, %struct.mlx4_ib_create_srq* %18, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call %struct.TYPE_38__* @ib_umem_get(i32 %119, i32 %121, i32 %122, i32 0, i32 0)
  %124 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %124, i32 0, i32 3
  store %struct.TYPE_38__* %123, %struct.TYPE_38__** %125, align 8
  %126 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %126, i32 0, i32 3
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %127, align 8
  %129 = call i64 @IS_ERR(%struct.TYPE_38__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %114
  %132 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %132, i32 0, i32 3
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.TYPE_38__* %134)
  store i32 %135, i32* %16, align 4
  br label %485

136:                                              ; preds = %114
  %137 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %138, align 8
  %140 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %140, i32 0, i32 3
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %141, align 8
  %143 = call i32 @ib_umem_page_count(%struct.TYPE_38__* %142)
  %144 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %145 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %144, i32 0, i32 3
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ilog2(i32 %148)
  %150 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %150, i32 0, i32 4
  %152 = call i32 @mlx4_mtt_init(%struct.TYPE_36__* %139, i32 %143, i32 %149, i32* %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %136
  br label %453

156:                                              ; preds = %136
  %157 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %158 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %159 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %158, i32 0, i32 4
  %160 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %160, i32 0, i32 3
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %161, align 8
  %163 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %157, i32* %159, %struct.TYPE_38__* %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %446

167:                                              ; preds = %156
  %168 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %169 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %168, i32 0, i32 0
  %170 = load %struct.TYPE_48__*, %struct.TYPE_48__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @to_mucontext(i32 %172)
  %174 = getelementptr inbounds %struct.mlx4_ib_create_srq, %struct.mlx4_ib_create_srq* %18, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %176, i32 0, i32 1
  %178 = call i32 @mlx4_ib_db_map_user(i32 %173, i32 %175, %struct.TYPE_39__* %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %167
  br label %446

182:                                              ; preds = %167
  br label %321

183:                                              ; preds = %60
  %184 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %184, i32 0, i32 0
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %185, align 8
  %187 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %188 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %187, i32 0, i32 1
  %189 = call i32 @mlx4_db_alloc(%struct.TYPE_36__* %186, %struct.TYPE_39__* %188, i32 0)
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %485

193:                                              ; preds = %183
  %194 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  store i64 0, i64* %197, align 8
  %198 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %198, i32 0, i32 0
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = mul nsw i32 %202, 2
  %204 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %204, i32 0, i32 2
  %206 = call i64 @mlx4_buf_alloc(%struct.TYPE_36__* %200, i32 %201, i32 %203, %struct.TYPE_41__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %16, align 4
  br label %472

211:                                              ; preds = %193
  %212 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %212, i32 0, i32 9
  store i64 0, i64* %213, align 8
  %214 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %215 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %214, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, 1
  %219 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %220 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %221, i32 0, i32 8
  store i64 0, i64* %222, align 8
  store i32 0, i32* %17, align 4
  br label %223

223:                                              ; preds = %267, %211
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %224, %228
  br i1 %229, label %230, label %270

230:                                              ; preds = %223
  %231 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %232 = load i32, i32* %17, align 4
  %233 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq* %231, i32 %232)
  store %struct.mlx4_wqe_srq_next_seg* %233, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  %236 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sub nsw i32 %239, 1
  %241 = and i32 %235, %240
  %242 = call i32 @cpu_to_be16(i32 %241)
  %243 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %244 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %246 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %245, i64 1
  %247 = bitcast %struct.mlx4_wqe_srq_next_seg* %246 to i8*
  %248 = bitcast i8* %247 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %248, %struct.mlx4_wqe_data_seg** %11, align 8
  br label %249

249:                                              ; preds = %263, %230
  %250 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %251 = bitcast %struct.mlx4_wqe_data_seg* %250 to i8*
  %252 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %10, align 8
  %253 = bitcast %struct.mlx4_wqe_srq_next_seg* %252 to i8*
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr i8, i8* %253, i64 %255
  %257 = icmp ult i8* %251, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %249
  %259 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %260 = call i32 @cpu_to_be32(i32 %259)
  %261 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %262 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %258
  %264 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %11, align 8
  %265 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %264, i32 1
  store %struct.mlx4_wqe_data_seg* %265, %struct.mlx4_wqe_data_seg** %11, align 8
  br label %249

266:                                              ; preds = %249
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %17, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %17, align 4
  br label %223

270:                                              ; preds = %223
  %271 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %272 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %271, i32 0, i32 0
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %272, align 8
  %274 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %275 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %279 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %283 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %282, i32 0, i32 4
  %284 = call i32 @mlx4_mtt_init(%struct.TYPE_36__* %273, i32 %277, i32 %281, i32* %283)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %270
  br label %453

288:                                              ; preds = %270
  %289 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %290 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %289, i32 0, i32 0
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %290, align 8
  %292 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %293 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %292, i32 0, i32 4
  %294 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %295 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %294, i32 0, i32 2
  %296 = call i32 @mlx4_buf_write_mtt(%struct.TYPE_36__* %291, i32* %293, %struct.TYPE_41__* %295)
  store i32 %296, i32* %16, align 4
  %297 = load i32, i32* %16, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %288
  br label %446

300:                                              ; preds = %288
  %301 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %302 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %301, i32 0, i32 7
  %303 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = mul i64 %305, 4
  %307 = trunc i64 %306 to i32
  %308 = load i32, i32* @GFP_KERNEL, align 4
  %309 = call i8* @kmalloc(i32 %307, i32 %308)
  %310 = bitcast i8* %309 to %struct.mlx4_ib_srq*
  %311 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %312 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %311, i32 0, i32 5
  store %struct.mlx4_ib_srq* %310, %struct.mlx4_ib_srq** %312, align 8
  %313 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %314 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %313, i32 0, i32 5
  %315 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %314, align 8
  %316 = icmp ne %struct.mlx4_ib_srq* %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %300
  %318 = load i32, i32* @ENOMEM, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %16, align 4
  br label %446

320:                                              ; preds = %300
  br label %321

321:                                              ; preds = %320, %182
  %322 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %323 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @IB_SRQT_XRC, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %329 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call %struct.TYPE_35__* @to_mcq(i32 %332)
  %334 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  br label %338

337:                                              ; preds = %321
  br label %338

338:                                              ; preds = %337, %327
  %339 = phi i32 [ %336, %327 ], [ 0, %337 ]
  store i32 %339, i32* %12, align 4
  %340 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %341 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @IB_SRQT_XRC, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %347 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call %struct.TYPE_49__* @to_mxrcd(i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  br label %362

354:                                              ; preds = %338
  %355 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %356 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %355, i32 0, i32 0
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = trunc i64 %360 to i32
  br label %362

362:                                              ; preds = %354, %345
  %363 = phi i32 [ %353, %345 ], [ %361, %354 ]
  store i32 %363, i32* %13, align 4
  %364 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %365 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %364, i32 0, i32 0
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %365, align 8
  %367 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %368 = call %struct.TYPE_34__* @to_mpd(%struct.ib_pd* %367)
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %13, align 4
  %373 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %374 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %373, i32 0, i32 4
  %375 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %376 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %380 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %379, i32 0, i32 7
  %381 = call i32 @mlx4_srq_alloc(%struct.TYPE_36__* %366, i32 %370, i32 %371, i32 %372, i32* %374, i32 %378, %struct.TYPE_37__* %380)
  store i32 %381, i32* %16, align 4
  %382 = load i32, i32* %16, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %362
  br label %425

385:                                              ; preds = %362
  %386 = load i32, i32* @mlx4_ib_srq_event, align 4
  %387 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %388 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %387, i32 0, i32 7
  %389 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %388, i32 0, i32 3
  store i32 %386, i32* %389, align 4
  %390 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %391 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %395 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %394, i32 0, i32 6
  %396 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %397, i32 0, i32 0
  store i32 %393, i32* %398, align 8
  %399 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %400 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %399, i32 0, i32 0
  %401 = load %struct.TYPE_48__*, %struct.TYPE_48__** %400, align 8
  %402 = icmp ne %struct.TYPE_48__* %401, null
  br i1 %402, label %403, label %414

403:                                              ; preds = %385
  %404 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %405 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %406 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %405, i32 0, i32 7
  %407 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %406, i32 0, i32 2
  %408 = call i64 @ib_copy_to_udata(%struct.ib_udata* %404, i32* %407, i32 4)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = load i32, i32* @EFAULT, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %16, align 4
  br label %425

413:                                              ; preds = %403
  br label %414

414:                                              ; preds = %413, %385
  %415 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %416 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %415, i32 0, i32 7
  %417 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = sub nsw i32 %418, 1
  %420 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %421 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %421, i32 0, i32 0
  store i32 %419, i32* %422, align 8
  %423 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %424 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %423, i32 0, i32 6
  store %struct.ib_srq* %424, %struct.ib_srq** %4, align 8
  br label %490

425:                                              ; preds = %410, %384
  %426 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %427 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %426, i32 0, i32 0
  %428 = load %struct.TYPE_48__*, %struct.TYPE_48__** %427, align 8
  %429 = icmp ne %struct.TYPE_48__* %428, null
  br i1 %429, label %430, label %440

430:                                              ; preds = %425
  %431 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %432 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %431, i32 0, i32 0
  %433 = load %struct.TYPE_48__*, %struct.TYPE_48__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @to_mucontext(i32 %435)
  %437 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %438 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %437, i32 0, i32 1
  %439 = call i32 @mlx4_ib_db_unmap_user(i32 %436, %struct.TYPE_39__* %438)
  br label %445

440:                                              ; preds = %425
  %441 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %442 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %441, i32 0, i32 5
  %443 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %442, align 8
  %444 = call i32 @kfree(%struct.mlx4_ib_srq* %443)
  br label %445

445:                                              ; preds = %440, %430
  br label %446

446:                                              ; preds = %445, %317, %299, %181, %166
  %447 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %448 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %447, i32 0, i32 0
  %449 = load %struct.TYPE_36__*, %struct.TYPE_36__** %448, align 8
  %450 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %451 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %450, i32 0, i32 4
  %452 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_36__* %449, i32* %451)
  br label %453

453:                                              ; preds = %446, %287, %155
  %454 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %455 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %454, i32 0, i32 0
  %456 = load %struct.TYPE_48__*, %struct.TYPE_48__** %455, align 8
  %457 = icmp ne %struct.TYPE_48__* %456, null
  br i1 %457, label %458, label %463

458:                                              ; preds = %453
  %459 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %460 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %459, i32 0, i32 3
  %461 = load %struct.TYPE_38__*, %struct.TYPE_38__** %460, align 8
  %462 = call i32 @ib_umem_release(%struct.TYPE_38__* %461)
  br label %471

463:                                              ; preds = %453
  %464 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %465 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %464, i32 0, i32 0
  %466 = load %struct.TYPE_36__*, %struct.TYPE_36__** %465, align 8
  %467 = load i32, i32* %15, align 4
  %468 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %469 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %468, i32 0, i32 2
  %470 = call i32 @mlx4_buf_free(%struct.TYPE_36__* %466, i32 %467, %struct.TYPE_41__* %469)
  br label %471

471:                                              ; preds = %463, %458
  br label %472

472:                                              ; preds = %471, %208
  %473 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %474 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %473, i32 0, i32 0
  %475 = load %struct.TYPE_48__*, %struct.TYPE_48__** %474, align 8
  %476 = icmp ne %struct.TYPE_48__* %475, null
  br i1 %476, label %484, label %477

477:                                              ; preds = %472
  %478 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %479 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %478, i32 0, i32 0
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %479, align 8
  %481 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %482 = getelementptr inbounds %struct.mlx4_ib_srq, %struct.mlx4_ib_srq* %481, i32 0, i32 1
  %483 = call i32 @mlx4_db_free(%struct.TYPE_36__* %480, %struct.TYPE_39__* %482)
  br label %484

484:                                              ; preds = %477, %472
  br label %485

485:                                              ; preds = %484, %192, %131, %111
  %486 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %9, align 8
  %487 = call i32 @kfree(%struct.mlx4_ib_srq* %486)
  %488 = load i32, i32* %16, align 4
  %489 = call %struct.ib_srq* @ERR_PTR(i32 %488)
  store %struct.ib_srq* %489, %struct.ib_srq** %4, align 8
  br label %490

490:                                              ; preds = %485, %414, %56, %46
  %491 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  ret %struct.ib_srq* %491
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_create_srq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.TYPE_38__* @ib_umem_get(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_38__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_36__*, i32, i32, i32*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_ib_db_map_user(i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @mlx4_db_alloc(%struct.TYPE_36__*, %struct.TYPE_39__*, i32) #1

declare dso_local i64 @mlx4_buf_alloc(%struct.TYPE_36__*, i32, i32, %struct.TYPE_41__*) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_ib_srq*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.TYPE_36__*, i32*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_35__* @to_mcq(i32) #1

declare dso_local %struct.TYPE_49__* @to_mxrcd(i32) #1

declare dso_local i32 @mlx4_srq_alloc(%struct.TYPE_36__*, i32, i32, i32, i32*, i32, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_34__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_ib_db_unmap_user(i32, %struct.TYPE_39__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_srq*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_38__*) #1

declare dso_local i32 @mlx4_buf_free(%struct.TYPE_36__*, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @mlx4_db_free(%struct.TYPE_36__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
