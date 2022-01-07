; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_beep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83781d_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.w83781d_data* %15, %struct.w83781d_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = and i64 %22, -2
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %131

28:                                               ; preds = %4
  %29 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %30 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %38 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %46 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %54 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %55 = call i32 @w83781d_read_value(%struct.w83781d_data* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %71 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @w83781d_write_value(%struct.w83781d_data* %70, i32 %71, i32 %72)
  br label %126

74:                                               ; preds = %49
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %79 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %80 = call i32 @w83781d_read_value(%struct.w83781d_data* %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 8
  %86 = shl i32 1, %85
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %96

89:                                               ; preds = %77
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 8
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %13, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %98 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @w83781d_write_value(%struct.w83781d_data* %97, i32 %98, i32 %99)
  br label %125

101:                                              ; preds = %74
  %102 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %103 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %104 = call i32 @w83781d_read_value(%struct.w83781d_data* %102, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 16
  %110 = shl i32 1, %109
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %120

113:                                              ; preds = %101
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, 16
  %116 = shl i32 1, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %113, %107
  %121 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %122 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @w83781d_write_value(%struct.w83781d_data* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %96
  br label %126

126:                                              ; preds = %125, %69
  %127 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %128 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i64, i64* %9, align 8
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %126, %25
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
