; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_update_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_update_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLX4_QP_ST_UD = common dso_local global i64 0, align 8
@MLX4_QP_ST_RC = common dso_local global i64 0, align 8
@MLX4_QP_ST_UC = common dso_local global i64 0, align 8
@MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_ALT_ADDR_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32)* @update_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gid(%struct.mlx4_dev* %0, %struct.mlx4_cmd_mailbox* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_qp_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_cmd_mailbox* %1, %struct.mlx4_cmd_mailbox** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %10, i32 0, i32 0
  %12 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %11, align 8
  %13 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %12, i64 8
  store %struct.mlx4_qp_context* %13, %struct.mlx4_qp_context** %7, align 8
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %14, i32 0, i32 0
  %16 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %17 = bitcast %struct.mlx4_qp_context* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @MLX4_QP_ST_UD, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = or i32 128, %31
  %33 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load i64, i64* @MLX4_QP_ST_RC, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @MLX4_QP_ST_UC, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 127
  %52 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MLX4_QP_OPTPAR_ALT_ADDR_PATH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 127
  %63 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %40
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
