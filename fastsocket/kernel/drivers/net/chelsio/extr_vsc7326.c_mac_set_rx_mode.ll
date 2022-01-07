; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.t1_rx_mode = type { i32 }

@REG_ING_FFILT_UM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, %struct.t1_rx_mode*)* @mac_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_set_rx_mode(%struct.cmac* %0, %struct.t1_rx_mode* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca %struct.t1_rx_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store %struct.t1_rx_mode* %1, %struct.t1_rx_mode** %4, align 8
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cmac*, %struct.cmac** %3, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @REG_ING_FFILT_UM_EN, align 4
  %16 = call i32 @vsc_read(i32 %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 4096
  store i32 %18, i32* %5, align 4
  %19 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %4, align 8
  %20 = call i64 @t1_rx_mode_promisc(%struct.t1_rx_mode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 16
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 16
  %32 = shl i32 1, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.cmac*, %struct.cmac** %3, align 8
  %37 = getelementptr inbounds %struct.cmac, %struct.cmac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @REG_ING_FFILT_UM_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @vsc_write(i32 %38, i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @vsc_read(i32, i32, i32*) #1

declare dso_local i64 @t1_rx_mode_promisc(%struct.t1_rx_mode*) #1

declare dso_local i32 @vsc_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
