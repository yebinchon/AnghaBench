; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i32, i32*, i64, i32, i32, i32, i32* }

@bpq_netdev_ops = common dso_local global i32 0, align 4
@free_netdev = common dso_local global i32 0, align 4
@ax25_bcast = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ax25_defaddr = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_DEF_PACLEN = common dso_local global i32 0, align 4
@ax25_header_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bpq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpq_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 9
  store i32* @bpq_netdev_ops, i32** %4, align 8
  %5 = load i32, i32* @free_netdev, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AX25_ADDR_LEN, align 4
  %12 = call i32 @memcpy(i32 %10, i32* @ax25_bcast, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AX25_ADDR_LEN, align 4
  %17 = call i32 @memcpy(i32 %15, i32* @ax25_defaddr, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ARPHRD_AX25, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %24 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @AX25_DEF_PACLEN, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AX25_ADDR_LEN, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
