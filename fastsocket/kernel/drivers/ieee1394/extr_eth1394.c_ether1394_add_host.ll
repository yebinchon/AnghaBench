; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eth1394_host_info = type { %struct.net_device*, %struct.hpsb_host* }
%struct.net_device = type { i32 }
%struct.eth1394_priv = type { i32, %struct.net_device*, i32, i64, %struct.hpsb_host*, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't add IP-over-1394 ROM entry\0A\00", align 1
@eth1394_highlevel = common dso_local global i32 0, align 4
@addr_ops = common dso_local global i32 0, align 4
@ETHER1394_REGION_ADDR_LEN = common dso_local global i32 0, align 4
@CSR1212_INVALID_ADDR_SPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot register CSR space\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@ether1394_init_dev = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ether1394_wake_queue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot register the driver\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"IPv4 over IEEE 1394 (fw-host%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @ether1394_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_add_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.eth1394_host_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.eth1394_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  store %struct.eth1394_host_info* null, %struct.eth1394_host_info** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %7 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %8 = call i64 @hpsb_config_rom_ip1394_add(%struct.hpsb_host* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = call i32 @ETH1394_PRINT_G(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %120

13:                                               ; preds = %1
  %14 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %15 = load i32, i32* @ETHER1394_REGION_ADDR_LEN, align 4
  %16 = load i32, i32* @ETHER1394_REGION_ADDR_LEN, align 4
  %17 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %18 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %19 = call i64 @hpsb_allocate_and_register_addrspace(i32* @eth1394_highlevel, %struct.hpsb_host* %14, i32* @addr_ops, i32 %15, i32 %16, i64 %17, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = call i32 @ETH1394_PRINT_G(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %27 = call i32 @hpsb_config_rom_ip1394_remove(%struct.hpsb_host* %26)
  br label %120

28:                                               ; preds = %13
  %29 = load i32, i32* @ether1394_init_dev, align 4
  %30 = call %struct.net_device* @alloc_netdev(i32 48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store %struct.net_device* %30, %struct.net_device** %4, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = icmp eq %struct.net_device* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = call i32 @ETH1394_PRINT_G(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %102

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %39 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %38, i32 0, i32 2
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %37, i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call %struct.eth1394_priv* @netdev_priv(%struct.net_device* %41)
  store %struct.eth1394_priv* %42, %struct.eth1394_priv** %5, align 8
  %43 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %44 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %43, i32 0, i32 6
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %47 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %46, i32 0, i32 5
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %50 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %51 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %50, i32 0, i32 4
  store %struct.hpsb_host* %49, %struct.hpsb_host** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %54 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %56 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %55, i32 0, i32 2
  %57 = load i32, i32* @ether1394_wake_queue, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %61 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %60, i32 0, i32 1
  store %struct.net_device* %59, %struct.net_device** %61, align 8
  %62 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %63 = call %struct.eth1394_host_info* @hpsb_create_hostinfo(i32* @eth1394_highlevel, %struct.hpsb_host* %62, i32 16)
  store %struct.eth1394_host_info* %63, %struct.eth1394_host_info** %3, align 8
  %64 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %65 = icmp eq %struct.eth1394_host_info* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %36
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = call i32 @ETH1394_PRINT_G(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %102

69:                                               ; preds = %36
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @ether1394_reset_priv(%struct.net_device* %70, i32 1)
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i64 @register_netdev(%struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = call i32 @ETH1394_PRINT_G(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %102

78:                                               ; preds = %69
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %84 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ETH1394_PRINT(i32 %79, i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %88 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %89 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %88, i32 0, i32 1
  store %struct.hpsb_host* %87, %struct.hpsb_host** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %92 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %91, i32 0, i32 0
  store %struct.net_device* %90, %struct.net_device** %92, align 8
  %93 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %94 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 63
  %98 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %99 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %101 = call i32 @ether1394_recv_init(%struct.eth1394_priv* %100)
  br label %120

102:                                              ; preds = %75, %66, %33
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = icmp ne %struct.net_device* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = call i32 @free_netdev(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %110 = icmp ne %struct.eth1394_host_info* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %113 = call i32 @hpsb_destroy_hostinfo(i32* @eth1394_highlevel, %struct.hpsb_host* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @hpsb_unregister_addrspace(i32* @eth1394_highlevel, %struct.hpsb_host* %115, i64 %116)
  %118 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %119 = call i32 @hpsb_config_rom_ip1394_remove(%struct.hpsb_host* %118)
  br label %120

120:                                              ; preds = %114, %78, %23, %10
  ret void
}

declare dso_local i64 @hpsb_config_rom_ip1394_add(%struct.hpsb_host*) #1

declare dso_local i32 @ETH1394_PRINT_G(i32, i8*) #1

declare dso_local i64 @hpsb_allocate_and_register_addrspace(i32*, %struct.hpsb_host*, i32*, i32, i32, i64, i64) #1

declare dso_local i32 @hpsb_config_rom_ip1394_remove(%struct.hpsb_host*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.eth1394_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.eth1394_host_info* @hpsb_create_hostinfo(i32*, %struct.hpsb_host*, i32) #1

declare dso_local i32 @ether1394_reset_priv(%struct.net_device*, i32) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @ETH1394_PRINT(i32, i32, i8*, i32) #1

declare dso_local i32 @ether1394_recv_init(%struct.eth1394_priv*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @hpsb_destroy_hostinfo(i32*, %struct.hpsb_host*) #1

declare dso_local i32 @hpsb_unregister_addrspace(i32*, %struct.hpsb_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
