; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_blink_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_blink_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.qlcnic_adapter*, i32, i32)* }
%struct.TYPE_4__ = type { i64 }

@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"LED test not supported for non privilege function\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_LED_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DIAG_RES_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set LED blink state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to reset LED blink state.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qlcnic_blink_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_blink_led(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netdev_warn(%struct.net_device* %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %184

26:                                               ; preds = %2
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %28 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 1
  %40 = call i64 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %184

45:                                               ; preds = %36
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %47 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %46, i32 1, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = call i32 @msleep_interruptible(i32 %53)
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %56 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %55, i32 0, i32 0)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 1
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %184

63:                                               ; preds = %30, %26
  %64 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = call i64 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %184

72:                                               ; preds = %63
  %73 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %168

79:                                               ; preds = %72
  %80 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %88 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %168

92:                                               ; preds = %85
  %93 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 1
  %96 = call i32 @set_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %79
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %99 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (%struct.qlcnic_adapter*, i32, i32)*, i32 (%struct.qlcnic_adapter*, i32, i32)** %101, align 8
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = call i32 %102(%struct.qlcnic_adapter* %103, i32 1, i32 15)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %168

113:                                              ; preds = %97
  %114 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 1
  %117 = call i64 @test_and_clear_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @qlcnic_diag_free_res(%struct.net_device* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 %124, 1000
  %126 = call i32 @msleep_interruptible(i32 %125)
  %127 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %128, i32 0, i32 1
  %130 = call i64 @test_bit(i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %168

133:                                              ; preds = %123
  %134 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 1
  %137 = call i64 @test_bit(i32 %134, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %142 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %168

146:                                              ; preds = %139
  %147 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 1
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %146, %133
  %152 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32 (%struct.qlcnic_adapter*, i32, i32)*, i32 (%struct.qlcnic_adapter*, i32, i32)** %155, align 8
  %157 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %158 = call i32 %156(%struct.qlcnic_adapter* %157, i32 0, i32 15)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %163 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %162, i32 0, i32 2
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %161, %151
  br label %168

168:                                              ; preds = %167, %145, %132, %107, %91, %78
  %169 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %170 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %171 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %170, i32 0, i32 1
  %172 = call i64 @test_and_clear_bit(i32 %169, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @qlcnic_diag_free_res(%struct.net_device* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %168
  %179 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %180 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %181 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %180, i32 0, i32 1
  %182 = call i32 @clear_bit(i32 %179, i32* %181)
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %69, %57, %42, %21
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
