; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_rx.c_lbs_save_rawSNRNF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_rx.c_lbs_save_rawSNRNF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32*, i32* }
%struct.rxpd = type { i32, i32 }

@DEFAULT_DATA_AVG_FACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.rxpd*)* @lbs_save_rawSNRNF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_save_rawSNRNF(%struct.lbs_private* %0, %struct.rxpd* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.rxpd*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.rxpd* %1, %struct.rxpd** %4, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DEFAULT_DATA_AVG_FACTOR, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.rxpd*, %struct.rxpd** %4, align 8
  %17 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.rxpd*, %struct.rxpd** %4, align 8
  %27 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEFAULT_DATA_AVG_FACTOR, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %15
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
