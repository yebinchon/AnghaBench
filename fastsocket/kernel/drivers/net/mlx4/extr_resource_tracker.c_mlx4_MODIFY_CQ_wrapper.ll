; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_MODIFY_CQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_MODIFY_CQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i64 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RES_CQ = common dso_local global i32 0, align 4
@RES_CQ_HW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_MODIFY_CQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.res_cq*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %18 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @RES_CQ, align 4
  %24 = call i32 @get_res(%struct.mlx4_dev* %20, i32 %21, i32 %22, i32 %23, %struct.res_cq** %15)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %7, align 4
  br label %66

29:                                               ; preds = %6
  %30 = load %struct.res_cq*, %struct.res_cq** %15, align 8
  %31 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RES_CQ_HW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %59

37:                                               ; preds = %29
  %38 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %47 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %48 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %49 = load %struct.res_cq*, %struct.res_cq** %15, align 8
  %50 = call i32 @handle_resize(%struct.mlx4_dev* %43, i32 %44, %struct.mlx4_vhcr* %45, %struct.mlx4_cmd_mailbox* %46, %struct.mlx4_cmd_mailbox* %47, %struct.mlx4_cmd_info* %48, %struct.res_cq* %49)
  store i32 %50, i32* %16, align 4
  br label %59

51:                                               ; preds = %37
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %55 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %57 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %58 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %52, i32 %53, %struct.mlx4_vhcr* %54, %struct.mlx4_cmd_mailbox* %55, %struct.mlx4_cmd_mailbox* %56, %struct.mlx4_cmd_info* %57)
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %51, %42, %36
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @RES_CQ, align 4
  %64 = call i32 @put_res(%struct.mlx4_dev* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %27
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_cq**) #1

declare dso_local i32 @handle_resize(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*, %struct.res_cq*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
