; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_link_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_link_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*, i32*)* @igbvf_link_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_link_test(%struct.igbvf_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %5, align 8
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.0*
  %16 = call i32 %13(%struct.e1000_hw.0* %15)
  %17 = load i32, i32* @STATUS, align 4
  %18 = call i32 @er32(i32 %17)
  %19 = load i32, i32* @E1000_STATUS_LU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
