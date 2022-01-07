; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c574_cs.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c574_cs.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SetRxFilter = common dso_local global i32 0, align 4
@RxStation = common dso_local global i32 0, align 4
@RxMulticast = common dso_local global i32 0, align 4
@RxBroadcast = common dso_local global i32 0, align 4
@RxProm = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @SetRxFilter, align 4
  %15 = load i32, i32* @RxStation, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RxMulticast, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RxBroadcast, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RxProm, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @EL3_CMD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 %22, i64 %26)
  br label %65

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @SetRxFilter, align 4
  %42 = load i32, i32* @RxStation, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RxMulticast, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RxBroadcast, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @EL3_CMD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %47, i64 %51)
  br label %64

53:                                               ; preds = %33
  %54 = load i32, i32* @SetRxFilter, align 4
  %55 = load i32, i32* @RxStation, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RxBroadcast, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @EL3_CMD, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 %58, i64 %62)
  br label %64

64:                                               ; preds = %53, %40
  br label %65

65:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
