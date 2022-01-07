; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: could not add controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Activating I2O controller...\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%s: This may take a few minutes if there are many devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: could not activate controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: building sys table...\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: online controller...\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s: getting LCT...\0A\00", align 1
@i2o_controllers = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: Controller added\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_iop_add(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %5 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %6 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %5, i32 0, i32 0
  %7 = call i32 @device_add(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %11 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @osm_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %16 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @osm_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %20 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @osm_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %24 = call i32 @i2o_iop_activate(%struct.i2o_controller* %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %28 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @osm_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %67

31:                                               ; preds = %14
  %32 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %33 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @osm_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @i2o_systab_build()
  store i32 %36, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %67

39:                                               ; preds = %31
  %40 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %41 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @osm_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %45 = call i32 @i2o_iop_online(%struct.i2o_controller* %44)
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %67

48:                                               ; preds = %39
  %49 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %50 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @osm_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %54 = call i32 @i2o_exec_lct_get(%struct.i2o_controller* %53)
  store i32 %54, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %59 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %58, i32 0, i32 2
  %60 = call i32 @list_add(i32* %59, i32* @i2o_controllers)
  %61 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %62 = call i32 @i2o_driver_notify_controller_add_all(%struct.i2o_controller* %61)
  %63 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %64 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @osm_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  store i32 0, i32* %2, align 4
  br label %75

67:                                               ; preds = %56, %47, %38, %26
  %68 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %69 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %68, i32 0, i32 0
  %70 = call i32 @device_del(i32* %69)
  br label %71

71:                                               ; preds = %67, %9
  %72 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %73 = call i32 @i2o_iop_reset(%struct.i2o_controller* %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @osm_err(i8*, i32) #1

declare dso_local i32 @osm_info(i8*, i32) #1

declare dso_local i32 @i2o_iop_activate(%struct.i2o_controller*) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i32 @i2o_systab_build(...) #1

declare dso_local i32 @i2o_iop_online(%struct.i2o_controller*) #1

declare dso_local i32 @i2o_exec_lct_get(%struct.i2o_controller*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @i2o_driver_notify_controller_add_all(%struct.i2o_controller*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @i2o_iop_reset(%struct.i2o_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
