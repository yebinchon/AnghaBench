; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_copy_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_copy_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_supported_rates = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_supported_rates*, %struct.ipw_supported_rates*)* @ipw_copy_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_copy_rates(%struct.ipw_supported_rates* %0, %struct.ipw_supported_rates* %1) #0 {
  %3 = alloca %struct.ipw_supported_rates*, align 8
  %4 = alloca %struct.ipw_supported_rates*, align 8
  %5 = alloca i64, align 8
  store %struct.ipw_supported_rates* %0, %struct.ipw_supported_rates** %3, align 8
  store %struct.ipw_supported_rates* %1, %struct.ipw_supported_rates** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %9 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %14 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %23, align 4
  br label %24

24:                                               ; preds = %12
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %29 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %3, align 8
  %32 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
