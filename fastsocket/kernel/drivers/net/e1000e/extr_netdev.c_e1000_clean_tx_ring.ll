; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i64, i32, %struct.TYPE_2__*, i32, i64, i64, %struct.e1000_buffer*, %struct.e1000_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_buffer = type { i32 }

@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*)* @e1000_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clean_tx_ring(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %13, i32 0, i32 8
  %15 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %15, i64 %17
  store %struct.e1000_buffer* %18, %struct.e1000_buffer** %3, align 8
  %19 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %20 = load %struct.e1000_buffer*, %struct.e1000_buffer** %3, align 8
  %21 = call i32 @e1000_put_txbuf(%struct.e1000_ring* %19, %struct.e1000_buffer* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = zext i32 %28 to i64
  %30 = mul i64 4, %29
  store i64 %30, i64* %4, align 8
  %31 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %31, i32 0, i32 8
  %33 = load %struct.e1000_buffer*, %struct.e1000_buffer** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @memset(%struct.e1000_buffer* %33, i32 0, i64 %34)
  %36 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %36, i32 0, i32 7
  %38 = load %struct.e1000_buffer*, %struct.e1000_buffer** %37, align 8
  %39 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %40 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memset(%struct.e1000_buffer* %38, i32 0, i64 %41)
  %43 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @writel(i32 0, i32 %49)
  %51 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %25
  %60 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %61 = call i32 @e1000e_update_tdt_wa(%struct.e1000_ring* %60, i32 0)
  br label %67

62:                                               ; preds = %25
  %63 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %64 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @writel(i32 0, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @e1000_put_txbuf(%struct.e1000_ring*, %struct.e1000_buffer*) #1

declare dso_local i32 @memset(%struct.e1000_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @e1000e_update_tdt_wa(%struct.e1000_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
