; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_cq_resize_copy_cqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_cq_resize_copy_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_cq = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_cqe = type { i32 }

@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_RESIZE = common dso_local global i32 0, align 4
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_cq*)* @mlx4_ib_cq_resize_copy_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_cq_resize_copy_cqes(%struct.mlx4_ib_cq* %0) #0 {
  %2 = alloca %struct.mlx4_ib_cq*, align 8
  %3 = alloca %struct.mlx4_cqe*, align 8
  %4 = alloca %struct.mlx4_cqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_ib_cq* %0, %struct.mlx4_ib_cq** %2, align 8
  %8 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 64
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %21, %25
  %27 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq* %20, i32 %26)
  store %struct.mlx4_cqe* %27, %struct.mlx4_cqe** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %3, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %29, i64 %30
  store %struct.mlx4_cqe* %31, %struct.mlx4_cqe** %3, align 8
  br label %32

32:                                               ; preds = %88, %1
  %33 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MLX4_CQE_OPCODE_RESIZE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %32
  %41 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %46, %51
  %53 = call %struct.mlx4_cqe* @get_cqe_from_buf(i32* %44, i32 %52)
  store %struct.mlx4_cqe* %53, %struct.mlx4_cqe** %4, align 8
  %54 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %4, align 8
  %55 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %56, %60
  %62 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq* %55, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @memcpy(%struct.mlx4_cqe* %54, %struct.mlx4_cqe* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %4, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %66, i64 %67
  store %struct.mlx4_cqe* %68, %struct.mlx4_cqe** %4, align 8
  %69 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = and i32 %76, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %40
  %86 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  br label %88

87:                                               ; preds = %40
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %74, %89
  %91 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  %96 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %95, %99
  %101 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq* %93, i32 %100)
  store %struct.mlx4_cqe* %101, %struct.mlx4_cqe** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %3, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %103, i64 %104
  store %struct.mlx4_cqe* %105, %struct.mlx4_cqe** %3, align 8
  br label %32

106:                                              ; preds = %32
  %107 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  ret void
}

declare dso_local %struct.mlx4_cqe* @get_cqe(%struct.mlx4_ib_cq*, i32) #1

declare dso_local %struct.mlx4_cqe* @get_cqe_from_buf(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_cqe*, %struct.mlx4_cqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
