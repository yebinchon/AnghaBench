; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_ipoib_csum_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_ipoib_csum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX4_CQE_STATUS_IPV4 = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPV4F = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPV4OPT = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPV6 = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPOK = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_UDP = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mlx4_ib_ipoib_csum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_ipoib_csum_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLX4_CQE_STATUS_IPV4, align 4
  %7 = load i32, i32* @MLX4_CQE_STATUS_IPV4F, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MLX4_CQE_STATUS_IPV4OPT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MLX4_CQE_STATUS_IPV6, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MLX4_CQE_STATUS_IPOK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @cpu_to_be16(i32 %14)
  %16 = and i32 %5, %15
  %17 = load i32, i32* @MLX4_CQE_STATUS_IPV4, align 4
  %18 = load i32, i32* @MLX4_CQE_STATUS_IPOK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @cpu_to_be16(i32 %19)
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MLX4_CQE_STATUS_UDP, align 4
  %25 = load i32, i32* @MLX4_CQE_STATUS_TCP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cpu_to_be16(i32 %26)
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cpu_to_be16(i32 65535)
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %22, %2
  %35 = phi i1 [ false, %22 ], [ false, %2 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
