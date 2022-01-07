; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_create_iboe_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_create_iboe_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.mlx4_ib_ah = type { %struct.ib_ah, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.ib_gid = type { i32 }
%struct.TYPE_14__ = type { i32 }

@MLX4_STAT_RATE_OFFSET = common dso_local global i32 0, align 4
@IB_RATE_2_5_GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*)* @create_iboe_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @create_iboe_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1, %struct.mlx4_ib_ah* %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_ah_attr*, align 8
  %7 = alloca %struct.mlx4_ib_ah*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca %union.ib_gid, align 4
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %6, align 8
  store %struct.mlx4_ib_ah* %2, %struct.mlx4_ib_ah** %7, align 8
  %15 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %16 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %8, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %20, align 8
  store %struct.mlx4_dev* %21, %struct.mlx4_dev** %9, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %25 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mlx4_ib_resolve_grh(%struct.mlx4_ib_dev* %22, %struct.ib_ah_attr* %23, i32* %24, i32* %13, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.ib_ah* @ERR_PTR(i32 %32)
  store %struct.ib_ah* %33, %struct.ib_ah** %4, align 8
  br label %179

34:                                               ; preds = %3
  %35 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %41 = call i32 @memcpy(i32 %39, i32* %40, i32 6)
  %42 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %43 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ib_get_cached_gid(i32 %44, i32 %47, i32 %51, %union.ib_gid* %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.ib_ah* @ERR_PTR(i32 %56)
  store %struct.ib_ah* %57, %struct.ib_ah** %4, align 8
  br label %179

58:                                               ; preds = %34
  %59 = call i32 @rdma_get_vlan_id(%union.ib_gid* %10)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 4096
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 7
  %67 = shl i32 %66, 13
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %72 = call %struct.TYPE_14__* @to_mpd(%struct.ib_pd* %71)
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 24
  %79 = or i32 %74, %78
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  store i8* %80, i8** %84, align 8
  %85 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  store i32 %88, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @cpu_to_be16(i32 %93)
  %95 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %96 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  store i8* %94, i8** %98, align 8
  %99 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %70
  %104 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %108 = add nsw i32 %106, %107
  %109 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  br label %113

113:                                              ; preds = %139, %103
  %114 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IB_RATE_2_5_GBPS, align 4
  %120 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %113
  %124 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 1, %128
  %130 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %131 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %129, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br label %137

137:                                              ; preds = %123, %113
  %138 = phi i1 [ false, %113 ], [ %136, %123 ]
  br i1 %138, label %139, label %146

139:                                              ; preds = %137
  %140 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 8
  br label %113

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %70
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = call i8* @cpu_to_be16(i32 49152)
  %152 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %147
  %157 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %158 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %163 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @memcpy(i32 %161, i32* %166, i32 16)
  %168 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %169 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 29
  %172 = call i8* @cpu_to_be32(i32 %171)
  %173 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i8* %172, i8** %176, align 8
  %177 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %178 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %177, i32 0, i32 0
  store %struct.ib_ah* %178, %struct.ib_ah** %4, align 8
  br label %179

179:                                              ; preds = %156, %55, %31
  %180 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  ret %struct.ib_ah* %180
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx4_ib_resolve_grh(%struct.mlx4_ib_dev*, %struct.ib_ah_attr*, i32*, i32*, i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ib_get_cached_gid(i32, i32, i32, %union.ib_gid*) #1

declare dso_local i32 @rdma_get_vlan_id(%union.ib_gid*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_14__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
