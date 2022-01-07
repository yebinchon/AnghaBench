; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8139_private = type { i32 }

@use_io = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8139_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8139_get_regs_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtl8139_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i64, i64* @use_io, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.rtl8139_private* @netdev_priv(%struct.net_device* %9)
  store %struct.rtl8139_private* %10, %struct.rtl8139_private** %4, align 8
  %11 = load %struct.rtl8139_private*, %struct.rtl8139_private** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %8, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local %struct.rtl8139_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
