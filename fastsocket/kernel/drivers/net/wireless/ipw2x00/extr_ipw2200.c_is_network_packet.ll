; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_is_network_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_is_network_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.libipw_hdr_4addr*)* @is_network_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_network_packet(%struct.ipw_priv* %0, %struct.libipw_hdr_4addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.libipw_hdr_4addr*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.libipw_hdr_4addr* %1, %struct.libipw_hdr_4addr** %5, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %101 [
    i32 129, label %11
    i32 128, label %56
  ]

11:                                               ; preds = %2
  %12 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %13 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memcmp(i32 %14, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %102

24:                                               ; preds = %11
  %25 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %26 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_multicast_ether_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %32 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcmp(i32 %33, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %24
  %43 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %44 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcmp(i32 %45, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %102

56:                                               ; preds = %2
  %57 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %58 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %61 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcmp(i32 %59, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %102

69:                                               ; preds = %56
  %70 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %71 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @is_multicast_ether_addr(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %77 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcmp(i32 %78, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %102

87:                                               ; preds = %69
  %88 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %5, align 8
  %89 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %92 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcmp(i32 %90, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %87, %75, %68, %42, %30, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
