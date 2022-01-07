; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_close_hca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_close_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_close_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_close_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %3 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %4 = call i32 @unmap_internal_clock(%struct.mlx4_dev* %3)
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call i32 @unmap_bf_area(%struct.mlx4_dev* %5)
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %8 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %12 = call i32 @mlx4_slave_exit(%struct.mlx4_dev* %11)
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %15 = call i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev* %14, i32 0)
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %17 = call i32 @mlx4_free_icms(%struct.mlx4_dev* %16)
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %19 = call i32 @mlx4_UNMAP_FA(%struct.mlx4_dev* %18)
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %22 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %20, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @unmap_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i32 @unmap_bf_area(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_exit(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_free_icms(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_UNMAP_FA(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
