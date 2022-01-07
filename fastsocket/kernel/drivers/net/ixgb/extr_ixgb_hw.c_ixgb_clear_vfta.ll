; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_clear_vfta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_clear_vfta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@IXGB_VLAN_FILTER_TBL_SIZE = common dso_local global i64 0, align 8
@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*)* @ixgb_clear_vfta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_clear_vfta(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @IXGB_VLAN_FILTER_TBL_SIZE, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %10 = load i32, i32* @VFTA, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %9, i32 %10, i64 %11, i32 0)
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
