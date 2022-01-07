; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_restore_vf_multicasts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_restore_vf_multicasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.vf_data_storage*, %struct.ixgbe_hw }
%struct.vf_data_storage = type { i32, i32* }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_restore_vf_multicasts(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.vf_data_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %71, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %12
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load %struct.vf_data_storage*, %struct.vf_data_storage** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %21, i64 %23
  store %struct.vf_data_storage* %24, %struct.vf_data_storage** %4, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %67, %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %28 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %38 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 5
  %45 = and i32 %44, 127
  store i32 %45, i32* %8, align 4
  %46 = load %struct.vf_data_storage*, %struct.vf_data_storage** %4, align 8
  %47 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 31
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @IXGBE_MTA(i32 %55)
  %57 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @IXGBE_MTA(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %31
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %25

70:                                               ; preds = %25
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %12

74:                                               ; preds = %12
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %76 = call i32 @ixgbe_restore_vf_macvlans(%struct.ixgbe_adapter* %75)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MTA(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_restore_vf_macvlans(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
