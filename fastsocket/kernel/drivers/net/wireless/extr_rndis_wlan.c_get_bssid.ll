; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_get_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@OID_802_11_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32*)* @get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bssid(%struct.usbnet* %0, i32* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @ETH_ALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @ETH_ALEN, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = load i32, i32* @OID_802_11_BSSID, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @rndis_query_oid(%struct.usbnet* %10, i32 %11, i32* %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @memset(i32* %17, i32 0, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @rndis_query_oid(%struct.usbnet*, i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
