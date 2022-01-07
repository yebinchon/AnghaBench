; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_get_pendown_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ads7846.c_get_pendown_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32 (...)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads7846*)* @get_pendown_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pendown_state(%struct.ads7846* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ads7846*, align 8
  store %struct.ads7846* %0, %struct.ads7846** %3, align 8
  %4 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %5 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %4, i32 0, i32 0
  %6 = load i32 (...)*, i32 (...)** %5, align 8
  %7 = icmp ne i32 (...)* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %10 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %15 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gpio_get_value(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
