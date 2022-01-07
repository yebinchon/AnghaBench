; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_verify_qp_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_verify_qp_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_ALT_ADDR_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32)* @verify_qp_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_qp_parameters(%struct.mlx4_dev* %0, %struct.mlx4_cmd_mailbox* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_qp_context*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_cmd_mailbox* %1, %struct.mlx4_cmd_mailbox** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %13, i32 0, i32 0
  %15 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %14, align 8
  %16 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %15, i64 8
  store %struct.mlx4_qp_context* %16, %struct.mlx4_qp_context** %11, align 8
  %17 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %11, align 8
  %18 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 0
  %25 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %24, align 8
  %26 = bitcast %struct.mlx4_qp_context* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %71 [
    i32 134, label %30
    i32 133, label %30
  ]

30:                                               ; preds = %4, %4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %69 [
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 128, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %35 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %34)
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %11, align 8
  %44 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %73

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MLX4_QP_OPTPAR_ALT_ADDR_PATH, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %11, align 8
  %60 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %73

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %53
  br label %70

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69, %68
  br label %72

71:                                               ; preds = %4
  br label %72

72:                                               ; preds = %71, %70
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %64, %48
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
