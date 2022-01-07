; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_header_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_header_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hh_cache = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ISDN_NET_ENCAP_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, %struct.hh_cache*)* @isdn_header_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_header_cache(%struct.neighbour* %0, %struct.hh_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.hh_cache*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store %struct.hh_cache* %1, %struct.hh_cache** %5, align 8
  %8 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %9 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISDN_NET_ENCAP_ETHER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %20 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %21 = call i32 @eth_header_cache(%struct.neighbour* %19, %struct.hh_cache* %20)
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_header_cache(%struct.neighbour*, %struct.hh_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
