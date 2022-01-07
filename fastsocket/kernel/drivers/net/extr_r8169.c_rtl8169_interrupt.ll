; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32, i32 }

@RTL_EVENT_NAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtl8169_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %11)
  store %struct.rtl8169_private* %12, %struct.rtl8169_private** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %14 = call i32 @rtl_get_events(%struct.rtl8169_private* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 65535
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* @RTL_EVENT_NAPI, align 4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %32 = call i32 @rtl_irq_disable(%struct.rtl8169_private* %31)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %34 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %33, i32 0, i32 1
  %35 = call i32 @napi_schedule(i32* %34)
  br label %36

36:                                               ; preds = %30, %20
  br label %37

37:                                               ; preds = %36, %17, %2
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @IRQ_RETVAL(i32 %38)
  ret i32 %39
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_get_events(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_irq_disable(%struct.rtl8169_private*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
