; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_netdev_hwstats_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_netdev_hwstats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.bfi_enet_stats_mac }
%struct.TYPE_5__ = type { i64 }
%struct.bfi_enet_stats_mac = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.net_device_stats = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_netdev_hwstats_fill(%struct.bnad* %0, %struct.net_device_stats* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.bfi_enet_stats_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %4, align 8
  %8 = load %struct.bnad*, %struct.bnad** %3, align 8
  %9 = getelementptr inbounds %struct.bnad, %struct.bnad* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.bfi_enet_stats_mac* %13, %struct.bfi_enet_stats_mac** %5, align 8
  %14 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %15 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %18 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %22 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %26 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %30 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 9
  store i64 %32, i64* %34, align 8
  %35 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %36 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %39 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %45 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %50 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %55 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %58 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %60 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %65 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %70 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %73 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.bfi_enet_stats_mac*, %struct.bfi_enet_stats_mac** %5, align 8
  %75 = getelementptr inbounds %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_mac* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.bnad*, %struct.bnad** %3, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 1
  %81 = call i32 @bna_rx_rid_mask(i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %111, %2
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.bnad*, %struct.bnad** %3, align 8
  %93 = getelementptr inbounds %struct.bnad, %struct.bnad* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %105 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %114

108:                                              ; preds = %87
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %84

114:                                              ; preds = %91, %84
  ret void
}

declare dso_local i32 @bna_rx_rid_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
