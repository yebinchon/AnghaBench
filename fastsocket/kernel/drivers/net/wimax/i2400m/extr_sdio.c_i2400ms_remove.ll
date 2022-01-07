; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400ms = type { i32, %struct.i2400m }
%struct.i2400m = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SDIO func %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @i2400ms_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400ms_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2400ms*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %10 = call %struct.i2400ms* @sdio_get_drvdata(%struct.sdio_func* %9)
  store %struct.i2400ms* %10, %struct.i2400ms** %4, align 8
  %11 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %12 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %11, i32 0, i32 1
  store %struct.i2400m* %12, %struct.i2400m** %5, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = call i32 @d_fnstart(i32 3, %struct.device* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %18)
  %20 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %21 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debugfs_remove_recursive(i32 %22)
  %24 = load %struct.i2400ms*, %struct.i2400ms** %4, align 8
  %25 = call i32 @i2400ms_rx_release(%struct.i2400ms* %24)
  %26 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %27 = call i32 @i2400m_release(%struct.i2400m* %26)
  %28 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %29 = call i32 @sdio_set_drvdata(%struct.sdio_func* %28, i32* null)
  %30 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %31 = call i32 @sdio_claim_host(%struct.sdio_func* %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %33 = call i32 @sdio_disable_func(%struct.sdio_func* %32)
  %34 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %35 = call i32 @sdio_release_host(%struct.sdio_func* %34)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @free_netdev(%struct.net_device* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %40 = call i32 @d_fnend(i32 3, %struct.device* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %39)
  ret void
}

declare dso_local %struct.i2400ms* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.sdio_func*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @i2400ms_rx_release(%struct.i2400ms*) #1

declare dso_local i32 @i2400m_release(%struct.i2400m*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
