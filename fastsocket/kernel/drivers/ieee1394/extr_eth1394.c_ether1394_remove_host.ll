; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_remove_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.eth1394_host_info = type { i32 }
%struct.eth1394_priv = type { i64, i32 }

@eth1394_highlevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @ether1394_remove_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_remove_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.eth1394_host_info*, align 8
  %4 = alloca %struct.eth1394_priv*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %6 = call %struct.eth1394_host_info* @hpsb_get_hostinfo(i32* @eth1394_highlevel, %struct.hpsb_host* %5)
  store %struct.eth1394_host_info* %6, %struct.eth1394_host_info** %3, align 8
  %7 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %8 = icmp ne %struct.eth1394_host_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %12 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.eth1394_priv* @netdev_priv(i32 %13)
  store %struct.eth1394_priv* %14, %struct.eth1394_priv** %4, align 8
  %15 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %16 = load %struct.eth1394_priv*, %struct.eth1394_priv** %4, align 8
  %17 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @hpsb_unregister_addrspace(i32* @eth1394_highlevel, %struct.hpsb_host* %15, i32 %18)
  %20 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %21 = call i32 @hpsb_config_rom_ip1394_remove(%struct.hpsb_host* %20)
  %22 = load %struct.eth1394_priv*, %struct.eth1394_priv** %4, align 8
  %23 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %10
  %27 = load %struct.eth1394_priv*, %struct.eth1394_priv** %4, align 8
  %28 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @hpsb_iso_shutdown(i64 %29)
  br label %31

31:                                               ; preds = %26, %10
  %32 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %33 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @unregister_netdev(i32 %34)
  %36 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %3, align 8
  %37 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @free_netdev(i32 %38)
  br label %40

40:                                               ; preds = %31, %9
  ret void
}

declare dso_local %struct.eth1394_host_info* @hpsb_get_hostinfo(i32*, %struct.hpsb_host*) #1

declare dso_local %struct.eth1394_priv* @netdev_priv(i32) #1

declare dso_local i32 @hpsb_unregister_addrspace(i32*, %struct.hpsb_host*, i32) #1

declare dso_local i32 @hpsb_config_rom_ip1394_remove(%struct.hpsb_host*) #1

declare dso_local i32 @hpsb_iso_shutdown(i64) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
