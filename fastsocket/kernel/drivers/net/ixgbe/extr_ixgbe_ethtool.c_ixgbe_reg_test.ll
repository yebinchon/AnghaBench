; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_reg_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_reg_test = type { i64, i64, i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@reg_test_82598 = common dso_local global %struct.ixgbe_reg_test* null, align 8
@reg_test_82599 = common dso_local global %struct.ixgbe_reg_test* null, align 8
@IXGBE_STATUS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*)* @ixgbe_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_reg_test(%struct.ixgbe_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbe_reg_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 130, label %17
    i32 129, label %19
    i32 128, label %19
  ]

17:                                               ; preds = %2
  store i64 2147480575, i64* %11, align 8
  %18 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** @reg_test_82598, align 8
  store %struct.ixgbe_reg_test* %18, %struct.ixgbe_reg_test** %6, align 8
  br label %23

19:                                               ; preds = %2, %2
  store i64 2147480335, i64* %11, align 8
  %20 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** @reg_test_82599, align 8
  store %struct.ixgbe_reg_test* %20, %struct.ixgbe_reg_test** %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  store i32 1, i32* %22, align 4
  store i32 1, i32* %3, align 4
  br label %172

23:                                               ; preds = %19, %17
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* @IXGBE_STATUS, align 4
  %27 = call i64 @IXGBE_READ_REG(%struct.TYPE_5__* %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* @IXGBE_STATUS, align 4
  %31 = call i64 @IXGBE_READ_REG(%struct.TYPE_5__* %29, i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* @IXGBE_STATUS, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_5__* %35, i32 %36, i64 %37)
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* @IXGBE_STATUS, align 4
  %42 = call i64 @IXGBE_READ_REG(%struct.TYPE_5__* %40, i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %23
  %49 = load i32, i32* @drv, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @e_err(i32 %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32*, i32** %5, align 8
  store i32 1, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %172

54:                                               ; preds = %23
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* @IXGBE_STATUS, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_5__* %56, i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %167, %54
  %61 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %170

65:                                               ; preds = %60
  store i64 0, i64* %10, align 8
  br label %66

66:                                               ; preds = %164, %65
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %167

72:                                               ; preds = %66
  %73 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %74 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %163 [
    i32 136, label %76
    i32 135, label %90
    i32 131, label %104
    i32 134, label %120
    i32 132, label %134
    i32 133, label %148
  ]

76:                                               ; preds = %72
  %77 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = mul nsw i64 %80, 64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %84 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %87 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @REG_PATTERN_TEST(i64 %82, i32 %85, i32 %88)
  br label %163

90:                                               ; preds = %72
  %91 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %92 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = mul nsw i64 %94, 64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %98 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %101 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @REG_SET_AND_CHECK(i64 %96, i32 %99, i32 %102)
  br label %163

104:                                              ; preds = %72
  %105 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %106 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %113 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i64, i64* %10, align 8
  %117 = mul nsw i64 %116, 64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @writel(i32 %107, i64 %118)
  br label %163

120:                                              ; preds = %72
  %121 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %122 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = mul nsw i64 %124, 4
  %126 = add nsw i64 %123, %125
  %127 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %128 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %131 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @REG_PATTERN_TEST(i64 %126, i32 %129, i32 %132)
  br label %163

134:                                              ; preds = %72
  %135 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %136 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = mul nsw i64 %138, 8
  %140 = add nsw i64 %137, %139
  %141 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %142 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %145 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @REG_PATTERN_TEST(i64 %140, i32 %143, i32 %146)
  br label %163

148:                                              ; preds = %72
  %149 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %150 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 4
  %153 = load i64, i64* %10, align 8
  %154 = mul nsw i64 %153, 8
  %155 = add nsw i64 %152, %154
  %156 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %157 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %160 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @REG_PATTERN_TEST(i64 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %72, %148, %134, %120, %104, %90, %76
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %10, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %10, align 8
  br label %66

167:                                              ; preds = %66
  %168 = load %struct.ixgbe_reg_test*, %struct.ixgbe_reg_test** %6, align 8
  %169 = getelementptr inbounds %struct.ixgbe_reg_test, %struct.ixgbe_reg_test* %168, i32 1
  store %struct.ixgbe_reg_test* %169, %struct.ixgbe_reg_test** %6, align 8
  br label %60

170:                                              ; preds = %60
  %171 = load i32*, i32** %5, align 8
  store i32 0, i32* %171, align 4
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %48, %21
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @IXGBE_READ_REG(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @e_err(i32, i8*, i64, i64) #1

declare dso_local i32 @REG_PATTERN_TEST(i64, i32, i32) #1

declare dso_local i32 @REG_SET_AND_CHECK(i64, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
