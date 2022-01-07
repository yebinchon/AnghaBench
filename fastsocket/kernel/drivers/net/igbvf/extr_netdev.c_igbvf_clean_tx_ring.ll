; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i32, i64, i64, i64, i64, i64, %struct.igbvf_buffer*, %struct.igbvf_buffer*, %struct.igbvf_adapter* }
%struct.igbvf_buffer = type { i32 }
%struct.igbvf_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_ring*)* @igbvf_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_clean_tx_ring(%struct.igbvf_ring* %0) #0 {
  %2 = alloca %struct.igbvf_ring*, align 8
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca %struct.igbvf_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %2, align 8
  %7 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %7, i32 0, i32 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %8, align 8
  store %struct.igbvf_adapter* %9, %struct.igbvf_adapter** %3, align 8
  %10 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %11 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %10, i32 0, i32 7
  %12 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %11, align 8
  %13 = icmp ne %struct.igbvf_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %19 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %24 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %23, i32 0, i32 7
  %25 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %25, i64 %27
  store %struct.igbvf_buffer* %28, %struct.igbvf_buffer** %4, align 8
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %30 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %4, align 8
  %31 = call i32 @igbvf_put_txbuf(%struct.igbvf_adapter* %29, %struct.igbvf_buffer* %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %37 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = mul i64 4, %39
  store i64 %40, i64* %5, align 8
  %41 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %42 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %41, i32 0, i32 7
  %43 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @memset(%struct.igbvf_buffer* %43, i32 0, i64 %44)
  %46 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %47 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %46, i32 0, i32 6
  %48 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %47, align 8
  %49 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %50 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memset(%struct.igbvf_buffer* %48, i32 0, i64 %51)
  %53 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %54 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %56 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %62 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  %66 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.igbvf_ring*, %struct.igbvf_ring** %2, align 8
  %71 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @writel(i32 0, i64 %73)
  br label %75

75:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @igbvf_put_txbuf(%struct.igbvf_adapter*, %struct.igbvf_buffer*) #1

declare dso_local i32 @memset(%struct.igbvf_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
