; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_extras.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_get_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xen_netif_extra_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Missing extra info\0A\00", align 1
@EBADR = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid extra type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_info*, %struct.xen_netif_extra_info*, i64)* @xennet_get_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_get_extras(%struct.netfront_info* %0, %struct.xen_netif_extra_info* %1, i64 %2) #0 {
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca %struct.xen_netif_extra_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xen_netif_extra_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.netfront_info* %0, %struct.netfront_info** %4, align 8
  store %struct.xen_netif_extra_info* %1, %struct.xen_netif_extra_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %18 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %93, %3
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %22, 1
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = call i64 (...) @net_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EBADR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %100

38:                                               ; preds = %21
  %39 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %40 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = call i64 @RING_GET_RESPONSE(%struct.TYPE_4__* %40, i64 %42)
  %44 = inttoptr i64 %43 to %struct.xen_netif_extra_info*
  store %struct.xen_netif_extra_info* %44, %struct.xen_netif_extra_info** %7, align 8
  %45 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %46 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %51 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MAX, align 4
  %54 = icmp sge i32 %52, %53
  br label %55

55:                                               ; preds = %49, %38
  %56 = phi i1 [ true, %38 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = call i64 (...) @net_ratelimit()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %66 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %82

72:                                               ; preds = %55
  %73 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %74 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %75 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %73, i64 %78
  %80 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %81 = call i32 @memcpy(%struct.xen_netif_extra_info* %79, %struct.xen_netif_extra_info* %80, i32 8)
  br label %82

82:                                               ; preds = %72, %69
  %83 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info* %83, i64 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %11, align 8
  %86 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @xennet_get_rx_ref(%struct.netfront_info* %86, i64 %87)
  store i32 %88, i32* %12, align 4
  %89 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @xennet_move_rx_slot(%struct.netfront_info* %89, %struct.sk_buff* %90, i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %95 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %21, label %100

100:                                              ; preds = %93, %35
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %103 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @RING_GET_RESPONSE(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memcpy(%struct.xen_netif_extra_info*, %struct.xen_netif_extra_info*, i32) #1

declare dso_local %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_info*, i64) #1

declare dso_local i32 @xennet_get_rx_ref(%struct.netfront_info*, i64) #1

declare dso_local i32 @xennet_move_rx_slot(%struct.netfront_info*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
