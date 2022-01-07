; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_reg_pattern_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_reg_pattern_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@reg_pattern_test.test_pattern = internal constant [4 x i32] [i32 1515870810, i32 -1515870811, i32 0, i32 -1], align 16
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*, i32, i32, i32)* @reg_pattern_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_pattern_test(%struct.ixgbe_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %94, %5
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 0))
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %33, i64 %40)
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %50, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %19
  %61 = load i32, i32* @drv, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @reg_pattern_test.test_pattern, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @e_err(i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @writel(i32 %75, i64 %82)
  store i32 1, i32* %6, align 4
  br label %98

84:                                               ; preds = %19
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = call i32 @writel(i32 %85, i64 %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %15

97:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @e_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
