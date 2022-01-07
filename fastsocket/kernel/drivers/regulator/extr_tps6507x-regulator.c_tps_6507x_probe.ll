; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps_6507x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps_6507x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.regulator_init_data* }
%struct.regulator_init_data = type { i32 }
%struct.i2c_device_id = type { i32, i64 }
%struct.tps_info = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.tps_pmic = type { %struct.regulator_dev**, %struct.i2c_client*, %struct.TYPE_4__*, %struct.tps_info**, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32 }

@tps_6507x_probe.desc_id = internal global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS6507X_NUM_REGULATOR = common dso_local global i32 0, align 4
@num_voltages = common dso_local global i32* null, align 8
@TPS6507X_DCDC_3 = common dso_local global i32 0, align 4
@tps6507x_ldo_ops = common dso_local global i32 0, align 4
@tps6507x_dcdc_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps_6507x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps_6507x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps_info*, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.tps_pmic*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.tps_info*
  store %struct.tps_info* %15, %struct.tps_info** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %183

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.regulator_init_data*, %struct.regulator_init_data** %28, align 8
  store %struct.regulator_init_data* %29, %struct.regulator_init_data** %7, align 8
  %30 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %31 = icmp ne %struct.regulator_init_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %183

35:                                               ; preds = %25
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tps_pmic* @kzalloc(i32 40, i32 %36)
  store %struct.tps_pmic* %37, %struct.tps_pmic** %9, align 8
  %38 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %39 = icmp ne %struct.tps_pmic* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %183

43:                                               ; preds = %35
  %44 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %45 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %44, i32 0, i32 4
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %49 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %48, i32 0, i32 1
  store %struct.i2c_client* %47, %struct.i2c_client** %49, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %172, %43
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @TPS6507X_NUM_REGULATOR, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %179

54:                                               ; preds = %50
  %55 = load %struct.tps_info*, %struct.tps_info** %6, align 8
  %56 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %57 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %56, i32 0, i32 3
  %58 = load %struct.tps_info**, %struct.tps_info*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tps_info*, %struct.tps_info** %58, i64 %60
  store %struct.tps_info* %55, %struct.tps_info** %61, align 8
  %62 = load %struct.tps_info*, %struct.tps_info** %6, align 8
  %63 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %66 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  store i32 %64, i32* %71, align 8
  %72 = load i32, i32* @tps_6507x_probe.desc_id, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @tps_6507x_probe.desc_id, align 4
  %74 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %75 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 %72, i32* %80, align 4
  %81 = load i32*, i32** @num_voltages, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %87 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i32 %85, i32* %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @TPS6507X_DCDC_3, align 4
  %95 = icmp sgt i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32* @tps6507x_ldo_ops, i32* @tps6507x_dcdc_ops
  %98 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %99 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i32* %97, i32** %104, align 8
  %105 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %106 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %107 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* @THIS_MODULE, align 4
  %114 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %115 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  %121 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %122 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %130 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %131 = call %struct.regulator_dev* @regulator_register(%struct.TYPE_4__* %126, %struct.TYPE_5__* %128, %struct.regulator_init_data* %129, %struct.tps_pmic* %130)
  store %struct.regulator_dev* %131, %struct.regulator_dev** %8, align 8
  %132 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %133 = call i64 @IS_ERR(%struct.regulator_dev* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %54
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %139 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_err(%struct.TYPE_5__* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %145, %135
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %147 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %146, i32 0, i32 0
  %148 = load %struct.regulator_dev**, %struct.regulator_dev*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %148, i64 %151
  %153 = load %struct.regulator_dev*, %struct.regulator_dev** %152, align 8
  %154 = call i32 @regulator_unregister(%struct.regulator_dev* %153)
  br label %142

155:                                              ; preds = %142
  %156 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %157 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %156, i32 0, i32 1
  store %struct.i2c_client* null, %struct.i2c_client** %157, align 8
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = call i32 @i2c_set_clientdata(%struct.i2c_client* %158, %struct.tps_pmic* null)
  %160 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %161 = call i32 @kfree(%struct.tps_pmic* %160)
  %162 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %163 = call i32 @PTR_ERR(%struct.regulator_dev* %162)
  store i32 %163, i32* %3, align 4
  br label %183

164:                                              ; preds = %54
  %165 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %166 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %167 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %166, i32 0, i32 0
  %168 = load %struct.regulator_dev**, %struct.regulator_dev*** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %168, i64 %170
  store %struct.regulator_dev* %165, %struct.regulator_dev** %171, align 8
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  %175 = load %struct.tps_info*, %struct.tps_info** %6, align 8
  %176 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %175, i32 1
  store %struct.tps_info* %176, %struct.tps_info** %6, align 8
  %177 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %178 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %177, i32 1
  store %struct.regulator_init_data* %178, %struct.regulator_init_data** %7, align 8
  br label %50

179:                                              ; preds = %50
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = load %struct.tps_pmic*, %struct.tps_pmic** %9, align 8
  %182 = call i32 @i2c_set_clientdata(%struct.i2c_client* %180, %struct.tps_pmic* %181)
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %179, %155, %40, %32, %22
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.tps_pmic* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.regulator_dev* @regulator_register(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.regulator_init_data*, %struct.tps_pmic*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @regulator_unregister(%struct.regulator_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps_pmic*) #1

declare dso_local i32 @kfree(%struct.tps_pmic*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
