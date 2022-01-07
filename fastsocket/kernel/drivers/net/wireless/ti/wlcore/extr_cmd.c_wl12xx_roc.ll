; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_roc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_roc(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @test_bit(i32 %13, i32 %16)
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @wl12xx_cmd_roc(%struct.wl1271* %22, %struct.wl12xx_vif* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %37

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %20
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wl12xx_cmd_roc(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
