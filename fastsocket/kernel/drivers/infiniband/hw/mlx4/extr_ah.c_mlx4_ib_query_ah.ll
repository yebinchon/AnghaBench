; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_query_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_6__, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@MLX4_STAT_RATE_OFFSET = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.mlx4_ib_ah*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = call %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah* %7)
  store %struct.mlx4_ib_ah* %8, %struct.mlx4_ib_ah** %5, align 8
  %9 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %10 = call i32 @memset(%struct.ib_ah_attr* %9, i32 0, i32 56)
  %11 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = ashr i32 %16, 28
  %18 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = ashr i32 %25, 24
  %27 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %28 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %30 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %33 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rdma_port_get_link_layer(i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be16_to_cpu(i32 %44)
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %45, %39 ], [ 0, %46 ]
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %50 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MLX4_STAT_RATE_OFFSET, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %66 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %47
  %68 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 127
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %77 = call i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %67
  %80 = load i32, i32* @IB_AH_GRH, align 4
  %81 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = ashr i32 %88, 20
  %90 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %91 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = and i32 %98, 1048575
  %100 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %101 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %109 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 4
  %111 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %117 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %120 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %123, i32 %128, i32 16)
  br label %130

130:                                              ; preds = %79, %67
  ret i32 0
}

declare dso_local %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
