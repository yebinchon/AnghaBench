; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_close_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_close_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.strip = type { i32, i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @strip_close_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip_close_low(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.strip*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.strip* @netdev_priv(%struct.net_device* %5)
  store %struct.strip* %6, %struct.strip** %4, align 8
  %7 = load %struct.strip*, %struct.strip** %4, align 8
  %8 = getelementptr inbounds %struct.strip, %struct.strip* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %16 = load %struct.strip*, %struct.strip** %4, align 8
  %17 = getelementptr inbounds %struct.strip, %struct.strip* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %15, i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_stop_queue(%struct.net_device* %21)
  %23 = load %struct.strip*, %struct.strip** %4, align 8
  %24 = getelementptr inbounds %struct.strip, %struct.strip* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.strip*, %struct.strip** %4, align 8
  %28 = getelementptr inbounds %struct.strip, %struct.strip* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.strip*, %struct.strip** %4, align 8
  %30 = getelementptr inbounds %struct.strip, %struct.strip* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.strip*, %struct.strip** %4, align 8
  %34 = getelementptr inbounds %struct.strip, %struct.strip* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.strip*, %struct.strip** %4, align 8
  %36 = getelementptr inbounds %struct.strip, %struct.strip* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.strip*, %struct.strip** %4, align 8
  %40 = getelementptr inbounds %struct.strip, %struct.strip* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.strip*, %struct.strip** %4, align 8
  %42 = getelementptr inbounds %struct.strip, %struct.strip* %41, i32 0, i32 0
  %43 = call i32 @del_timer(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %14, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.strip* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
