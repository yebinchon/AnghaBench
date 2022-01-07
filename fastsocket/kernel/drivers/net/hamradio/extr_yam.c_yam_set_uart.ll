; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_yam.c_yam_set_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_yam.c_yam_set_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.yam_port = type { i32 }

@LCR_DLAB = common dso_local global i32 0, align 4
@LCR_BIT8 = common dso_local global i32 0, align 4
@PTT_OFF = common dso_local global i32 0, align 4
@ENABLE_RTXINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @yam_set_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yam_set_uart(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.yam_port*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.yam_port* @netdev_priv(%struct.net_device* %5)
  store %struct.yam_port* %6, %struct.yam_port** %3, align 8
  %7 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %8 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 115200, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IER(i32 %13)
  %15 = call i32 @outb(i32 0, i32 %14)
  %16 = load i32, i32* @LCR_DLAB, align 4
  %17 = load i32, i32* @LCR_BIT8, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LCR(i32 %21)
  %23 = call i32 @outb(i32 %18, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DLL(i32 %27)
  %29 = call i32 @outb(i32 %24, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DLM(i32 %32)
  %34 = call i32 @outb(i32 0, i32 %33)
  %35 = load i32, i32* @LCR_BIT8, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LCR(i32 %38)
  %40 = call i32 @outb(i32 %35, i32 %39)
  %41 = load i32, i32* @PTT_OFF, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MCR(i32 %44)
  %46 = call i32 @outb(i32 %41, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FCR(i32 %49)
  %51 = call i32 @outb(i32 0, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @RBR(i32 %54)
  %56 = call i32 @inb(i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MSR(i32 %59)
  %61 = call i32 @inb(i32 %60)
  %62 = load i32, i32* @ENABLE_RTXINT, align 4
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IER(i32 %65)
  %67 = call i32 @outb(i32 %62, i32 %66)
  ret void
}

declare dso_local %struct.yam_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @IER(i32) #1

declare dso_local i32 @LCR(i32) #1

declare dso_local i32 @DLL(i32) #1

declare dso_local i32 @DLM(i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @FCR(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @RBR(i32) #1

declare dso_local i32 @MSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
