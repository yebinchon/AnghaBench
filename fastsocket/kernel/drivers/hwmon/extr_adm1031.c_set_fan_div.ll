; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i32*, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm1031_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adm1031_data* %20, %struct.adm1031_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @simple_strtol(i8* %25, i32* null, i32 10)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %47

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 255
  br label %43

43:                                               ; preds = %38, %37
  %44 = phi i32 [ 64, %37 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ 128, %33 ], [ %44, %43 ]
  br label %47

47:                                               ; preds = %45, %29
  %48 = phi i32 [ 192, %29 ], [ %46, %45 ]
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %5, align 8
  br label %156

54:                                               ; preds = %47
  %55 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %56 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ADM1031_REG_FAN_DIV(i32 %59)
  %61 = call i8* @adm1031_read_value(%struct.i2c_client* %58, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %64 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ADM1031_REG_FAN_MIN(i32 %70)
  %72 = call i8* @adm1031_read_value(%struct.i2c_client* %69, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %75 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %81 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FAN_DIV_FROM_REG(i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %90 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 63, %95
  %97 = or i32 %88, %96
  %98 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %99 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %105 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %15, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = sdiv i32 %112, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %115, 255
  br i1 %116, label %117, label %118

117:                                              ; preds = %54
  br label %120

118:                                              ; preds = %54
  %119 = load i32, i32* %16, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ 255, %117 ], [ %119, %118 ]
  %122 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %123 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @ADM1031_REG_FAN_DIV(i32 %129)
  %131 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %132 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @adm1031_write_value(%struct.i2c_client* %128, i32 %130, i32 %137)
  %139 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @ADM1031_REG_FAN_MIN(i32 %140)
  %142 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %143 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @adm1031_write_value(%struct.i2c_client* %139, i32 %141, i32 %148)
  %150 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %151 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %153 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %152, i32 0, i32 2
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i64, i64* %9, align 8
  store i64 %155, i64* %5, align 8
  br label %156

156:                                              ; preds = %120, %51
  %157 = load i64, i64* %5, align 8
  ret i64 %157
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1031_REG_FAN_DIV(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_MIN(i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
