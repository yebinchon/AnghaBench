; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipw2100_priv = type { i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@CFG_CUSTOM_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ipw2100_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipw2100_priv*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %9)
  store %struct.ipw2100_priv* %10, %struct.ipw2100_priv** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_valid_ether_addr(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @CFG_CUSTOM_MAC, align 4
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %39 = call i32 @ipw2100_set_mac_address(%struct.ipw2100_priv* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %53

43:                                               ; preds = %21
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @ipw2100_reset_adapter(i32* %51)
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %43, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipw2100_set_mac_address(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipw2100_reset_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
