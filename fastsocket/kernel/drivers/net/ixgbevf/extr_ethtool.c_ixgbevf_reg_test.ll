; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_reg_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_reg_test = type { i64, i64, i32, i32, i32 }
%struct.ixgbevf_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@reg_test_vf = common dso_local global %struct.ixgbevf_reg_test* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32*)* @ixgbevf_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_reg_test(%struct.ixgbevf_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgbevf_reg_test*, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** @reg_test_vf, align 8
  store %struct.ixgbevf_reg_test* %7, %struct.ixgbevf_reg_test** %5, align 8
  br label %8

8:                                                ; preds = %115, %2
  %9 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %118

13:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %112, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %115

20:                                               ; preds = %14
  %21 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %111 [
    i32 133, label %24
    i32 132, label %38
    i32 128, label %52
    i32 131, label %68
    i32 129, label %82
    i32 130, label %96
  ]

24:                                               ; preds = %20
  %25 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = mul nsw i64 %28, 64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REG_PATTERN_TEST(i64 %30, i32 %33, i32 %36)
  br label %111

38:                                               ; preds = %20
  %39 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = mul nsw i64 %42, 64
  %44 = add nsw i64 %41, %43
  %45 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_SET_AND_CHECK(i64 %44, i32 %47, i32 %50)
  br label %111

52:                                               ; preds = %20
  %53 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* %6, align 8
  %65 = mul nsw i64 %64, 64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i32 %55, i64 %66)
  br label %111

68:                                               ; preds = %20
  %69 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = mul nsw i64 %72, 4
  %74 = add nsw i64 %71, %73
  %75 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @REG_PATTERN_TEST(i64 %74, i32 %77, i32 %80)
  br label %111

82:                                               ; preds = %20
  %83 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = mul nsw i64 %86, 8
  %88 = add nsw i64 %85, %87
  %89 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %90 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %93 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @REG_PATTERN_TEST(i64 %88, i32 %91, i32 %94)
  br label %111

96:                                               ; preds = %20
  %97 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 4
  %101 = load i64, i64* %6, align 8
  %102 = mul nsw i64 %101, 8
  %103 = add nsw i64 %100, %102
  %104 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %105 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %108 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @REG_PATTERN_TEST(i64 %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %20, %96, %82, %68, %52, %38, %24
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %14

115:                                              ; preds = %14
  %116 = load %struct.ixgbevf_reg_test*, %struct.ixgbevf_reg_test** %5, align 8
  %117 = getelementptr inbounds %struct.ixgbevf_reg_test, %struct.ixgbevf_reg_test* %116, i32 1
  store %struct.ixgbevf_reg_test* %117, %struct.ixgbevf_reg_test** %5, align 8
  br label %8

118:                                              ; preds = %8
  %119 = load i32*, i32** %4, align 8
  store i32 0, i32* %119, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %120, align 4
  ret i32 %121
}

declare dso_local i32 @REG_PATTERN_TEST(i64, i32, i32) #1

declare dso_local i32 @REG_SET_AND_CHECK(i64, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
