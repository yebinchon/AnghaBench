; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_therm_pm72_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_therm_pm72_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@driver_lock = common dso_local global i32 0, align 4
@state = common dso_local global i64 0, align 8
@state_detached = common dso_local global i64 0, align 8
@state_detaching = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"stopping control loops\0A\00", align 1
@u3_0 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"u3 0\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"lost U3-0, disposing control loops\0A\00", align 1
@u3_1 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"u3 1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"lost U3-1, detaching FCU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @therm_pm72_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @therm_pm72_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %3, align 8
  %7 = call i32 @mutex_lock(i32* @driver_lock)
  %8 = load i64, i64* @state, align 8
  %9 = load i64, i64* @state_detached, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @state_detaching, align 8
  store i64 %12, i64* @state, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mutex_unlock(i32* @driver_lock)
  %16 = call i32 (...) @stop_control_loops()
  %17 = call i32 @mutex_lock(i32* @driver_lock)
  %18 = load i32*, i32** @u3_0, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 (...) @dispose_control_loops()
  store i32* null, i32** @u3_0, align 8
  br label %29

29:                                               ; preds = %26, %20, %13
  %30 = load i32*, i32** @u3_1, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 (...) @detach_fcu()
  store i32* null, i32** @u3_1, align 8
  br label %41

41:                                               ; preds = %38, %32, %29
  %42 = load i32*, i32** @u3_0, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** @u3_1, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @state_detached, align 8
  store i64 %48, i64* @state, align 8
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = call i32 @mutex_unlock(i32* @driver_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stop_control_loops(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dispose_control_loops(...) #1

declare dso_local i32 @detach_fcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
