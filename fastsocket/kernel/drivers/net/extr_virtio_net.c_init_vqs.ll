; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_init_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.virtqueue*, %struct.virtqueue*, %struct.virtqueue* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, %struct.virtqueue**, i32**, i8**)* }
%struct.virtqueue = type { i32 }

@skb_recv_done = common dso_local global i32* null, align 8
@skb_xmit_done = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@__const.init_vqs.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@VIRTIO_NET_F_CTRL_VQ = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CTRL_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*)* @init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vqs(%struct.virtnet_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca [3 x %struct.virtqueue*], align 16
  %5 = alloca [3 x i32*], align 16
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %3, align 8
  %9 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %10 = load i32*, i32** @skb_recv_done, align 8
  store i32* %10, i32** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 1
  %12 = load i32*, i32** @skb_xmit_done, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* null, i32** %13, align 8
  %14 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([3 x i8*]* @__const.init_vqs.names to i8*), i64 24, i1 false)
  %15 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %16 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load i32, i32* @VIRTIO_NET_F_CTRL_VQ, align 4
  %19 = call i64 @virtio_has_feature(%struct.TYPE_7__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 3, i32 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_7__*, i32, %struct.virtqueue**, i32**, i8**)*, i32 (%struct.TYPE_7__*, i32, %struct.virtqueue**, i32**, i8**)** %28, align 8
  %30 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %31 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %37 = call i32 %29(%struct.TYPE_7__* %32, i32 %33, %struct.virtqueue** %34, i32** %35, i8** %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %78

42:                                               ; preds = %1
  %43 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 0
  %44 = load %struct.virtqueue*, %struct.virtqueue** %43, align 16
  %45 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %46 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %45, i32 0, i32 4
  store %struct.virtqueue* %44, %struct.virtqueue** %46, align 8
  %47 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 1
  %48 = load %struct.virtqueue*, %struct.virtqueue** %47, align 8
  %49 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %50 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %49, i32 0, i32 3
  store %struct.virtqueue* %48, %struct.virtqueue** %50, align 8
  %51 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %52 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* @VIRTIO_NET_F_CTRL_VQ, align 4
  %55 = call i64 @virtio_has_feature(%struct.TYPE_7__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %42
  %58 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 2
  %59 = load %struct.virtqueue*, %struct.virtqueue** %58, align 16
  %60 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %61 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %60, i32 0, i32 2
  store %struct.virtqueue* %59, %struct.virtqueue** %61, align 8
  %62 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %63 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* @VIRTIO_NET_F_CTRL_VLAN, align 4
  %66 = call i64 @virtio_has_feature(%struct.TYPE_7__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %70 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %71 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %68, %57
  br label %77

77:                                               ; preds = %76, %42
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @virtio_has_feature(%struct.TYPE_7__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
