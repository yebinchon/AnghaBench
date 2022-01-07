; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_e100_hardware_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_e100_hardware_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_local = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"e100 send pack, buf 0x%x len %d\0A\00", align 1
@led_active = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@led_next_time = common dso_local global i64 0, align 8
@NETWORK_ACTIVITY = common dso_local global i32 0, align 4
@NET_FLASH_TIME = common dso_local global i64 0, align 8
@clear_led_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@myNextTxDesc = common dso_local global %struct.TYPE_5__* null, align 8
@d_eop = common dso_local global i32 0, align 4
@d_eol = common dso_local global i32 0, align 4
@d_wait = common dso_local global i32 0, align 4
@myLastTxDesc = common dso_local global %struct.TYPE_5__* null, align 8
@R_DMA_CH0_CMD = common dso_local global i32* null, align 8
@cmd = common dso_local global i32 0, align 4
@restart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e100_hardware_send_packet(%struct.net_local* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.net_local* %0, %struct.net_local** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8)
  %10 = call i32 @D(i32 %9)
  %11 = load %struct.net_local*, %struct.net_local** %4, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* @led_active, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @led_next_time, align 8
  %19 = call i64 @time_after(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, i32* @NETWORK_ACTIVITY, align 4
  %23 = call i32 @e100_set_network_leds(i32 %22)
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* @NET_FLASH_TIME, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* @led_next_time, align 8
  store i32 1, i32* @led_active, align 4
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 10
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @mod_timer(i32* @clear_led_timer, i64 %31)
  br label %33

33:                                               ; preds = %21, %16, %3
  %34 = load %struct.net_local*, %struct.net_local** %4, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myNextTxDesc, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @d_eop, align 4
  %42 = load i32, i32* @d_eol, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @d_wait, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myNextTxDesc, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @virt_to_phys(i8* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myNextTxDesc, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @d_eol, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myLastTxDesc, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @myNextTxDesc, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** @myLastTxDesc, align 8
  %62 = load i32*, i32** @R_DMA_CH0_CMD, align 8
  %63 = load i32, i32* @cmd, align 4
  %64 = load i32, i32* @restart, align 4
  %65 = call i32 @IO_STATE(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** @R_DMA_CH0_CMD, align 8
  store i32 %65, i32* %66, align 4
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printk(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @e100_set_network_leds(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @IO_STATE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
