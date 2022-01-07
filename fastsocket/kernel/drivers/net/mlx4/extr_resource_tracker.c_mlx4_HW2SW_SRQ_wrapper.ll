; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_HW2SW_SRQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_HW2SW_SRQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_srq = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RES_SRQ_ALLOCATED = common dso_local global i32 0, align 4
@RES_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_HW2SW_SRQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_srq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %18 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @RES_SRQ_ALLOCATED, align 4
  %24 = call i32 @srq_res_start_move_to(%struct.mlx4_dev* %20, i32 %21, i32 %22, i32 %23, %struct.res_srq** %16)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %69

29:                                               ; preds = %6
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %35 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %36 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %30, i32 %31, %struct.mlx4_vhcr* %32, %struct.mlx4_cmd_mailbox* %33, %struct.mlx4_cmd_mailbox* %34, %struct.mlx4_cmd_info* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %62

40:                                               ; preds = %29
  %41 = load %struct.res_srq*, %struct.res_srq** %16, align 8
  %42 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load %struct.res_srq*, %struct.res_srq** %16, align 8
  %47 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.res_srq*, %struct.res_srq** %16, align 8
  %52 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  br label %56

56:                                               ; preds = %50, %40
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @RES_SRQ, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @res_end_move(%struct.mlx4_dev* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %7, align 4
  br label %69

62:                                               ; preds = %39
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RES_SRQ, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @res_abort_move(%struct.mlx4_dev* %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %56, %27
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @srq_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
