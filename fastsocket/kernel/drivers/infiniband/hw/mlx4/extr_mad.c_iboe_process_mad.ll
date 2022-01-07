; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_iboe_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_iboe_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }
%struct.mlx4_ib_dev = type { i32*, i32 }
%struct.mlx4_counter = type { i32 }

@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_IF_STAT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @iboe_process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iboe_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %17 = alloca %struct.mlx4_ib_dev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %22 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %17, align 8
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %17, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %19, align 4
  %32 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %33 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %104

41:                                               ; preds = %7
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %17, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %44)
  store %struct.mlx4_cmd_mailbox* %45, %struct.mlx4_cmd_mailbox** %16, align 8
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %47 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %50, i32* %8, align 4
  br label %104

51:                                               ; preds = %41
  %52 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %17, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %56 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @MLX4_CMD_QUERY_IF_STAT, align 4
  %60 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %61 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %62 = call i32 @mlx4_cmd_box(i32 %54, i32 0, i32 %57, i32 %58, i32 0, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %66, i32* %18, align 4
  br label %97

67:                                               ; preds = %51
  %68 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %69 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memset(i32 %70, i32 0, i32 4)
  %72 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %73 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.mlx4_counter*
  %76 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = and i32 %78, 15
  switch i32 %79, label %94 [
    i32 0, label %80
  ]

80:                                               ; preds = %67
  %81 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %82 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %85 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 40
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @edit_counter(i64 %83, i8* %89)
  %91 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %92 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %18, align 4
  br label %96

94:                                               ; preds = %67
  %95 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %94, %80
  br label %97

97:                                               ; preds = %96, %65
  %98 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %17, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %102 = call i32 @mlx4_free_cmd_mailbox(i32 %100, %struct.mlx4_cmd_mailbox* %101)
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %97, %49, %38
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @edit_counter(i64, i8*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
