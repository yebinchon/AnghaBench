; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mcs_cb = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_9__*, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IRDA_SKB_MAX_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"usb#%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mcs7780: irlap_open failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mcs_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mcs_cb*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mcs_cb* @netdev_priv(%struct.net_device* %7)
  store %struct.mcs_cb* %8, %struct.mcs_cb** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %10 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %9, i32 0, i32 3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %13 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %12, i32 0, i32 3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %16 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_sndbulkpipe(%struct.TYPE_9__* %14, i32 %17)
  %19 = call i32 @usb_clear_halt(%struct.TYPE_9__* %11, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %127

23:                                               ; preds = %1
  %24 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %25 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %28 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %31 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_rcvbulkpipe(%struct.TYPE_9__* %29, i32 %32)
  %34 = call i32 @usb_clear_halt(%struct.TYPE_9__* %26, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %127

38:                                               ; preds = %23
  %39 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %40 = call i32 @mcs_setup_transceiver(%struct.mcs_cb* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %127

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %48 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @IRDA_SKB_MAX_MTU, align 4
  %50 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %51 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @IRDA_SKB_MAX_MTU, align 4
  %54 = call %struct.TYPE_10__* @dev_alloc_skb(i32 %53)
  %55 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %56 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %59 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %44
  br label %127

64:                                               ; preds = %44
  %65 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %66 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i32 @skb_reserve(%struct.TYPE_10__* %68, i32 1)
  %70 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %71 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %77 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %80 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %79, i32 0, i32 4
  %81 = call i32 @do_gettimeofday(i32* %80)
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %83 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %84 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %91 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %90, i32 0, i32 2
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %93 = call i32 @irlap_open(%struct.net_device* %89, i32* %91, i8* %92)
  %94 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %95 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %97 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %64
  %101 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %121

102:                                              ; preds = %64
  %103 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %104 = call i32 @mcs_setup_urbs(%struct.mcs_cb* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %116

107:                                              ; preds = %102
  %108 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %109 = call i32 @mcs_receive_start(%struct.mcs_cb* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %116

113:                                              ; preds = %107
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = call i32 @netif_start_queue(%struct.net_device* %114)
  store i32 0, i32* %2, align 4
  br label %129

116:                                              ; preds = %112, %106
  %117 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %118 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @irlap_close(i32 %119)
  br label %121

121:                                              ; preds = %116, %100
  %122 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %123 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @kfree_skb(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %121, %63, %43, %37, %22
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %113
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.mcs_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mcs_setup_transceiver(%struct.mcs_cb*) #1

declare dso_local %struct.TYPE_10__* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @irlap_open(%struct.net_device*, i32*, i8*) #1

declare dso_local i32 @IRDA_ERROR(i8*) #1

declare dso_local i32 @mcs_setup_urbs(%struct.mcs_cb*) #1

declare dso_local i32 @mcs_receive_start(%struct.mcs_cb*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @irlap_close(i32) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
