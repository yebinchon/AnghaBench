; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_update_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_update_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rx_ring*)* @ql_update_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_cq(%struct.rx_ring* %0) #0 {
  %2 = alloca %struct.rx_ring*, align 8
  store %struct.rx_ring* %0, %struct.rx_ring** %2, align 8
  %3 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %4 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %8 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %12 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %23 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %25 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rx_ring*, %struct.rx_ring** %2, align 8
  %28 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
