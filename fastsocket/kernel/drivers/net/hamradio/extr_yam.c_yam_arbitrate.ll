; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_yam.c_yam_arbitrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_yam.c_yam_arbitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.yam_port = type { i64, i64, i32, i32, i32, i64, i64, i32 }

@YAM_MAGIC = common dso_local global i64 0, align 8
@TX_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @yam_arbitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yam_arbitrate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.yam_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.yam_port* @netdev_priv(%struct.net_device* %4)
  store %struct.yam_port* %5, %struct.yam_port** %3, align 8
  %6 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %7 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @YAM_MAGIC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %13 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TX_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %19 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %18, i32 0, i32 7
  %20 = call i64 @skb_queue_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %11, %1
  br label %69

23:                                               ; preds = %17
  %24 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %25 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %31 = call i32 @yam_start_tx(%struct.net_device* %29, %struct.yam_port* %30)
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %34 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %39 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 10
  %42 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %43 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %69

44:                                               ; preds = %32
  %45 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %46 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %69

51:                                               ; preds = %44
  %52 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %53 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 10
  %56 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %57 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = call i32 (...) @random32()
  %59 = srem i32 %58, 256
  %60 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %61 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %69

65:                                               ; preds = %51
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %68 = call i32 @yam_start_tx(%struct.net_device* %66, %struct.yam_port* %67)
  br label %69

69:                                               ; preds = %65, %64, %50, %37, %28, %22
  ret void
}

declare dso_local %struct.yam_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @yam_start_tx(%struct.net_device*, %struct.yam_port*) #1

declare dso_local i32 @random32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
