; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_intr_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw, %struct.TYPE_2__*, %struct.net_device* }
%struct.e1000_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@e1000_test_intr = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@IMC = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_intr_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 1
  store %struct.e1000_hw* %21, %struct.e1000_hw** %11, align 8
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @e1000_test_intr, align 4
  %25 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i64 @request_irq(i32 %23, i32 %24, i32 %25, i32 %28, %struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %46

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @e1000_test_intr, align 4
  %36 = load i32, i32* @IRQF_SHARED, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i64 @request_irq(i32 %34, i32 %35, i32 %36, i32 %39, %struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  store i32 1, i32* %44, align 4
  store i32 -1, i32* %3, align 4
  br label %143

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @e_info(%struct.e1000_hw* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @IMC, align 4
  %54 = call i32 @ew32(i32 %53, i32 -1)
  %55 = call i32 (...) @E1000_WRITE_FLUSH()
  %56 = call i32 @msleep(i32 10)
  br label %57

57:                                               ; preds = %130, %46
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %133

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @IMC, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ew32(i32 %68, i32 %69)
  %71 = load i32, i32* @ICS, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ew32(i32 %71, i32 %72)
  %74 = call i32 (...) @E1000_WRITE_FLUSH()
  %75 = call i32 @msleep(i32 10)
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32*, i32** %5, align 8
  store i32 3, i32* %83, align 4
  br label %133

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %60
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @IMS, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ew32(i32 %88, i32 %89)
  %91 = load i32, i32* @ICS, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ew32(i32 %91, i32 %92)
  %94 = call i32 (...) @E1000_WRITE_FLUSH()
  %95 = call i32 @msleep(i32 10)
  %96 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %85
  %103 = load i32*, i32** %5, align 8
  store i32 4, i32* %103, align 4
  br label %133

104:                                              ; preds = %85
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %104
  %108 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* @IMC, align 4
  %111 = load i32, i32* %7, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %112, 32767
  %114 = call i32 @ew32(i32 %110, i32 %113)
  %115 = load i32, i32* @ICS, align 4
  %116 = load i32, i32* %7, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %117, 32767
  %119 = call i32 @ew32(i32 %115, i32 %118)
  %120 = call i32 (...) @E1000_WRITE_FLUSH()
  %121 = call i32 @msleep(i32 10)
  %122 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %107
  %127 = load i32*, i32** %5, align 8
  store i32 5, i32* %127, align 4
  br label %133

128:                                              ; preds = %107
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %57

133:                                              ; preds = %126, %102, %82, %57
  %134 = load i32, i32* @IMC, align 4
  %135 = call i32 @ew32(i32 %134, i32 -1)
  %136 = call i32 (...) @E1000_WRITE_FLUSH()
  %137 = call i32 @msleep(i32 10)
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = call i32 @free_irq(i32 %138, %struct.net_device* %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %133, %43
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @e_info(%struct.e1000_hw*, i8*, i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
