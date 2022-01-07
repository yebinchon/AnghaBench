; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_set_master_slave_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_set_master_slave_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@CR_1000T_MS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_set_master_slave_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_set_master_slave_mode(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %9, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = bitcast %struct.e1000_hw* %11 to %struct.e1000_hw.1*
  %13 = load i32, i32* @PHY_1000T_CTRL, align 4
  %14 = call i64 %10(%struct.e1000_hw.1* %12, i32 %13, i32* %5)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 129, i32 128
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 130, %31 ]
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %60 [
    i32 129, label %41
    i32 128, label %47
    i32 130, label %55
  ]

41:                                               ; preds = %32
  %42 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %43 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %61

47:                                               ; preds = %32
  %48 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %32
  %56 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %32, %55
  br label %61

61:                                               ; preds = %60, %47, %41
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = load i32, i32* @PHY_1000T_CTRL, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 %66(%struct.e1000_hw.0* %68, i32 %69, i32 %70)
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %61, %17
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
