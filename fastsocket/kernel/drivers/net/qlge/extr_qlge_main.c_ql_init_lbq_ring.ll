; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_init_lbq_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_init_lbq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.rx_ring = type { i32, %struct.bq_desc*, i32* }
%struct.bq_desc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_init_lbq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_init_lbq_ring(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq_desc*, align 8
  %7 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  %8 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %11, i32 0, i32 1
  %13 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %14 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 16
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(%struct.bq_desc* %13, i32 0, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %28, i32 0, i32 1
  %30 = load %struct.bq_desc*, %struct.bq_desc** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %30, i64 %32
  store %struct.bq_desc* %33, %struct.bq_desc** %6, align 8
  %34 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %35 = call i32 @memset(%struct.bq_desc* %34, i32 0, i32 16)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %38 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.bq_desc*, %struct.bq_desc** %6, align 8
  %41 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %7, align 8
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %21

47:                                               ; preds = %21
  ret void
}

declare dso_local i32 @memset(%struct.bq_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
