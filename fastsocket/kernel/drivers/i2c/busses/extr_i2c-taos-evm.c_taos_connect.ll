; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.taos_data = type { i64, i32, i32, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { %struct.TYPE_2__, i32, %struct.serio*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAOS_STATE_INIT = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@taos_algorithm = common dso_local global i32 0, align 4
@TAOS_CMD_RESET = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@TAOS_STATE_IDLE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TAOS EVM reset failed (state=%d, pos=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TAOS EVM identification failed\0A\00", align 1
@TAOS_STATE_EOFF = common dso_local global i64 0, align 8
@TAOS_CMD_ECHO_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Echo off failed (state=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Connected to TAOS EVM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @taos_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taos_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.taos_data*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.taos_data* @kzalloc(i32 64, i32 %10)
  store %struct.taos_data* %11, %struct.taos_data** %6, align 8
  %12 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %13 = icmp ne %struct.taos_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %146

17:                                               ; preds = %2
  %18 = load i64, i64* @TAOS_STATE_INIT, align 8
  %19 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %20 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.serio*, %struct.serio** %4, align 8
  %22 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %23 = call i32 @serio_set_drvdata(%struct.serio* %21, %struct.taos_data* %22)
  %24 = load %struct.serio*, %struct.serio** %4, align 8
  %25 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %26 = call i32 @serio_open(%struct.serio* %24, %struct.serio_driver* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %141

30:                                               ; preds = %17
  %31 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %32 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %31, i32 0, i32 4
  store %struct.i2c_adapter* %32, %struct.i2c_adapter** %7, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 3
  store i32* @taos_algorithm, i32** %37, align 8
  %38 = load %struct.serio*, %struct.serio** %4, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 2
  store %struct.serio* %38, %struct.serio** %40, align 8
  %41 = load %struct.serio*, %struct.serio** %4, align 8
  %42 = getelementptr inbounds %struct.serio, %struct.serio* %41, i32 0, i32 0
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.serio*, %struct.serio** %4, align 8
  %47 = load i32, i32* @TAOS_CMD_RESET, align 4
  %48 = call i32 @serio_write(%struct.serio* %46, i32 %47)
  %49 = load i32, i32* @wq, align 4
  %50 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %51 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @msecs_to_jiffies(i32 2000)
  %57 = call i32 @wait_event_interruptible_timeout(i32 %49, i32 %55, i32 %56)
  %58 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %59 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %30
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.serio*, %struct.serio** %4, align 8
  %67 = getelementptr inbounds %struct.serio, %struct.serio* %66, i32 0, i32 0
  %68 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %69 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %72 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %73)
  br label %138

75:                                               ; preds = %30
  %76 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %77 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @taos_adapter_name(i32 %78)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.serio*, %struct.serio** %4, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 0
  %87 = bitcast i32* %86 to %struct.TYPE_2__*
  %88 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %138

89:                                               ; preds = %75
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlcpy(i32 %92, i8* %93, i32 4)
  %95 = load i64, i64* @TAOS_STATE_EOFF, align 8
  %96 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %97 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.serio*, %struct.serio** %4, align 8
  %99 = load i32, i32* @TAOS_CMD_ECHO_OFF, align 4
  %100 = call i32 @serio_write(%struct.serio* %98, i32 %99)
  %101 = load i32, i32* @wq, align 4
  %102 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %103 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @msecs_to_jiffies(i32 250)
  %109 = call i32 @wait_event_interruptible_timeout(i32 %101, i32 %107, i32 %108)
  %110 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %111 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %89
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %119 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %118, i32 0, i32 0
  %120 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %121 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %122)
  br label %138

124:                                              ; preds = %89
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %126 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %138

130:                                              ; preds = %124
  %131 = load %struct.serio*, %struct.serio** %4, align 8
  %132 = getelementptr inbounds %struct.serio, %struct.serio* %131, i32 0, i32 0
  %133 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %135 = call i32 @taos_instantiate_device(%struct.i2c_adapter* %134)
  %136 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %137 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  store i32 0, i32* %3, align 4
  br label %148

138:                                              ; preds = %129, %115, %82, %63
  %139 = load %struct.serio*, %struct.serio** %4, align 8
  %140 = call i32 @serio_close(%struct.serio* %139)
  br label %141

141:                                              ; preds = %138, %29
  %142 = load %struct.serio*, %struct.serio** %4, align 8
  %143 = call i32 @serio_set_drvdata(%struct.serio* %142, %struct.taos_data* null)
  %144 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %145 = call i32 @kfree(%struct.taos_data* %144)
  br label %146

146:                                              ; preds = %141, %14
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %130
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.taos_data* @kzalloc(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.taos_data*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @serio_write(%struct.serio*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i8* @taos_adapter_name(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @taos_instantiate_device(%struct.i2c_adapter*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.taos_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
