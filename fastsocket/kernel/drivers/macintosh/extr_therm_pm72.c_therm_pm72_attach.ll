; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_therm_pm72_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_therm_pm72_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@driver_lock = common dso_local global i32 0, align 4
@state = common dso_local global i64 0, align 8
@state_detached = common dso_local global i64 0, align 8
@state_attaching = common dso_local global i64 0, align 8
@u3_0 = common dso_local global %struct.i2c_adapter* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"u3 0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"found U3-0\0A\00", align 1
@k2 = common dso_local global %struct.i2c_adapter* null, align 8
@rackmac = common dso_local global i64 0, align 8
@u3_1 = common dso_local global %struct.i2c_adapter* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"u3 1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"found U3-1, attaching FCU\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mac-io 0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Found K2\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"everything up, starting control loops\0A\00", align 1
@state_attached = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @therm_pm72_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @therm_pm72_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %4 = call i32 @mutex_lock(i32* @driver_lock)
  %5 = load i64, i64* @state, align 8
  %6 = load i64, i64* @state_detached, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @state_attaching, align 8
  store i64 %9, i64* @state, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @state, align 8
  %12 = load i64, i64* @state_attaching, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @mutex_unlock(i32* @driver_lock)
  store i32 0, i32* %2, align 4
  br label %98

16:                                               ; preds = %10
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** @u3_0, align 8
  %18 = icmp eq %struct.i2c_adapter* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** @u3_0, align 8
  %27 = call i32 @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** @k2, align 8
  %29 = icmp ne %struct.i2c_adapter* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @rackmac, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %25
  %34 = call i64 (...) @create_control_loops()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store %struct.i2c_adapter* null, %struct.i2c_adapter** @u3_0, align 8
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %30
  br label %80

39:                                               ; preds = %19, %16
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** @u3_1, align 8
  %41 = icmp eq %struct.i2c_adapter* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_adapter* %49, %struct.i2c_adapter** @u3_1, align 8
  %50 = call i32 @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i64 (...) @attach_fcu()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.i2c_adapter* null, %struct.i2c_adapter** @u3_1, align 8
  br label %54

54:                                               ; preds = %53, %48
  br label %79

55:                                               ; preds = %42, %39
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** @k2, align 8
  %57 = icmp eq %struct.i2c_adapter* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_adapter* %65, %struct.i2c_adapter** @k2, align 8
  %66 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** @u3_0, align 8
  %68 = icmp ne %struct.i2c_adapter* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i64, i64* @rackmac, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = call i64 (...) @create_control_loops()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store %struct.i2c_adapter* null, %struct.i2c_adapter** @k2, align 8
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %69, %64
  br label %78

78:                                               ; preds = %77, %58, %55
  br label %79

79:                                               ; preds = %78, %54
  br label %80

80:                                               ; preds = %79, %38
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** @u3_0, align 8
  %82 = icmp ne %struct.i2c_adapter* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** @u3_1, align 8
  %85 = icmp ne %struct.i2c_adapter* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** @k2, align 8
  %88 = icmp ne %struct.i2c_adapter* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @rackmac, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %86
  %93 = call i32 @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i64, i64* @state_attached, align 8
  store i64 %94, i64* @state, align 8
  %95 = call i32 (...) @start_control_loops()
  br label %96

96:                                               ; preds = %92, %89, %83, %80
  %97 = call i32 @mutex_unlock(i32* @driver_lock)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @create_control_loops(...) #1

declare dso_local i64 @attach_fcu(...) #1

declare dso_local i32 @start_control_loops(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
