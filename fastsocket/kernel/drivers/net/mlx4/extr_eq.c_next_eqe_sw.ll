; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_next_eqe_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_next_eqe_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_eqe = type { i32 }
%struct.mlx4_eq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_eqe* (%struct.mlx4_eq*, i32)* @next_eqe_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_eqe* @next_eqe_sw(%struct.mlx4_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_eqe*, align 8
  store %struct.mlx4_eq* %0, %struct.mlx4_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_eq*, %struct.mlx4_eq** %3, align 8
  %7 = load %struct.mlx4_eq*, %struct.mlx4_eq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mlx4_eqe* @get_eqe(%struct.mlx4_eq* %6, i32 %9, i32 %10)
  store %struct.mlx4_eqe* %11, %struct.mlx4_eqe** %5, align 8
  %12 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.mlx4_eq*, %struct.mlx4_eq** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_eq*, %struct.mlx4_eq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = xor i32 %19, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %36

34:                                               ; preds = %2
  %35 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %5, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi %struct.mlx4_eqe* [ null, %33 ], [ %35, %34 ]
  ret %struct.mlx4_eqe* %37
}

declare dso_local %struct.mlx4_eqe* @get_eqe(%struct.mlx4_eq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
