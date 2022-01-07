; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_CQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_CQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_cq_context* }
%struct.mlx4_cq_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_cq = type { %struct.res_mtt* }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@RES_CQ_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SW2HW_CQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_cq_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.res_cq*, align 8
  %19 = alloca %struct.res_mtt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %20 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 0
  %25 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %24, align 8
  store %struct.mlx4_cq_context* %25, %struct.mlx4_cq_context** %16, align 8
  %26 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %16, align 8
  %27 = call i32 @cq_get_mtt_addr(%struct.mlx4_cq_context* %26)
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %27, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @RES_CQ_HW, align 4
  %37 = call i32 @cq_res_start_move_to(%struct.mlx4_dev* %33, i32 %34, i32 %35, i32 %36, %struct.res_cq** %18)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %109

42:                                               ; preds = %6
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @RES_MTT, align 4
  %47 = call i32 @get_res(%struct.mlx4_dev* %43, i32 %44, i32 %45, i32 %46, %struct.res_mtt** %19)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %102

51:                                               ; preds = %42
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %16, align 8
  %56 = call i32 @cq_get_mtt_size(%struct.mlx4_cq_context* %55)
  %57 = load %struct.res_mtt*, %struct.res_mtt** %19, align 8
  %58 = call i32 @check_mtt_range(%struct.mlx4_dev* %52, i32 %53, i32 %54, i32 %56, %struct.res_mtt* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %93

62:                                               ; preds = %51
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %66 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %67 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %68 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %69 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %63, i32 %64, %struct.mlx4_vhcr* %65, %struct.mlx4_cmd_mailbox* %66, %struct.mlx4_cmd_mailbox* %67, %struct.mlx4_cmd_info* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %93

73:                                               ; preds = %62
  %74 = load %struct.res_mtt*, %struct.res_mtt** %19, align 8
  %75 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %74, i32 0, i32 1
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = load %struct.res_mtt*, %struct.res_mtt** %19, align 8
  %78 = load %struct.res_cq*, %struct.res_cq** %18, align 8
  %79 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %78, i32 0, i32 0
  store %struct.res_mtt* %77, %struct.res_mtt** %79, align 8
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.res_mtt*, %struct.res_mtt** %19, align 8
  %83 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RES_MTT, align 4
  %87 = call i32 @put_res(%struct.mlx4_dev* %80, i32 %81, i32 %85, i32 %86)
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RES_CQ, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @res_end_move(%struct.mlx4_dev* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %7, align 4
  br label %109

93:                                               ; preds = %72, %61
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.res_mtt*, %struct.res_mtt** %19, align 8
  %97 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RES_MTT, align 4
  %101 = call i32 @put_res(%struct.mlx4_dev* %94, i32 %95, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %50
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RES_CQ, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @res_abort_move(%struct.mlx4_dev* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %102, %73, %40
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @cq_get_mtt_addr(%struct.mlx4_cq_context*) #1

declare dso_local i32 @cq_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_cq**) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @cq_get_mtt_size(%struct.mlx4_cq_context*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
