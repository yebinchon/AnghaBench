; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_fill_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_fill_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { %struct.rxbuff_ent* }
%struct.rxbuff_ent = type { i64 }

@RXENT_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*)* @typhoon_fill_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_fill_free_ring(%struct.typhoon* %0) #0 {
  %2 = alloca %struct.typhoon*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rxbuff_ent*, align 8
  store %struct.typhoon* %0, %struct.typhoon** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @RXENT_ENTRIES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %11 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %10, i32 0, i32 0
  %12 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %12, i64 %13
  store %struct.rxbuff_ent* %14, %struct.rxbuff_ent** %4, align 8
  %15 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %4, align 8
  %16 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.typhoon*, %struct.typhoon** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @typhoon_alloc_rx_skb(%struct.typhoon* %21, i64 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %5

30:                                               ; preds = %25, %5
  ret void
}

declare dso_local i64 @typhoon_alloc_rx_skb(%struct.typhoon*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
