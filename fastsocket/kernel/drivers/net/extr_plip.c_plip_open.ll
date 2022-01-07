; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32 }
%struct.net_local = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PLIP_PK_DONE = common dso_local global i32 0, align 4
@PLIP_CN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @plip_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %4, align 8
  %9 = load %struct.net_local*, %struct.net_local** %4, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.net_local*, %struct.net_local** %4, align 8
  %15 = getelementptr inbounds %struct.net_local, %struct.net_local* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @parport_claim(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %13
  %23 = load %struct.net_local*, %struct.net_local** %4, align 8
  %24 = getelementptr inbounds %struct.net_local, %struct.net_local* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.net_local*, %struct.net_local** %4, align 8
  %27 = getelementptr inbounds %struct.net_local, %struct.net_local* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @write_data(%struct.net_device* %28, i32 0)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @enable_parport_interrupts(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.net_local*, %struct.net_local** %4, align 8
  %38 = getelementptr inbounds %struct.net_local, %struct.net_local* %37, i32 0, i32 6
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.net_local*, %struct.net_local** %4, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 5
  %42 = call i32 @schedule_delayed_work(i32* %41, i32 1)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load i32, i32* @PLIP_PK_DONE, align 4
  %45 = load %struct.net_local*, %struct.net_local** %4, align 8
  %46 = getelementptr inbounds %struct.net_local, %struct.net_local* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.net_local*, %struct.net_local** %4, align 8
  %49 = getelementptr inbounds %struct.net_local, %struct.net_local* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load %struct.net_local*, %struct.net_local** %4, align 8
  %52 = getelementptr inbounds %struct.net_local, %struct.net_local* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.net_local*, %struct.net_local** %4, align 8
  %55 = getelementptr inbounds %struct.net_local, %struct.net_local* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @PLIP_CN_NONE, align 4
  %58 = load %struct.net_local*, %struct.net_local** %4, align 8
  %59 = getelementptr inbounds %struct.net_local, %struct.net_local* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.net_local*, %struct.net_local** %4, align 8
  %61 = getelementptr inbounds %struct.net_local, %struct.net_local* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = load %struct.in_device*, %struct.in_device** %63, align 8
  store %struct.in_device* %64, %struct.in_device** %5, align 8
  %65 = icmp ne %struct.in_device* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %43
  %67 = load %struct.in_device*, %struct.in_device** %5, align 8
  %68 = getelementptr inbounds %struct.in_device, %struct.in_device* %67, i32 0, i32 0
  %69 = load %struct.in_ifaddr*, %struct.in_ifaddr** %68, align 8
  store %struct.in_ifaddr* %69, %struct.in_ifaddr** %6, align 8
  %70 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %71 = icmp ne %struct.in_ifaddr* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 2
  %77 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %78 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i64 %76, i32* %78, i32 4)
  br label %80

80:                                               ; preds = %72, %66
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netif_start_queue(%struct.net_device* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %19
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @parport_claim(i32) #1

declare dso_local i32 @write_data(%struct.net_device*, i32) #1

declare dso_local i32 @enable_parport_interrupts(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
