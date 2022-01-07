; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_edit_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_edit_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_counter = type { i32, i32, i32, i32 }
%struct.ib_pma_portcounters = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_counter*, %struct.ib_pma_portcounters*)* @edit_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edit_counter(%struct.mlx4_counter* %0, %struct.ib_pma_portcounters* %1) #0 {
  %3 = alloca %struct.mlx4_counter*, align 8
  %4 = alloca %struct.ib_pma_portcounters*, align 8
  store %struct.mlx4_counter* %0, %struct.mlx4_counter** %3, align 8
  store %struct.ib_pma_portcounters* %1, %struct.ib_pma_portcounters** %4, align 8
  %5 = load %struct.mlx4_counter*, %struct.mlx4_counter** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be64_to_cpu(i32 %7)
  %9 = ashr i32 %8, 2
  %10 = call i8* @cpu_to_be32(i32 %9)
  %11 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load %struct.mlx4_counter*, %struct.mlx4_counter** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be64_to_cpu(i32 %15)
  %17 = ashr i32 %16, 2
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %4, align 8
  %20 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.mlx4_counter*, %struct.mlx4_counter** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be64_to_cpu(i32 %23)
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %4, align 8
  %27 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mlx4_counter*, %struct.mlx4_counter** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_counter, %struct.mlx4_counter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be64_to_cpu(i32 %30)
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %4, align 8
  %34 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
