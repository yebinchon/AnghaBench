; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbevf_ring = type { i32, i64, i64, i64, i64, i64, %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer* }
%struct.ixgbevf_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_clean_tx_ring(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %8, i32 0, i32 7
  %10 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %9, align 8
  %11 = icmp ne %struct.ixgbevf_tx_buffer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %84

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %21, i32 0, i32 7
  %23 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %23, i64 %25
  store %struct.ixgbevf_tx_buffer* %26, %struct.ixgbevf_tx_buffer** %5, align 8
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %28 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %5, align 8
  %29 = call i32 @ixgbevf_unmap_and_free_tx_resource(%struct.ixgbevf_ring* %27, %struct.ixgbevf_tx_buffer* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = mul i64 4, %37
  store i64 %38, i64* %6, align 8
  %39 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %39, i32 0, i32 7
  %41 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @memset(%struct.ixgbevf_tx_buffer* %41, i32 0, i64 %42)
  %44 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %44, i32 0, i32 6
  %46 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %45, align 8
  %47 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memset(%struct.ixgbevf_tx_buffer* %46, i32 0, i64 %49)
  %51 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %33
  %60 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  br label %69

69:                                               ; preds = %59, %33
  %70 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = call i32 @writel(i32 0, i64 %82)
  br label %84

84:                                               ; preds = %12, %74, %69
  ret void
}

declare dso_local i32 @ixgbevf_unmap_and_free_tx_resource(%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*) #1

declare dso_local i32 @memset(%struct.ixgbevf_tx_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
