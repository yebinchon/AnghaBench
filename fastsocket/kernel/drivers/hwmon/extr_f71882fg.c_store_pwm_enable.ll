; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f71882fg.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@f8000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@f71858fg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.f71882fg_data* %14, %struct.f71882fg_data** %10, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @simple_strtol(i8* %19, i32* null, i32 10)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %22 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @f8000, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %134

35:                                               ; preds = %29, %26, %4
  %36 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %37 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %40 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %41 = call i32 @f71882fg_read8(%struct.f71882fg_data* %39, i32 %40)
  %42 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %43 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %45 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @f8000, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %35
  %50 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %51 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 2, %53
  %55 = ashr i32 %52, %54
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %49
  %59 = load i64, i64* %12, align 8
  switch i64 %59, label %77 [
    i64 2, label %60
    i64 3, label %69
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 2, %61
  %63 = shl i32 2, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %66 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %80

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 2, %70
  %72 = shl i32 2, %71
  %73 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %74 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %80

77:                                               ; preds = %58
  %78 = load i64, i64* @EINVAL, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %9, align 8
  br label %129

80:                                               ; preds = %69, %60
  br label %122

81:                                               ; preds = %49, %35
  %82 = load i64, i64* %12, align 8
  switch i64 %82, label %118 [
    i64 1, label %83
    i64 2, label %109
  ]

83:                                               ; preds = %81
  %84 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %85 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @f71858fg, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %91 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 2, %93
  %95 = ashr i32 %92, %94
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i64, i64* @EINVAL, align 8
  %100 = sub i64 0, %99
  store i64 %100, i64* %9, align 8
  br label %129

101:                                              ; preds = %89, %83
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 2, %102
  %104 = shl i32 2, %103
  %105 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %106 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %121

109:                                              ; preds = %81
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 2, %110
  %112 = shl i32 2, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %115 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %121

118:                                              ; preds = %81
  %119 = load i64, i64* @EINVAL, align 8
  %120 = sub i64 0, %119
  store i64 %120, i64* %9, align 8
  br label %129

121:                                              ; preds = %109, %101
  br label %122

122:                                              ; preds = %121, %80
  %123 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %124 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %125 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %126 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @f71882fg_write8(%struct.f71882fg_data* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %118, %98, %77
  %130 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %131 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i64, i64* %9, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %129, %32
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
