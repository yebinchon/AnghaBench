; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_SRQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_SRQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_srq_context* }
%struct.mlx4_srq_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.res_srq = type { %struct.res_mtt* }

@EINVAL = common dso_local global i32 0, align 4
@RES_SRQ_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SW2HW_SRQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_srq*, align 8
  %18 = alloca %struct.mlx4_srq_context*, align 8
  %19 = alloca i32, align 4
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
  %25 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %24, align 8
  store %struct.mlx4_srq_context* %25, %struct.mlx4_srq_context** %18, align 8
  %26 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %27 = call i32 @srq_get_mtt_addr(%struct.mlx4_srq_context* %26)
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %27, %31
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %35 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = and i32 %37, 16777215
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %120

43:                                               ; preds = %6
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @RES_SRQ_HW, align 4
  %48 = call i32 @srq_res_start_move_to(%struct.mlx4_dev* %44, i32 %45, i32 %46, i32 %47, %struct.res_srq** %17)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %120

53:                                               ; preds = %43
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @RES_MTT, align 4
  %58 = call i32 @get_res(%struct.mlx4_dev* %54, i32 %55, i32 %56, i32 %57, %struct.res_mtt** %16)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %113

62:                                               ; preds = %53
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %67 = call i32 @srq_get_mtt_size(%struct.mlx4_srq_context* %66)
  %68 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %69 = call i32 @check_mtt_range(%struct.mlx4_dev* %63, i32 %64, i32 %65, i32 %67, %struct.res_mtt* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %104

73:                                               ; preds = %62
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %77 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %78 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %79 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %80 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %74, i32 %75, %struct.mlx4_vhcr* %76, %struct.mlx4_cmd_mailbox* %77, %struct.mlx4_cmd_mailbox* %78, %struct.mlx4_cmd_info* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %104

84:                                               ; preds = %73
  %85 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %86 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %85, i32 0, i32 1
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %89 = load %struct.res_srq*, %struct.res_srq** %17, align 8
  %90 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %89, i32 0, i32 0
  store %struct.res_mtt* %88, %struct.res_mtt** %90, align 8
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %94 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RES_MTT, align 4
  %98 = call i32 @put_res(%struct.mlx4_dev* %91, i32 %92, i32 %96, i32 %97)
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RES_SRQ, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @res_end_move(%struct.mlx4_dev* %99, i32 %100, i32 %101, i32 %102)
  store i32 0, i32* %7, align 4
  br label %120

104:                                              ; preds = %83, %72
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %108 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RES_MTT, align 4
  %112 = call i32 @put_res(%struct.mlx4_dev* %105, i32 %106, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %61
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @RES_SRQ, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @res_abort_move(%struct.mlx4_dev* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %113, %84, %51, %40
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @srq_get_mtt_addr(%struct.mlx4_srq_context*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @srq_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @srq_get_mtt_size(%struct.mlx4_srq_context*) #1

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
