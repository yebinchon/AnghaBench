; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_ETH_PROPS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_ETH = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_RDMA = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FMR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_NUM_PORTS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PF_BHVR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PHYS_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RDMA_PROPS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RESERVED_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FUNC_CAP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %83

20:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @MLX4_PUT(i32 %23, i32 %24, i32 12)
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @MLX4_PUT(i32 %28, i32 %29, i32 8)
  %31 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @MLX4_PUT(i32 %36, i32 %37, i32 3)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 8, %43
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @MLX4_PUT(i32 %51, i32 %52, i32 16)
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %14, align 4
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %57 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @MLX4_PUT(i32 %58, i32 %59, i32 24)
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 8, %65
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %72 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @MLX4_PUT(i32 %73, i32 %74, i32 20)
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %14, align 4
  %78 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %79 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @MLX4_PUT(i32 %80, i32 %81, i32 28)
  br label %198

83:                                               ; preds = %6
  %84 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %194

88:                                               ; preds = %83
  store i32 192, i32* %13, align 4
  %89 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %90 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @MLX4_PUT(i32 %91, i32 %92, i32 0)
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %95 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %99 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @MLX4_PUT(i32 %100, i32 %101, i32 1)
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %104 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %14, align 4
  %107 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %108 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @MLX4_PUT(i32 %109, i32 %110, i32 4)
  store i32 0, i32* %13, align 4
  %112 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %113 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @MLX4_PUT(i32 %114, i32 %115, i32 8)
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %118 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %14, align 4
  %121 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %122 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @MLX4_PUT(i32 %123, i32 %124, i32 16)
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %131 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @MLX4_PUT(i32 %132, i32 %133, i32 24)
  %135 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  %139 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %140 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @MLX4_PUT(i32 %141, i32 %142, i32 20)
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %145 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %14, align 4
  %148 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %149 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @MLX4_PUT(i32 %150, i32 %151, i32 44)
  %153 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %154 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %14, align 4
  %157 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %158 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @MLX4_PUT(i32 %159, i32 %160, i32 48)
  %162 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %163 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %14, align 4
  %166 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %167 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @MLX4_PUT(i32 %168, i32 %169, i32 32)
  %171 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %172 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  %175 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %176 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @MLX4_PUT(i32 %177, i32 %178, i32 36)
  %180 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %185 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %183, %187
  store i32 %188, i32* %14, align 4
  %189 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %190 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @MLX4_PUT(i32 %191, i32 %192, i32 40)
  br label %197

194:                                              ; preds = %83
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %15, align 4
  br label %197

197:                                              ; preds = %194, %88
  br label %198

198:                                              ; preds = %197, %20
  %199 = load i32, i32* %15, align 4
  ret i32 %199
}

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
