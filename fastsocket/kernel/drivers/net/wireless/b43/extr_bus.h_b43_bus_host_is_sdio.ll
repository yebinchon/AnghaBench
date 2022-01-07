; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_bus.h_b43_bus_host_is_sdio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_bus.h_b43_bus_host_is_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_bus_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@B43_BUS_SSB = common dso_local global i64 0, align 8
@SSB_BUSTYPE_SDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_bus_dev*)* @b43_bus_host_is_sdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_bus_host_is_sdio(%struct.b43_bus_dev* %0) #0 {
  %2 = alloca %struct.b43_bus_dev*, align 8
  store %struct.b43_bus_dev* %0, %struct.b43_bus_dev** %2, align 8
  %3 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @B43_BUS_SSB, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSB_BUSTYPE_SDIO, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %8, %1
  %19 = phi i1 [ false, %1 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
