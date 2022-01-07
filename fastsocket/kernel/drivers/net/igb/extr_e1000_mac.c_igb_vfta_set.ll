; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_vfta_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_vfta_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.igb_adapter* }
%struct.TYPE_2__ = type { i64 }
%struct.igb_adapter = type { i32* }

@E1000_VFTA_ENTRY_SHIFT = common dso_local global i32 0, align 4
@E1000_VFTA_ENTRY_MASK = common dso_local global i32 0, align 4
@E1000_VFTA_ENTRY_BIT_SHIFT_MASK = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_vfta_set(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.igb_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @E1000_VFTA_ENTRY_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @E1000_VFTA_ENTRY_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @E1000_VFTA_ENTRY_BIT_SHIFT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = shl i32 1, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %22, align 8
  store %struct.igb_adapter* %23, %struct.igb_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %10, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %56

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @e1000_i350, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_i354, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63, %56
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @igb_write_vfta_i350(%struct.e1000_hw* %71, i32 %72, i32 %73)
  br label %80

75:                                               ; preds = %63
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @igb_write_vfta(%struct.e1000_hw* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %10, align 8
  %83 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @igb_write_vfta_i350(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @igb_write_vfta(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
