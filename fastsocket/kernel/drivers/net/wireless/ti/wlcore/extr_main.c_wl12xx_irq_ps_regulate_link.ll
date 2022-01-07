; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_irq_ps_regulate_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_irq_ps_regulate_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }

@WL1271_PS_STA_MAX_PACKETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, i64, i64)* @wl12xx_irq_ps_regulate_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_irq_ps_regulate_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to i64*
  %14 = call i32 @test_bit(i64 %10, i64* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @WL1271_PS_STA_MAX_PACKETS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %4
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @wl12xx_ps_link_end(%struct.wl1271* %22, %struct.wl12xx_vif* %23, i64 %24)
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @WL1271_PS_STA_MAX_PACKETS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @wl12xx_ps_link_start(%struct.wl1271* %39, %struct.wl12xx_vif* %40, i64 %41, i32 1)
  br label %43

43:                                               ; preds = %38, %34, %31, %26
  br label %44

44:                                               ; preds = %43, %21
  ret void
}

declare dso_local i32 @test_bit(i64, i64*) #1

declare dso_local i32 @wl12xx_ps_link_end(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i32 @wl12xx_ps_link_start(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
