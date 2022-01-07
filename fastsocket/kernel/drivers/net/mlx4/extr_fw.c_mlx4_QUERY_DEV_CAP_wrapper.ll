; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_cmd_mailbox*, i32 }
%struct.mlx4_cmd_info = type { i32 }

@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BF_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BMME_FLAGS_OFFSET = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_DEV_CAP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %20 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %23 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %24 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %25 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %18, i32 0, i32 %21, i32 0, i32 0, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %7, align 4
  br label %114

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %33 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %32, i32 0, i32 0
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %33, align 8
  %35 = load i32, i32* @QUERY_DEV_CAP_EXT_FLAGS_OFFSET, align 4
  %36 = call i32 @MLX4_GET(i32 %31, %struct.mlx4_cmd_mailbox* %34, i32 %35)
  %37 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %14, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %45 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %44, i32 0, i32 0
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @QUERY_DEV_CAP_EXT_FLAGS_OFFSET, align 4
  %49 = call i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %52 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %51, i32 0, i32 0
  %53 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %52, align 8
  %54 = load i32, i32* @QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET, align 4
  %55 = call i32 @MLX4_GET(i32 %50, %struct.mlx4_cmd_mailbox* %53, i32 %54)
  %56 = load i32, i32* %16, align 4
  %57 = and i32 %56, 127
  store i32 %57, i32* %16, align 4
  %58 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %59 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %58, i32 0, i32 0
  %60 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET, align 4
  %63 = call i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %66 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %65, i32 0, i32 0
  %67 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %66, align 8
  %68 = load i32, i32* @QUERY_DEV_CAP_BF_OFFSET, align 4
  %69 = call i32 @MLX4_GET(i32 %64, %struct.mlx4_cmd_mailbox* %67, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %70, 127
  store i32 %71, i32* %16, align 4
  %72 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %73 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %72, i32 0, i32 0
  %74 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @QUERY_DEV_CAP_BF_OFFSET, align 4
  %77 = call i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %80 = load i32, i32* @QUERY_DEV_CAP_BMME_FLAGS_OFFSET, align 4
  %81 = call i32 @MLX4_GET(i32 %78, %struct.mlx4_cmd_mailbox* %79, i32 %80)
  %82 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %17, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %17, align 4
  %86 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %87 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %86, i32 0, i32 0
  %88 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @QUERY_DEV_CAP_BMME_FLAGS_OFFSET, align 4
  %91 = call i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox* %88, i32 %89, i32 %90)
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %30
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %101 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %100, i32 0, i32 0
  %102 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %101, align 8
  %103 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET, align 4
  %104 = call i32 @MLX4_GET(i32 %99, %struct.mlx4_cmd_mailbox* %102, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = and i32 %105, 127
  store i32 %106, i32* %16, align 4
  %107 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %108 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %107, i32 0, i32 0
  %109 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET, align 4
  %112 = call i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %98, %30
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %28
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @MLX4_PUT(%struct.mlx4_cmd_mailbox*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
