; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_instantiate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_instantiate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"TAOS TSL2550 EVM\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Instantiating device %s at 0x%02x\0A\00", align 1
@tsl2550_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.i2c_adapter*)* @taos_instantiate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @taos_instantiate_device(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strncmp(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsl2550_info, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsl2550_info, i32 0, i32 0), align 4
  %14 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %16 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %15, %struct.TYPE_3__* @tsl2550_info)
  store %struct.i2c_client* %16, %struct.i2c_client** %2, align 8
  br label %18

17:                                               ; preds = %1
  store %struct.i2c_client* null, %struct.i2c_client** %2, align 8
  br label %18

18:                                               ; preds = %17, %9
  %19 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  ret %struct.i2c_client* %19
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
