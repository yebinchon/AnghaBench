; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.hostap_interface = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 (%struct.net_device*, i32, i32*, i32, i32)* }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HFA384X_RID_CURRENTBSSID = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @prism2_ioctl_giwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %12)
  store %struct.hostap_interface* %13, %struct.hostap_interface** %10, align 8
  %14 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %15 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load i32, i32* @ARPHRD_ETHER, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %21 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %49 [
    i32 130, label %23
    i32 129, label %31
    i32 128, label %39
  ]

23:                                               ; preds = %4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32* %25, i32* %28, i32 %29)
  br label %73

31:                                               ; preds = %4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32* %33, i32* %36, i32 %37)
  br label %73

39:                                               ; preds = %4
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %43 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32* %41, i32* %46, i32 %47)
  br label %73

49:                                               ; preds = %4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32 (%struct.net_device*, i32, i32*, i32, i32)*, i32 (%struct.net_device*, i32, i32*, i32, i32)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load i32, i32* @HFA384X_RID_CURRENTBSSID, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 %54(%struct.net_device* %55, i32 %56, i32* %58, i32 %59, i32 1)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %74

65:                                               ; preds = %49
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %69, i32 0, i32 0
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32* %68, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %39, %31, %23
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
