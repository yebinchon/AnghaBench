; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_rx.c_wl1251_rx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wl1251_rx_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, %struct.wl1251_rx_descriptor*)* @wl1251_rx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_rx_header(%struct.wl1251* %0, %struct.wl1251_rx_descriptor* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wl1251_rx_descriptor*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.wl1251_rx_descriptor* %1, %struct.wl1251_rx_descriptor** %4, align 8
  %6 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %12 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.wl1251_rx_descriptor*, %struct.wl1251_rx_descriptor** %4, align 8
  %29 = call i32 @wl1251_mem_read(%struct.wl1251* %26, i32 %27, %struct.wl1251_rx_descriptor* %28, i32 4)
  ret void
}

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i32, %struct.wl1251_rx_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
