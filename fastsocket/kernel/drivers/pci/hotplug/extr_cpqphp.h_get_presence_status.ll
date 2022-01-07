; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_get_presence_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_get_presence_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i64 }
%struct.slot = type { i32 }

@INT_INPUT_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, %struct.slot*)* @get_presence_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_presence_status(%struct.controller* %0, %struct.slot* %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store %struct.slot* %1, %struct.slot** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.slot*, %struct.slot** %4, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.controller*, %struct.controller** %3, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.controller*, %struct.controller** %3, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INT_INPUT_CLEAR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = ashr i32 %22, 23
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, -1
  %26 = ashr i32 %25, 15
  %27 = or i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 2
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
