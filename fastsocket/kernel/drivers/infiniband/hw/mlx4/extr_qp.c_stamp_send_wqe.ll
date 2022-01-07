; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_stamp_send_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_stamp_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx4_wqe_ctrl_seg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_qp*, i32, i32)* @stamp_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stamp_send_wqe(%struct.mlx4_ib_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_wqe_ctrl_seg*, align 8
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = call i32 @roundup(i32 %19, i32 %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %75, %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %31, %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = call i32 @cpu_to_be32(i32 2147483647)
  br label %50

48:                                               ; preds = %30
  %49 = call i32 @cpu_to_be32(i32 -1)
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %12, align 4
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %53, %58
  %60 = call i8* @get_send_wqe(%struct.mlx4_ib_qp* %52, i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %62, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %61, i64 %70
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 64
  store i32 %77, i32* %8, align 4
  br label %26

78:                                               ; preds = %26
  br label %111

79:                                               ; preds = %3
  %80 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %81, %86
  %88 = call i8* @get_send_wqe(%struct.mlx4_ib_qp* %80, i32 %87)
  store i8* %88, i8** %11, align 8
  %89 = bitcast i8* %88 to %struct.mlx4_wqe_ctrl_seg*
  store %struct.mlx4_wqe_ctrl_seg* %89, %struct.mlx4_wqe_ctrl_seg** %13, align 8
  %90 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %13, align 8
  %91 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 63
  %94 = shl i32 %93, 4
  store i32 %94, i32* %9, align 4
  store i32 64, i32* %8, align 4
  br label %95

95:                                               ; preds = %107, %79
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %7, align 8
  %105 = call i32 @cpu_to_be32(i32 -1)
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 64
  store i32 %109, i32* %8, align 4
  br label %95

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %78
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @get_send_wqe(%struct.mlx4_ib_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
