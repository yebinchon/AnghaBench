; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_cancel_tx_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_cancel_tx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_txqueue = type { %struct.TYPE_4__*, %struct.b43_pio_txpacket* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_pio_txpacket = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_pio_txqueue*)* @b43_pio_cancel_tx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_pio_cancel_tx_packets(%struct.b43_pio_txqueue* %0) #0 {
  %2 = alloca %struct.b43_pio_txqueue*, align 8
  %3 = alloca %struct.b43_pio_txpacket*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_pio_txqueue* %0, %struct.b43_pio_txqueue** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %8 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %7, i32 0, i32 1
  %9 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.b43_pio_txpacket* %9)
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %5
  %13 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %14 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %13, i32 0, i32 1
  %15 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %15, i64 %17
  store %struct.b43_pio_txpacket* %18, %struct.b43_pio_txpacket** %3, align 8
  %19 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %3, align 8
  %20 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %25 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %3, align 8
  %32 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ieee80211_free_txskb(i32 %30, i32* %33)
  %35 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %3, align 8
  %36 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %23, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.b43_pio_txpacket*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
