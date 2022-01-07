; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mbx.c_igb_read_mbx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mbx.c_igb_read_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i64, i64)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_mbx(%struct.e1000_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.e1000_mbx_info*, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %9, align 8
  %13 = load i32, i32* @E1000_ERR_MBX, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %17 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %22 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %26 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64)** %27, align 8
  %29 = icmp ne i32 (%struct.e1000_hw.0*, i32*, i64, i64)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %32 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.0*
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 %34(%struct.e1000_hw.0* %36, i32* %37, i64 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %30, %24
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
