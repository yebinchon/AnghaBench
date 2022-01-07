; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_eeprom_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_eeprom_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_eeprom_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_eeprom_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %5, align 8
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = call i32 @igb_get_flash_presence_i210(%struct.e1000_hw* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %22, align 8
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 0
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = call i32 %23(%struct.e1000_hw.0* %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  store i32 2, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %17
  br label %32

32:                                               ; preds = %31, %13
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %38, align 8
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 0
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = call i32 %39(%struct.e1000_hw.0* %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32*, i32** %4, align 8
  store i32 2, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  ret i32 %50
}

declare dso_local i32 @igb_get_flash_presence_i210(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
