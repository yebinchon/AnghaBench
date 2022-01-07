; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_average_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_average_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.average = type { i32, i32, i32 }

@AVG_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.average*)* @average_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @average_value(%struct.average* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.average*, align 8
  store %struct.average* %0, %struct.average** %3, align 8
  %4 = load %struct.average*, %struct.average** %3, align 8
  %5 = getelementptr inbounds %struct.average, %struct.average* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @unlikely(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.average*, %struct.average** %3, align 8
  %11 = getelementptr inbounds %struct.average, %struct.average* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.average*, %struct.average** %3, align 8
  %16 = getelementptr inbounds %struct.average, %struct.average* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.average*, %struct.average** %3, align 8
  %19 = getelementptr inbounds %struct.average, %struct.average* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.average*, %struct.average** %3, align 8
  %25 = getelementptr inbounds %struct.average, %struct.average* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AVG_ENTRIES, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %22, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
