; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_parav_master_pf_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_parav_master_pf_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_parav_master_pf_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_parav_master_pf_caps(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %5, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 1, i32* %18, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %27, i64* %34, align 8
  br label %35

35:                                               ; preds = %11
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
