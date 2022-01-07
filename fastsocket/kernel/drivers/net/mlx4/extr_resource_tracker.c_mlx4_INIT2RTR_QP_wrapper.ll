; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@QP_TRANS_INIT2RTR = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@RES_QP_HW = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT2RTR_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_qp_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %20 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %19, i32 0, i32 0
  %21 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %20, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %21, i64 8
  store %struct.mlx4_qp_context* %22, %struct.mlx4_qp_context** %15, align 8
  %23 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 8388607
  store i32 %26, i32* %16, align 4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %29 = load i32, i32* @QP_TRANS_INIT2RTR, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @verify_qp_parameters(%struct.mlx4_dev* %27, %struct.mlx4_cmd_mailbox* %28, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %104

36:                                               ; preds = %6
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %40 = call i32 @update_pkey_index(%struct.mlx4_dev* %37, i32 %38, %struct.mlx4_cmd_mailbox* %39)
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @update_gid(%struct.mlx4_dev* %41, %struct.mlx4_cmd_mailbox* %42, i32 %43)
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %46 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %47 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %48 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %45, %struct.mlx4_vhcr* %46, %struct.mlx4_qp_context* %47)
  %49 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %50 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %54 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @update_vport_qp_param(%struct.mlx4_dev* %53, %struct.mlx4_cmd_mailbox* %54, i32 %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %36
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %7, align 4
  br label %104

62:                                               ; preds = %36
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @RES_QP, align 4
  %67 = call i32 @get_res(%struct.mlx4_dev* %63, i32 %64, i32 %65, i32 %66, %struct.res_qp** %17)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %104

72:                                               ; preds = %62
  %73 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %74 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RES_QP_HW, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %90

82:                                               ; preds = %72
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %86 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %87 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %88 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %89 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %83, i32 %84, %struct.mlx4_vhcr* %85, %struct.mlx4_cmd_mailbox* %86, %struct.mlx4_cmd_mailbox* %87, %struct.mlx4_cmd_info* %88)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %82, %79
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %96 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @RES_QP, align 4
  %102 = call i32 @put_res(%struct.mlx4_dev* %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %70, %60, %34
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @verify_qp_parameters(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @update_gid(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_vport_qp_param(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
