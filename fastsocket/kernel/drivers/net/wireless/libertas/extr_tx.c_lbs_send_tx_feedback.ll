; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_tx.c_lbs_send_tx_feedback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_tx.c_lbs_send_tx_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i64, i64, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.tx_radiotap_hdr = type { i64 }

@LBS_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_send_tx_feedback(%struct.lbs_private* %0, i64 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tx_radiotap_hdr*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %80

16:                                               ; preds = %10
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.tx_radiotap_hdr*
  store %struct.tx_radiotap_hdr* %22, %struct.tx_radiotap_hdr** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 1, %28
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi i64 [ %31, %25 ], [ 0, %32 ]
  %35 = load %struct.tx_radiotap_hdr*, %struct.tx_radiotap_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.tx_radiotap_hdr, %struct.tx_radiotap_hdr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @eth_type_trans(%struct.TYPE_3__* %39, i32 %42)
  %44 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @netif_rx(%struct.TYPE_3__* %50)
  %52 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LBS_CONNECTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @netif_wake_queue(i64 %62)
  br label %64

64:                                               ; preds = %59, %33
  %65 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LBS_CONNECTED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @netif_wake_queue(i64 %78)
  br label %80

80:                                               ; preds = %15, %75, %69, %64
  ret void
}

declare dso_local i32 @eth_type_trans(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @netif_rx(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_wake_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
