; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sir_dev = type { %struct.TYPE_2__, i64, i32, %struct.sir_driver*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sir_driver = type { i32, i32 (%struct.sir_dev.0*)* }
%struct.sir_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sirdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sir_dev*, align 8
  %4 = alloca %struct.sir_driver*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sir_dev* @netdev_priv(%struct.net_device* %5)
  store %struct.sir_dev* %6, %struct.sir_dev** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %10 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @down(i32* %11)
  %13 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %14 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %13, i32 0, i32 5
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  %16 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %68

25:                                               ; preds = %1
  %26 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %27 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @irlap_close(i32* %28)
  %30 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %31 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %33 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %32, i32 0, i32 3
  %34 = load %struct.sir_driver*, %struct.sir_driver** %33, align 8
  store %struct.sir_driver* %34, %struct.sir_driver** %4, align 8
  %35 = load %struct.sir_driver*, %struct.sir_driver** %4, align 8
  %36 = icmp ne %struct.sir_driver* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %39 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %25
  %44 = phi i1 [ true, %25 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %68

49:                                               ; preds = %43
  %50 = load %struct.sir_driver*, %struct.sir_driver** %4, align 8
  %51 = getelementptr inbounds %struct.sir_driver, %struct.sir_driver* %50, i32 0, i32 1
  %52 = load i32 (%struct.sir_dev.0*)*, i32 (%struct.sir_dev.0*)** %51, align 8
  %53 = icmp ne i32 (%struct.sir_dev.0*)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.sir_driver*, %struct.sir_driver** %4, align 8
  %56 = getelementptr inbounds %struct.sir_driver, %struct.sir_driver* %55, i32 0, i32 1
  %57 = load i32 (%struct.sir_dev.0*)*, i32 (%struct.sir_dev.0*)** %56, align 8
  %58 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %59 = bitcast %struct.sir_dev* %58 to %struct.sir_dev.0*
  %60 = call i32 %57(%struct.sir_dev.0* %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %63 = call i32 @sirdev_free_buffers(%struct.sir_dev* %62)
  %64 = load %struct.sir_driver*, %struct.sir_driver** %4, align 8
  %65 = getelementptr inbounds %struct.sir_driver, %struct.sir_driver* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @module_put(i32 %66)
  br label %68

68:                                               ; preds = %61, %48, %24
  %69 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %70 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %72 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @up(i32* %73)
  ret i32 0
}

declare dso_local %struct.sir_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irlap_close(i32*) #1

declare dso_local i32 @sirdev_free_buffers(%struct.sir_dev*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
