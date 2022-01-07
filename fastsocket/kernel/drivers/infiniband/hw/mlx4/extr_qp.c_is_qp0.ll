; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_is_qp0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_is_qp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_6__ = type { i64 }
%struct.mlx4_ib_qp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_qp*)* @is_qp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_qp0(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.mlx4_ib_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call i64 @mlx4_is_master(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i64 @mlx4_is_mfunc(%struct.TYPE_9__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %24, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = icmp sle i64 %36, %43
  br label %45

45:                                               ; preds = %32, %20, %14
  %46 = phi i1 [ false, %20 ], [ false, %14 ], [ %44, %32 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %91

51:                                               ; preds = %45
  %52 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i64 @mlx4_is_mfunc(%struct.TYPE_9__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %71, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %88

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %58

88:                                               ; preds = %83, %58
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %50
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @mlx4_is_master(%struct.TYPE_9__*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
