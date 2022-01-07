; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_resize_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_ib_cq = type { i32, i32*, %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.mlx4_ib_cq_buf, i32*, i32 }
%struct.TYPE_9__ = type { i32, %struct.mlx4_ib_cq_buf }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ib_cq_buf = type { %struct.mlx4_mtt }
%struct.mlx4_mtt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca %struct.mlx4_mtt, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_ib_cq_buf, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %7, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %19 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %18)
  store %struct.mlx4_ib_cq* %19, %struct.mlx4_ib_cq** %8, align 8
  %20 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %242

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @roundup_pow_of_two(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %43 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %242

48:                                               ; preds = %37
  %49 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %50 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %55 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %58 = call i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev* %54, %struct.mlx4_ib_cq* %55, i32 %56, %struct.ib_udata* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %242

62:                                               ; preds = %53
  br label %80

63:                                               ; preds = %48
  %64 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %65 = call i32 @mlx4_ib_get_outstanding_cqes(%struct.mlx4_ib_cq* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %242

71:                                               ; preds = %63
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %73 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mlx4_alloc_resize_buf(%struct.mlx4_ib_dev* %72, %struct.mlx4_ib_cq* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %242

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %82, i32 0, i32 0
  %84 = bitcast %struct.mlx4_mtt* %9 to i8*
  %85 = bitcast %struct.mlx4_mtt* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 8 %85, i64 4, i1 false)
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %89, i32 0, i32 7
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %95, i32 0, i32 0
  %97 = call i32 @mlx4_cq_resize(%struct.TYPE_8__* %88, i32* %90, i32 %91, %struct.mlx4_mtt* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %80
  br label %197

101:                                              ; preds = %80
  %102 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_8__* %104, %struct.mlx4_mtt* %9)
  %106 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %107 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %101
  %111 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %111, i32 0, i32 5
  %113 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = bitcast %struct.mlx4_ib_cq_buf* %112 to i8*
  %118 = bitcast %struct.mlx4_ib_cq_buf* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 4 %118, i64 4, i1 false)
  %119 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @ib_umem_release(i32* %129)
  %131 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %134, i32 0, i32 6
  store i32* %133, i32** %135, align 8
  %136 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i32 @kfree(%struct.TYPE_9__* %138)
  %140 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %140, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %141, align 8
  %142 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %143 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %142, i32 0, i32 1
  store i32* null, i32** %143, align 8
  br label %196

144:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  %145 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %145, i32 0, i32 3
  %147 = call i32 @spin_lock_irq(i32* %146)
  %148 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %149 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %148, i32 0, i32 2
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = icmp ne %struct.TYPE_9__* %150, null
  br i1 %151, label %152, label %185

152:                                              ; preds = %144
  %153 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %154 = call i32 @mlx4_ib_cq_resize_copy_cqes(%struct.mlx4_ib_cq* %153)
  %155 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %155, i32 0, i32 5
  %157 = bitcast %struct.mlx4_ib_cq_buf* %12 to i8*
  %158 = bitcast %struct.mlx4_ib_cq_buf* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 8 %158, i64 4, i1 false)
  %159 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %13, align 4
  %163 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %163, i32 0, i32 5
  %165 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %166 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %165, i32 0, i32 2
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = bitcast %struct.mlx4_ib_cq_buf* %164 to i8*
  %170 = bitcast %struct.mlx4_ib_cq_buf* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 4 %170, i64 4, i1 false)
  %171 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %179, i32 0, i32 2
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = call i32 @kfree(%struct.TYPE_9__* %181)
  %183 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %184 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %183, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %184, align 8
  br label %185

185:                                              ; preds = %152, %144
  %186 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %186, i32 0, i32 3
  %188 = call i32 @spin_unlock_irq(i32* %187)
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %192, %struct.mlx4_ib_cq_buf* %12, i32 %193)
  br label %195

195:                                              ; preds = %191, %185
  br label %196

196:                                              ; preds = %195, %110
  br label %242

197:                                              ; preds = %100
  %198 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %204, i32 0, i32 0
  %206 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_8__* %200, %struct.mlx4_mtt* %205)
  %207 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %208 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %197
  %212 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %213 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %213, i32 0, i32 2
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %217, i32 0, i32 2
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %212, %struct.mlx4_ib_cq_buf* %216, i32 %221)
  br label %223

223:                                              ; preds = %211, %197
  %224 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %224, i32 0, i32 2
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = call i32 @kfree(%struct.TYPE_9__* %226)
  %228 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %229 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %228, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %229, align 8
  %230 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %223
  %235 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %236 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @ib_umem_release(i32* %237)
  %239 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %239, i32 0, i32 1
  store i32* null, i32** %240, align 8
  br label %241

241:                                              ; preds = %234, %223
  br label %242

242:                                              ; preds = %241, %196, %78, %70, %61, %47, %34
  %243 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %244 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %243, i32 0, i32 0
  %245 = call i32 @mutex_unlock(i32* %244)
  %246 = load i32, i32* %11, align 4
  ret i32 %246
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32, %struct.ib_udata*) #1

declare dso_local i32 @mlx4_ib_get_outstanding_cqes(%struct.mlx4_ib_cq*) #1

declare dso_local i32 @mlx4_alloc_resize_buf(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_cq_resize(%struct.TYPE_8__*, i32*, i32, %struct.mlx4_mtt*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_8__*, %struct.mlx4_mtt*) #1

declare dso_local i32 @ib_umem_release(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mlx4_ib_cq_resize_copy_cqes(%struct.mlx4_ib_cq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq_buf*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
