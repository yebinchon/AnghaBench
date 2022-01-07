; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p net_dev %p skb %p)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"NETTX: skb %p sending %d bytes to radio\0A\00", align 1
@I2400M_PT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(i2400m %p net_dev %p skb %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.net_device*, %struct.sk_buff*)* @i2400m_net_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_net_tx(%struct.i2400m* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %12, %struct.net_device* %13, %struct.sk_buff* %14)
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @i2400m_tx_prep_header(%struct.sk_buff* %19)
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @d_printf(i32 3, %struct.device* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %22, i32 %25)
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @d_dump(i32 4, %struct.device* %27, i32 %30, i32 %33)
  %35 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I2400M_PT_DATA, align 4
  %43 = call i32 @i2400m_tx(%struct.i2400m* %35, i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @d_fnend(i32 3, %struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %45, %struct.net_device* %46, %struct.sk_buff* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @i2400m_tx_prep_header(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, %struct.sk_buff*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i32, i32) #1

declare dso_local i32 @i2400m_tx(%struct.i2400m*, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.net_device*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
