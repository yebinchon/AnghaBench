; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SQD2RTS_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SQD2RTS_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@QP_TRANS_SQD2RTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SQD2RTS_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_qp_context*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %17 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %16, i32 0, i32 0
  %18 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %17, align 8
  %19 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %18, i64 8
  store %struct.mlx4_qp_context* %19, %struct.mlx4_qp_context** %15, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %22 = load i32, i32* @QP_TRANS_SQD2RTS, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @verify_qp_parameters(%struct.mlx4_dev* %20, %struct.mlx4_cmd_mailbox* %21, i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %49

29:                                               ; preds = %6
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %32 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %33 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %30, %struct.mlx4_vhcr* %31, %struct.mlx4_qp_context* %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @update_gid(%struct.mlx4_dev* %34, %struct.mlx4_cmd_mailbox* %35, i32 %36)
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %41 = call i32 @update_pkey_index(%struct.mlx4_dev* %38, i32 %39, %struct.mlx4_cmd_mailbox* %40)
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %45 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %47 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %48 = call i32 @mlx4_GEN_QP_wrapper(%struct.mlx4_dev* %42, i32 %43, %struct.mlx4_vhcr* %44, %struct.mlx4_cmd_mailbox* %45, %struct.mlx4_cmd_mailbox* %46, %struct.mlx4_cmd_info* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %29, %27
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @verify_qp_parameters(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_gid(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_GEN_QP_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
