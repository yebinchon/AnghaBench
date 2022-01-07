; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_register_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_register_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_adapter = type { i64, i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }

@i2c_bus_type = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"i2c-%d\00", align 1
@i2c_adapter_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"adapter [%s] registered\0A\00", align 1
@__i2c_first_dynamic_bus_num = common dso_local global i64 0, align 8
@core_lock = common dso_local global i32 0, align 4
@i2c_do_add_adapter = common dso_local global i32 0, align 4
@i2c_adapter_idr = common dso_local global i32 0, align 4
@i2c_adapter_compat_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_register_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_register_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2c_bus_type, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i64, i64* @HZ, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 2
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_set_name(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store %struct.TYPE_8__* @i2c_bus_type, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32* @i2c_adapter_type, i32** %40, align 8
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 2
  %43 = call i32 @device_register(%struct.TYPE_9__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %68

47:                                               ; preds = %28
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 2
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_dbg(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @__i2c_first_dynamic_bus_num, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %61 = call i32 @i2c_scan_static_board_info(%struct.i2c_adapter* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = call i32 @mutex_lock(i32* @core_lock)
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %65 = load i32, i32* @i2c_do_add_adapter, align 4
  %66 = call i32 @bus_for_each_drv(%struct.TYPE_8__* @i2c_bus_type, i32* null, %struct.i2c_adapter* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = call i32 @mutex_unlock(i32* @core_lock)
  store i32 0, i32* %2, align 4
  br label %76

68:                                               ; preds = %46, %13
  %69 = call i32 @mutex_lock(i32* @core_lock)
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @idr_remove(i32* @i2c_adapter_idr, i64 %72)
  %74 = call i32 @mutex_unlock(i32* @core_lock)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %62
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @i2c_scan_static_board_info(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bus_for_each_drv(%struct.TYPE_8__*, i32*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
