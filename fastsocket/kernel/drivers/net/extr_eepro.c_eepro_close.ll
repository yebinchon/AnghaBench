; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.eepro_local = type { i64, i32, i32, i32 }

@REG1 = common dso_local global i32 0, align 4
@STOP_RCV_CMD = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @eepro_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eepro_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.eepro_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.eepro_local* @netdev_priv(%struct.net_device* %6)
  store %struct.eepro_local* %7, %struct.eepro_local** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @eepro_sw2bank1(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @REG1, align 4
  %17 = add nsw i32 %15, %16
  %18 = call signext i16 @inb(i32 %17)
  store i16 %18, i16* %5, align 2
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  %21 = and i32 %20, 127
  %22 = trunc i32 %21 to i16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @REG1, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @outb(i16 signext %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @eepro_sw2bank0(i32 %27)
  %29 = load i16, i16* @STOP_RCV_CMD, align 2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @outb(i16 signext %29, i32 %30)
  %32 = load %struct.eepro_local*, %struct.eepro_local** %3, align 8
  %33 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.eepro_local*, %struct.eepro_local** %3, align 8
  %36 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.eepro_local*, %struct.eepro_local** %3, align 8
  %38 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %37, i32 0, i32 3
  store i32 %34, i32* %38, align 8
  %39 = load %struct.eepro_local*, %struct.eepro_local** %3, align 8
  %40 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @eepro_dis_int(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @eepro_clear_int(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @eepro_reset(i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.net_device* %50)
  ret i32 0
}

declare dso_local %struct.eepro_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @eepro_sw2bank1(i32) #1

declare dso_local signext i16 @inb(i32) #1

declare dso_local i32 @outb(i16 signext, i32) #1

declare dso_local i32 @eepro_sw2bank0(i32) #1

declare dso_local i32 @eepro_dis_int(i32) #1

declare dso_local i32 @eepro_clear_int(i32) #1

declare dso_local i32 @eepro_reset(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
