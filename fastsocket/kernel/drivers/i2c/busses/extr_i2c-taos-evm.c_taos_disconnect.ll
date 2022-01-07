; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.taos_data = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Disconnected from TAOS EVM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @taos_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taos_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.taos_data*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.taos_data* @serio_get_drvdata(%struct.serio* %4)
  store %struct.taos_data* %5, %struct.taos_data** %3, align 8
  %6 = load %struct.taos_data*, %struct.taos_data** %3, align 8
  %7 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.taos_data*, %struct.taos_data** %3, align 8
  %12 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @i2c_unregister_device(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.taos_data*, %struct.taos_data** %3, align 8
  %17 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %16, i32 0, i32 0
  %18 = call i32 @i2c_del_adapter(i32* %17)
  %19 = load %struct.serio*, %struct.serio** %2, align 8
  %20 = call i32 @serio_close(%struct.serio* %19)
  %21 = load %struct.serio*, %struct.serio** %2, align 8
  %22 = call i32 @serio_set_drvdata(%struct.serio* %21, i32* null)
  %23 = load %struct.taos_data*, %struct.taos_data** %3, align 8
  %24 = call i32 @kfree(%struct.taos_data* %23)
  %25 = load %struct.serio*, %struct.serio** %2, align 8
  %26 = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.taos_data* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @kfree(%struct.taos_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
