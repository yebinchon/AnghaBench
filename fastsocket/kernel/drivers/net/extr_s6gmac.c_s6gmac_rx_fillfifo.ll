; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_rx_fillfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_rx_fillfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { i32, i32, i32, i64, %struct.sk_buff**, i64 }
%struct.sk_buff = type { i64 }

@S6_NUM_RX_SKB = common dso_local global i64 0, align 8
@S6_MAX_FRLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6gmac*)* @s6gmac_rx_fillfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_rx_fillfifo(%struct.s6gmac* %0) #0 {
  %2 = alloca %struct.s6gmac*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.s6gmac* %0, %struct.s6gmac** %2, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %6 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %9 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = load i64, i64* @S6_NUM_RX_SKB, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %16 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %19 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @s6dmac_fifo_full(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* @S6_MAX_FRLEN, align 8
  %25 = add nsw i64 %24, 2
  %26 = call %struct.sk_buff* @dev_alloc_skb(i64 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br label %28

28:                                               ; preds = %23, %14, %4
  %29 = phi i1 [ false, %14 ], [ false, %4 ], [ %27, %23 ]
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %33 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %32, i32 0, i32 4
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %36 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @S6_NUM_RX_SKB, align 8
  %40 = urem i64 %37, %39
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %40
  store %struct.sk_buff* %31, %struct.sk_buff** %41, align 8
  %42 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %43 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %46 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.s6gmac*, %struct.s6gmac** %2, align 8
  %49 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* @S6_MAX_FRLEN, align 8
  %56 = call i32 @s6dmac_put_fifo_cache(i32 %44, i32 %47, i32 %50, i32 %54, i64 %55)
  br label %4

57:                                               ; preds = %28
  ret void
}

declare dso_local i32 @s6dmac_fifo_full(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @s6dmac_put_fifo_cache(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
