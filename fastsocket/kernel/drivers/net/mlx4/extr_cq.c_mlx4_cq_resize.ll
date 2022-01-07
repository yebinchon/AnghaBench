; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cq.c_mlx4_cq_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cq.c_mlx4_cq_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_mtt = type { i64 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_cq_context* }
%struct.mlx4_cq_context = type { i32, i8*, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cq_resize(%struct.mlx4_dev* %0, %struct.mlx4_cq* %1, i32 %2, %struct.mlx4_mtt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_mtt*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cq_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_cq* %1, %struct.mlx4_cq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_mtt* %3, %struct.mlx4_mtt** %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %10, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 0
  %25 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %24, align 8
  store %struct.mlx4_cq_context* %25, %struct.mlx4_cq_context** %11, align 8
  %26 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %11, align 8
  %27 = call i32 @memset(%struct.mlx4_cq_context* %26, i32 0, i32 32)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ilog2(i32 %28)
  %30 = shl i32 %29, 24
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %11, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq_context, %struct.mlx4_cq_context* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %35 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 12
  %38 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %11, align 8
  %39 = getelementptr inbounds %struct.mlx4_cq_context, %struct.mlx4_cq_context* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %41 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %42 = call i32 @mlx4_mtt_addr(%struct.mlx4_dev* %40, %struct.mlx4_mtt* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 32
  %45 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %11, align 8
  %46 = getelementptr inbounds %struct.mlx4_cq_context, %struct.mlx4_cq_context* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_cq_context, %struct.mlx4_cq_context* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %52 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %53 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx4_MODIFY_CQ(%struct.mlx4_dev* %51, %struct.mlx4_cmd_mailbox* %52, i32 %55, i32 0)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %58 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %59 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %57, %struct.mlx4_cmd_mailbox* %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %22, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_cq_context*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_mtt_addr(%struct.mlx4_dev*, %struct.mlx4_mtt*) #1

declare dso_local i32 @mlx4_MODIFY_CQ(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
