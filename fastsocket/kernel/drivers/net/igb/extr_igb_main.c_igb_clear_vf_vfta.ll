; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_clear_vf_vfta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_clear_vf_vfta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_hw = type { i32 }

@E1000_VLVF_POOLSEL_SHIFT = common dso_local global i32 0, align 4
@E1000_VLVF_ARRAY_SIZE = common dso_local global i32 0, align 4
@E1000_VLVF_POOLSEL_MASK = common dso_local global i32 0, align 4
@E1000_VLVF_VLANID_ENABLE = common dso_local global i32 0, align 4
@E1000_VLVF_VLANID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_clear_vf_vfta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_clear_vf_vfta(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load i32, i32* @E1000_VLVF_POOLSEL_SHIFT, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  %15 = shl i32 1, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @E1000_VLVF_ARRAY_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @E1000_VLVF(i32 %21)
  %23 = call i32 @rd32(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @E1000_VLVF_POOLSEL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @E1000_VLVF_VLANID_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @E1000_VLVF_VLANID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @igb_vfta_set(%struct.e1000_hw* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37, %32, %20
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @E1000_VLVF(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @wr32(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_VLVF(i32) #1

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
