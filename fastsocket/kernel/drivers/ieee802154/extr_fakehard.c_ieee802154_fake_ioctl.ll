; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee802154/extr_fakehard.c_ieee802154_fake_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee802154/extr_fakehard.c_ieee802154_fake_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.sockaddr_ieee802154 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@IEEE802154_PANID_BROADCAST = common dso_local global i8* null, align 8
@IEEE802154_ADDR_BROADCAST = common dso_local global i8* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ieee802154_fake_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_fake_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ieee802154*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %13, %struct.sockaddr_ieee802154** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %46 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i8* @fake_get_pan_id(%struct.net_device* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i8* @fake_get_short_addr(%struct.net_device* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** @IEEE802154_PANID_BROADCAST, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** @IEEE802154_ADDR_BROADCAST, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %15
  %28 = load i32, i32* @EADDRNOTAVAIL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %23
  %31 = load i32, i32* @AF_IEEE802154, align 4
  %32 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %35 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @ENOIOCTLCMD, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %30, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i8* @fake_get_pan_id(%struct.net_device*) #1

declare dso_local i8* @fake_get_short_addr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
