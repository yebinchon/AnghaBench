; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.amd8111e_priv = type { i32, i64 }
%struct.sockaddr = type { i32 }

@ETH_ADDR_LEN = common dso_local global i32 0, align 4
@PADR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @amd8111e_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amd8111e_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.amd8111e_priv* %9, %struct.amd8111e_priv** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy(i32* %14, i32 %17, i32 %20)
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ETH_ADDR_LEN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %38 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PADR, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writeb(i32 %36, i64 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %5, align 8
  %51 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
