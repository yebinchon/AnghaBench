; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @isdn_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_net_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_start_queue(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @isdn_net_reset(%struct.net_device* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 252, i32* %24, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load %struct.in_device*, %struct.in_device** %30, align 8
  store %struct.in_device* %31, %struct.in_device** %5, align 8
  %32 = icmp ne %struct.in_device* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.in_device*, %struct.in_device** %5, align 8
  %35 = getelementptr inbounds %struct.in_device, %struct.in_device* %34, i32 0, i32 0
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %35, align 8
  store %struct.in_ifaddr* %36, %struct.in_ifaddr** %6, align 8
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %38 = icmp ne %struct.in_ifaddr* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = call i32 @memcpy(i32* %43, i32* %45, i32 4)
  br label %47

47:                                               ; preds = %39, %33
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device* %49)
  store %struct.net_device* %50, %struct.net_device** %4, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %57, %53
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @isdn_net_reset(%struct.net_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device* %60)
  store %struct.net_device* %61, %struct.net_device** %4, align 8
  br label %54

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  %64 = call i32 (...) @isdn_lock_drivers()
  ret i32 0
}

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @isdn_net_reset(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device*) #1

declare dso_local i32 @isdn_lock_drivers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
