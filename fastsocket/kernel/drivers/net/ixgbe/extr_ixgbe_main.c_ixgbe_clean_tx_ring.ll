; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, i64, %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer* }
%struct.ixgbe_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*)* @ixgbe_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_clean_tx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca %struct.ixgbe_tx_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %6 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %6, i32 0, i32 5
  %8 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %9 = icmp ne %struct.ixgbe_tx_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 5
  %21 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %21, i64 %22
  store %struct.ixgbe_tx_buffer* %23, %struct.ixgbe_tx_buffer** %3, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %25 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %3, align 8
  %26 = call i32 @ixgbe_unmap_and_free_tx_resource(%struct.ixgbe_ring* %24, %struct.ixgbe_tx_buffer* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 4, %33
  store i64 %34, i64* %4, align 8
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %35, i32 0, i32 5
  %37 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @memset(%struct.ixgbe_tx_buffer* %37, i32 0, i64 %38)
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 4
  %42 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %41, align 8
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @memset(%struct.ixgbe_tx_buffer* %42, i32 0, i64 %45)
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @ixgbe_unmap_and_free_tx_resource(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i32 @memset(%struct.ixgbe_tx_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
