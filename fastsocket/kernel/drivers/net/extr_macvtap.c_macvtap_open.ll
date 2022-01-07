; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.macvtap_queue = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, %struct.file*, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_12__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@macvtap_proto = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@macvtap_socket_ops = common dso_local global i32 0, align 4
@macvtap_sock_write_space = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@SOCK_ZEROCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @macvtap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.macvlan_dev*, align 8
  %8 = alloca %struct.macvtap_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @iminor(%struct.inode* %15)
  %17 = call %struct.net_device* @dev_get_by_macvtap_minor(i32 %16)
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.macvlan_dev* %19, %struct.macvlan_dev** %7, align 8
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = load i32, i32* @AF_UNSPEC, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 @sk_alloc(%struct.net* %28, i32 %29, i32 %30, i32* @macvtap_proto)
  %32 = inttoptr i64 %31 to %struct.macvtap_queue*
  store %struct.macvtap_queue* %32, %struct.macvtap_queue** %8, align 8
  %33 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %34 = icmp ne %struct.macvtap_queue* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %112

36:                                               ; preds = %25
  %37 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %38 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load i32, i32* @SOCK_RAW, align 4
  %42 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %43 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SS_CONNECTED, align 4
  %46 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %47 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %51 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store %struct.file* %49, %struct.file** %52, align 8
  %53 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %54 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32* @macvtap_socket_ops, i32** %55, align 8
  %56 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %57 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %56, i32 0, i32 3
  %58 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %59 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %58, i32 0, i32 2
  %60 = call i32 @sock_init_data(%struct.TYPE_11__* %57, %struct.TYPE_10__* %59)
  %61 = load i32, i32* @macvtap_sock_write_space, align 4
  %62 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %63 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @IFF_VNET_HDR, align 4
  %66 = load i32, i32* @IFF_NO_PI, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IFF_TAP, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %71 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %73 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %72, i32 0, i32 1
  store i32 4, i32* %73, align 4
  %74 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %75 = icmp ne %struct.macvlan_dev* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %36
  %77 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %78 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %87 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NETIF_F_SG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %96 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %95, i32 0, i32 2
  %97 = load i32, i32* @SOCK_ZEROCOPY, align 4
  %98 = call i32 @sock_set_flag(%struct.TYPE_10__* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %85, %76
  br label %100

100:                                              ; preds = %99, %36
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = load %struct.file*, %struct.file** %4, align 8
  %103 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %104 = call i32 @macvtap_set_queue(%struct.net_device* %101, %struct.file* %102, %struct.macvtap_queue* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %109 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %108, i32 0, i32 2
  %110 = call i32 @sock_put(%struct.TYPE_10__* %109)
  br label %111

111:                                              ; preds = %107, %100
  br label %112

112:                                              ; preds = %111, %35, %24
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = icmp ne %struct.net_device* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = call i32 @dev_put(%struct.net_device* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local %struct.net_device* @dev_get_by_macvtap_minor(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sock_init_data(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @sock_set_flag(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @macvtap_set_queue(%struct.net_device*, %struct.file*, %struct.macvtap_queue*) #1

declare dso_local i32 @sock_put(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
