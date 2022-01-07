; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_user_sq_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_user_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx4_ib_create_qp = type { i32, i64 }

@MLX4_IB_MIN_SQ_STRIDE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_qp*, %struct.mlx4_ib_create_qp*)* @set_user_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_sq_size(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_create_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca %struct.mlx4_ib_create_qp*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %6, align 8
  store %struct.mlx4_ib_create_qp* %2, %struct.mlx4_ib_create_qp** %7, align 8
  %8 = load %struct.mlx4_ib_create_qp*, %struct.mlx4_ib_create_qp** %7, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_create_qp, %struct.mlx4_ib_create_qp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %11, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %3
  %20 = load %struct.mlx4_ib_create_qp*, %struct.mlx4_ib_create_qp** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_create_qp, %struct.mlx4_ib_create_qp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @roundup_pow_of_two(i32 %28)
  %30 = call i64 @ilog2(i32 %29)
  %31 = icmp sgt i64 %22, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load %struct.mlx4_ib_create_qp*, %struct.mlx4_ib_create_qp** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_create_qp, %struct.mlx4_ib_create_qp* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX4_IB_MIN_SQ_STRIDE, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %19, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %32
  %42 = load %struct.mlx4_ib_create_qp*, %struct.mlx4_ib_create_qp** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_create_qp, %struct.mlx4_ib_create_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mlx4_ib_create_qp*, %struct.mlx4_ib_create_qp** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_create_qp, %struct.mlx4_ib_create_qp* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %58, %62
  %64 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %67, %72
  %74 = add nsw i32 %63, %73
  %75 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %41, %38
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
