; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mcg.c_mlx4_PROMISC_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mcg.c_mlx4_PROMISC_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i64 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@MLX4_UC_STEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_PROMISC_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
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
  %20 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 62
  store i32 %23, i32* %15, align 4
  %24 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %25 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %28 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @MLX4_UC_STEER, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %52

35:                                               ; preds = %30, %6
  %36 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @add_promisc_qp(%struct.mlx4_dev* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @remove_promisc_qp(%struct.mlx4_dev* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %40, %34
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @add_promisc_qp(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @remove_promisc_qp(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
