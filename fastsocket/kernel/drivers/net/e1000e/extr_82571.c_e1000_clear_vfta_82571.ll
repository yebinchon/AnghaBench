; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_clear_vfta_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_clear_vfta_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@E1000_VFTA_ENTRY_SHIFT = common dso_local global i64 0, align 8
@E1000_VFTA_ENTRY_MASK = common dso_local global i64 0, align 8
@E1000_VFTA_ENTRY_BIT_SHIFT_MASK = common dso_local global i32 0, align 4
@E1000_VLAN_FILTER_TBL_SIZE = common dso_local global i64 0, align 8
@E1000_VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_vfta_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_vfta_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %37 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @E1000_VFTA_ENTRY_SHIFT, align 8
  %23 = ashr i64 %21, %22
  %24 = load i64, i64* @E1000_VFTA_ENTRY_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @E1000_VFTA_ENTRY_BIT_SHIFT_MASK, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = shl i32 1, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %17, %11
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %36
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @E1000_VLAN_FILTER_TBL_SIZE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 0, %49 ]
  store i64 %51, i64* %4, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = load i32, i32* @E1000_VFTA, align 4
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %52, i32 %53, i64 %54, i64 %55)
  %57 = call i32 (...) @e1e_flush()
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %39

61:                                               ; preds = %39
  ret void
}

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i64) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
