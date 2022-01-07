; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_tun_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_tun_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { %struct.net_info* }
%struct.net_info = type { i32 }
%struct.virtio_net_config = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1
@VIRTIO_ID_NET = common dso_local global i32 0, align 4
@VIRTQUEUE_NUM = common dso_local global i32 0, align 4
@net_input = common dso_local global i32 0, align 4
@net_output = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"opening IP socket\00", align 1
@BRIDGE_PFX = common dso_local global i32 0, align 4
@VIRTIO_NET_F_MAC = common dso_local global i32 0, align 4
@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CSUM = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_CSUM = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO4 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_TSO4 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_TSO6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_HOST_ECN = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"device %u: tun %s attached to bridge: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"device %u: tun %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @setup_tun_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tun_net(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.virtio_net_config, align 4
  store i8* %0, i8** %2, align 8
  %12 = call %struct.net_info* @malloc(i32 4)
  store %struct.net_info* %12, %struct.net_info** %4, align 8
  %13 = load i32, i32* @INADDR_ANY, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = call i32 @get_tun_device(i8* %17)
  %19 = load %struct.net_info*, %struct.net_info** %4, align 8
  %20 = getelementptr inbounds %struct.net_info, %struct.net_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VIRTIO_ID_NET, align 4
  %22 = call %struct.device* @new_device(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.device* %22, %struct.device** %3, align 8
  %23 = load %struct.net_info*, %struct.net_info** %4, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  store %struct.net_info* %23, %struct.net_info** %25, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %28 = load i32, i32* @net_input, align 4
  %29 = call i32 @add_virtqueue(%struct.device* %26, i32 %27, i32 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %32 = load i32, i32* @net_output, align 4
  %33 = call i32 @add_virtqueue(%struct.device* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @PF_INET, align 4
  %35 = load i32, i32* @SOCK_DGRAM, align 4
  %36 = load i32, i32* @IPPROTO_IP, align 4
  %37 = call i32 @socket(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %1
  %43 = load i32, i32* @BRIDGE_PFX, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* @BRIDGE_PFX, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32 @strncmp(i32 %43, i8* %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @BRIDGE_PFX, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = load i8*, i8** %2, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i8*, i8** %2, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 58)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = getelementptr inbounds %struct.virtio_net_config, %struct.virtio_net_config* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @str2mac(i8* %62, i32 %64)
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load i32, i32* @VIRTIO_NET_F_MAC, align 4
  %68 = call i32 @add_feature(%struct.device* %66, i32 %67)
  %69 = load i8*, i8** %10, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @add_to_bridge(i32 %74, i8* %17, i8* %75)
  br label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 @str2ip(i8* %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @configure_device(i32 %81, i8* %17, i32 %82)
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %86 = call i32 @add_feature(%struct.device* %84, i32 %85)
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = load i32, i32* @VIRTIO_NET_F_CSUM, align 4
  %89 = call i32 @add_feature(%struct.device* %87, i32 %88)
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load i32, i32* @VIRTIO_NET_F_GUEST_CSUM, align 4
  %92 = call i32 @add_feature(%struct.device* %90, i32 %91)
  %93 = load %struct.device*, %struct.device** %3, align 8
  %94 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO4, align 4
  %95 = call i32 @add_feature(%struct.device* %93, i32 %94)
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO6, align 4
  %98 = call i32 @add_feature(%struct.device* %96, i32 %97)
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = load i32, i32* @VIRTIO_NET_F_GUEST_ECN, align 4
  %101 = call i32 @add_feature(%struct.device* %99, i32 %100)
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = load i32, i32* @VIRTIO_NET_F_HOST_TSO4, align 4
  %104 = call i32 @add_feature(%struct.device* %102, i32 %103)
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = load i32, i32* @VIRTIO_NET_F_HOST_TSO6, align 4
  %107 = call i32 @add_feature(%struct.device* %105, i32 %106)
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = load i32, i32* @VIRTIO_NET_F_HOST_ECN, align 4
  %110 = call i32 @add_feature(%struct.device* %108, i32 %109)
  %111 = load %struct.device*, %struct.device** %3, align 8
  %112 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %113 = call i32 @add_feature(%struct.device* %111, i32 %112)
  %114 = load %struct.device*, %struct.device** %3, align 8
  %115 = call i32 @set_config(%struct.device* %114, i32 4, %struct.virtio_net_config* %11)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @close(i32 %116)
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %80
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %124 = load i8*, i8** %2, align 8
  %125 = call i32 @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %123, i8* %17, i8* %124)
  br label %130

126:                                              ; preds = %80
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %128 = load i8*, i8** %2, align 8
  %129 = call i32 @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %127, i8* %17, i8* %128)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

declare dso_local %struct.net_info* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_tun_device(i8*) #1

declare dso_local %struct.device* @new_device(i8*, i32) #1

declare dso_local i32 @add_virtqueue(%struct.device*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @str2mac(i8*, i32) #1

declare dso_local i32 @add_feature(%struct.device*, i32) #1

declare dso_local i32 @add_to_bridge(i32, i8*, i8*) #1

declare dso_local i32 @str2ip(i8*) #1

declare dso_local i32 @configure_device(i32, i8*, i32) #1

declare dso_local i32 @set_config(%struct.device*, i32, %struct.virtio_net_config*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @verbose(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
