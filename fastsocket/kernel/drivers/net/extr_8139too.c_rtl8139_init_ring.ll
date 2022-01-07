; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8139_private = type { i32*, i32**, i64, i64, i64 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@TX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8139_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8139_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8139_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rtl8139_private* @netdev_priv(%struct.net_device* %5)
  store %struct.rtl8139_private* %6, %struct.rtl8139_private** %3, align 8
  %7 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NUM_TX_DESC, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TX_BUF_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %27 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* %25, i32** %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13

35:                                               ; preds = %13
  ret void
}

declare dso_local %struct.rtl8139_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
