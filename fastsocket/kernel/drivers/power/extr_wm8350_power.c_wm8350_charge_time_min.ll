; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_charge_time_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_charge_time_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32)* @wm8350_charge_time_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_charge_time_min(%struct.wm8350* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %7 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 30
  %14 = sdiv i32 %13, 15
  %15 = and i32 %14, 15
  %16 = shl i32 %15, 8
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 30
  %20 = sdiv i32 %19, 30
  %21 = and i32 %20, 15
  %22 = shl i32 %21, 8
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
