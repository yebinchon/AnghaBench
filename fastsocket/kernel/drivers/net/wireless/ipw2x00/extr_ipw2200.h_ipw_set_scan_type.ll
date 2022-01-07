; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.h_ipw_set_scan_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.h_ipw_set_scan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_scan_request_ext = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_scan_request_ext*, i32, i32)* @ipw_set_scan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_scan_type(%struct.ipw_scan_request_ext* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_scan_request_ext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_scan_request_ext* %0, %struct.ipw_scan_request_ext** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = srem i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load %struct.ipw_scan_request_ext*, %struct.ipw_scan_request_ext** %4, align 8
  %12 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 240
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 15
  %22 = or i32 %19, %21
  %23 = load %struct.ipw_scan_request_ext*, %struct.ipw_scan_request_ext** %4, align 8
  %24 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  br label %51

30:                                               ; preds = %3
  %31 = load %struct.ipw_scan_request_ext*, %struct.ipw_scan_request_ext** %4, align 8
  %32 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 15
  %42 = shl i32 %41, 4
  %43 = or i32 %39, %42
  %44 = load %struct.ipw_scan_request_ext*, %struct.ipw_scan_request_ext** %4, align 8
  %45 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %30, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
