; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_private = type { i64, %struct.recv_desc_bufs*, %struct.recv_desc_bufs* }
%struct.recv_desc_bufs = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i64 }

@MAX_RX_DESCR = common dso_local global i32 0, align 4
@EMAC_DESC_WRAP = common dso_local global i32 0, align 4
@AT91_EMAC_RBQP = common dso_local global i32 0, align 4
@AT91_EMAC_CTL = common dso_local global i32 0, align 4
@AT91_EMAC_RE = common dso_local global i64 0, align 8
@AT91_EMAC_TE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91ether_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91ether_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_private*, align 8
  %4 = alloca %struct.recv_desc_bufs*, align 8
  %5 = alloca %struct.recv_desc_bufs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.at91_private* @netdev_priv(%struct.net_device* %8)
  store %struct.at91_private* %9, %struct.at91_private** %3, align 8
  %10 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %11 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %10, i32 0, i32 2
  %12 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %11, align 8
  store %struct.recv_desc_bufs* %12, %struct.recv_desc_bufs** %4, align 8
  %13 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %14 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %13, i32 0, i32 1
  %15 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %14, align 8
  store %struct.recv_desc_bufs* %15, %struct.recv_desc_bufs** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %44, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_RX_DESCR, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %5, align 8
  %22 = getelementptr inbounds %struct.recv_desc_bufs, %struct.recv_desc_bufs* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = ptrtoint i32* %28 to i32
  %30 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %4, align 8
  %31 = getelementptr inbounds %struct.recv_desc_bufs, %struct.recv_desc_bufs* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %4, align 8
  %38 = getelementptr inbounds %struct.recv_desc_bufs, %struct.recv_desc_bufs* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* @EMAC_DESC_WRAP, align 4
  %49 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %4, align 8
  %50 = getelementptr inbounds %struct.recv_desc_bufs, %struct.recv_desc_bufs* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %48
  store i32 %58, i32* %56, align 8
  %59 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %60 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @AT91_EMAC_RBQP, align 4
  %62 = load %struct.recv_desc_bufs*, %struct.recv_desc_bufs** %5, align 8
  %63 = ptrtoint %struct.recv_desc_bufs* %62 to i64
  %64 = call i32 @at91_emac_write(i32 %61, i64 %63)
  %65 = load i32, i32* @AT91_EMAC_CTL, align 4
  %66 = call i64 @at91_emac_read(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* @AT91_EMAC_CTL, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @AT91_EMAC_RE, align 8
  %70 = or i64 %68, %69
  %71 = load i64, i64* @AT91_EMAC_TE, align 8
  %72 = or i64 %70, %71
  %73 = call i32 @at91_emac_write(i32 %67, i64 %72)
  ret void
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_emac_write(i32, i64) #1

declare dso_local i64 @at91_emac_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
