; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mcg.c_mlx4_flow_steer_promisc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mcg.c_mlx4_flow_steer_promisc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i64*, i64* }
%struct.mlx4_net_trans_rule = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"going promisc on %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_flow_steer_promisc_add(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_net_trans_rule, align 8
  %11 = alloca i64*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 128, label %19
  ]

13:                                               ; preds = %4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64* %18, i64** %11, align 8
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** %11, align 8
  br label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %46

26:                                               ; preds = %19, %13
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %10, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @mlx4_err(%struct.mlx4_dev* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = call i32 @mlx4_flow_attach(%struct.mlx4_dev* %43, %struct.mlx4_net_trans_rule* %10, i64* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %31, %30, %25
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mlx4_flow_attach(%struct.mlx4_dev*, %struct.mlx4_net_trans_rule*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
