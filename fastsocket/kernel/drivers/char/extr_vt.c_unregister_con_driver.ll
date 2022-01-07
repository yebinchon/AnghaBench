; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_unregister_con_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_unregister_con_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con_driver = type { i32, i64, i64, i64, i32*, i32*, %struct.consw* }
%struct.consw = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_NR_CON_DRIVER = common dso_local global i32 0, align 4
@registered_con_driver = common dso_local global %struct.con_driver* null, align 8
@CON_DRIVER_FLAG_MODULE = common dso_local global i32 0, align 4
@vtconsole_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_con_driver(%struct.consw* %0) #0 {
  %2 = alloca %struct.consw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.con_driver*, align 8
  store %struct.consw* %0, %struct.consw** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @acquire_console_sem()
  %9 = load %struct.consw*, %struct.consw** %2, align 8
  %10 = call i64 @con_is_bound(%struct.consw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %63

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAX_NR_CON_DRIVER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.con_driver*, %struct.con_driver** @registered_con_driver, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %19, i64 %21
  store %struct.con_driver* %22, %struct.con_driver** %5, align 8
  %23 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %24 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %23, i32 0, i32 6
  %25 = load %struct.consw*, %struct.consw** %24, align 8
  %26 = load %struct.consw*, %struct.consw** %2, align 8
  %27 = icmp eq %struct.consw* %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %18
  %29 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %30 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CON_DRIVER_FLAG_MODULE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %37 = call i32 @vtconsole_deinit_device(%struct.con_driver* %36)
  %38 = load i32, i32* @vtconsole_class, align 4
  %39 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %40 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @MKDEV(i32 0, i64 %41)
  %43 = call i32 @device_destroy(i32 %38, i32 %42)
  %44 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %45 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %44, i32 0, i32 6
  store %struct.consw* null, %struct.consw** %45, align 8
  %46 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %47 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %49 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %51 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %53 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %55 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %57 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %62

58:                                               ; preds = %28, %18
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %14

62:                                               ; preds = %35, %14
  br label %63

63:                                               ; preds = %62, %12
  %64 = call i32 (...) @release_console_sem()
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i64 @con_is_bound(%struct.consw*) #1

declare dso_local i32 @vtconsole_deinit_device(%struct.con_driver*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
