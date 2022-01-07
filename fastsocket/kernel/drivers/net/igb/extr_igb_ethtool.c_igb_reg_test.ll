; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_reg_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_reg_test = type { i64, i64, i32, i64, i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw, %struct.TYPE_4__* }
%struct.e1000_hw = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@reg_test_i350 = common dso_local global %struct.igb_reg_test* null, align 8
@reg_test_i210 = common dso_local global %struct.igb_reg_test* null, align 8
@reg_test_82580 = common dso_local global %struct.igb_reg_test* null, align 8
@reg_test_82576 = common dso_local global %struct.igb_reg_test* null, align 8
@reg_test_82575 = common dso_local global %struct.igb_reg_test* null, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_reg_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.igb_reg_test*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %20
    i32 131, label %22
    i32 130, label %22
    i32 132, label %24
    i32 133, label %26
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.igb_reg_test*, %struct.igb_reg_test** @reg_test_i350, align 8
  store %struct.igb_reg_test* %21, %struct.igb_reg_test** %7, align 8
  store i64 2146431999, i64* %12, align 8
  br label %30

22:                                               ; preds = %2, %2
  %23 = load %struct.igb_reg_test*, %struct.igb_reg_test** @reg_test_i210, align 8
  store %struct.igb_reg_test* %23, %struct.igb_reg_test** %7, align 8
  store i64 2146431999, i64* %12, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.igb_reg_test*, %struct.igb_reg_test** @reg_test_82580, align 8
  store %struct.igb_reg_test* %25, %struct.igb_reg_test** %7, align 8
  store i64 2146431999, i64* %12, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.igb_reg_test*, %struct.igb_reg_test** @reg_test_82576, align 8
  store %struct.igb_reg_test* %27, %struct.igb_reg_test** %7, align 8
  store i64 2147480575, i64* %12, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load %struct.igb_reg_test*, %struct.igb_reg_test** @reg_test_82575, align 8
  store %struct.igb_reg_test* %29, %struct.igb_reg_test** %7, align 8
  store i64 2147480575, i64* %12, align 8
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20
  %31 = load i32, i32* @E1000_STATUS, align 4
  %32 = call i64 @rd32(i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @E1000_STATUS, align 4
  %34 = call i64 @rd32(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @E1000_STATUS, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @wr32(i32 %37, i64 %38)
  %40 = load i32, i32* @E1000_STATUS, align 4
  %41 = call i64 @rd32(i32 %40)
  %42 = load i64, i64* %12, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i32*, i32** %5, align 8
  store i32 1, i32* %55, align 4
  store i32 1, i32* %3, align 4
  br label %181

56:                                               ; preds = %30
  %57 = load i32, i32* @E1000_STATUS, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @wr32(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %176, %56
  %61 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %62 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %179

65:                                               ; preds = %60
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %173, %65
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %69 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %176

72:                                               ; preds = %66
  %73 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %74 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %172 [
    i32 139, label %76
    i32 138, label %93
    i32 134, label %110
    i32 137, label %129
    i32 135, label %143
    i32 136, label %157
  ]

76:                                               ; preds = %72
  %77 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %78 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %82 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = mul nsw i64 %80, %83
  %85 = add nsw i64 %79, %84
  %86 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %87 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %90 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @REG_PATTERN_TEST(i64 %85, i32 %88, i32 %91)
  br label %172

93:                                               ; preds = %72
  %94 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %95 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %99 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = mul nsw i64 %97, %100
  %102 = add nsw i64 %96, %101
  %103 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %104 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %107 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @REG_SET_AND_CHECK(i64 %102, i32 %105, i32 %108)
  br label %172

110:                                              ; preds = %72
  %111 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %112 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %119 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %124 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = mul nsw i64 %122, %125
  %127 = add nsw i64 %121, %126
  %128 = call i32 @writel(i32 %113, i64 %127)
  br label %172

129:                                              ; preds = %72
  %130 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %131 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = mul nsw i64 %133, 4
  %135 = add nsw i64 %132, %134
  %136 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %137 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %140 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @REG_PATTERN_TEST(i64 %135, i32 %138, i32 %141)
  br label %172

143:                                              ; preds = %72
  %144 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %145 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = mul nsw i64 %147, 8
  %149 = add nsw i64 %146, %148
  %150 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %151 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %154 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @REG_PATTERN_TEST(i64 %149, i32 %152, i32 %155)
  br label %172

157:                                              ; preds = %72
  %158 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %159 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 4
  %162 = load i64, i64* %11, align 8
  %163 = mul nsw i64 %162, 8
  %164 = add nsw i64 %161, %163
  %165 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %166 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %169 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @REG_PATTERN_TEST(i64 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %72, %157, %143, %129, %110, %93, %76
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %11, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %11, align 8
  br label %66

176:                                              ; preds = %66
  %177 = load %struct.igb_reg_test*, %struct.igb_reg_test** %7, align 8
  %178 = getelementptr inbounds %struct.igb_reg_test, %struct.igb_reg_test* %177, i32 1
  store %struct.igb_reg_test* %178, %struct.igb_reg_test** %7, align 8
  br label %60

179:                                              ; preds = %60
  %180 = load i32*, i32** %5, align 8
  store i32 0, i32* %180, align 4
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %47
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @REG_PATTERN_TEST(i64, i32, i32) #1

declare dso_local i32 @REG_SET_AND_CHECK(i64, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
