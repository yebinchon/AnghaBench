; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_sync_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_sync_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.z8530_channel = type { i32, i32*, i32, i64, i32*, i32*, i32*, i64, i64 }

@z8530_sync = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_sync_open(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.z8530_channel*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %4, align 8
  %6 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %7 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32 %8, i64 %9)
  %11 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %12 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 64
  %17 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %18 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %17, i32 0, i32 8
  store i64 %16, i64* %18, align 8
  %19 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %20 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %22 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %24 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %26 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %25, i32 0, i32 4
  store i32* @z8530_sync, i32** %26, align 8
  %27 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %28 = call i32 @z8530_rx_done(%struct.z8530_channel* %27)
  %29 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %30 = call i32 @z8530_rx_done(%struct.z8530_channel* %29)
  %31 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %32 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %31, i32 1)
  %33 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %34 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @TxINT_ENAB, align 4
  %36 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %37 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @R1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %35
  store i32 %42, i32* %40, align 4
  %43 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %44 = load i64, i64* @R1, align 8
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @R1, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_zsreg(%struct.z8530_channel* %43, i64 %44, i32 %50)
  %52 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %53 = load i64, i64* @R3, align 8
  %54 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %55 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @R3, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RxENABLE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @write_zsreg(%struct.z8530_channel* %52, i64 %53, i32 %61)
  %63 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %64 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32 %65, i64 %66)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @z8530_rx_done(%struct.z8530_channel*) #1

declare dso_local i32 @z8530_rtsdtr(%struct.z8530_channel*, i32) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
