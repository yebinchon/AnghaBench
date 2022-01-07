; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fan_control_allowed = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@fan_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@fan_control_access_mode = common dso_local global i32 0, align 4
@TP_EC_FAN_AUTO = common dso_local global i32 0, align 4
@fan_status_offset = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sfan_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TPACPI_DBG_FAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"fan control: set fan control register to 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fan_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_set_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @fan_control_allowed, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %74

9:                                                ; preds = %0
  %10 = call i64 @mutex_lock_killable(i32* @fan_mutex)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @ERESTARTSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %74

15:                                               ; preds = %9
  %16 = load i32, i32* @fan_control_access_mode, align 4
  switch i32 %16, label %61 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %42
  ]

17:                                               ; preds = %15, %15
  %18 = call i32 @fan_get_status(i32* %2)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %64

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 7
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 7
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @TP_EC_FAN_AUTO, align 4
  %29 = or i32 %28, 4
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* @fan_status_offset, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @acpi_ec_write(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %64

42:                                               ; preds = %15
  %43 = call i32 @fan_get_status(i32* %2)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %64

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %48, 7
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* @sfan_handle, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @acpi_evalf(i32 %52, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %64

61:                                               ; preds = %15
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %60, %46, %41, %21
  %65 = call i32 @mutex_unlock(i32* @fan_mutex)
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @TPACPI_DBG_FAN, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @vdbg_printk(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %12, %6
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @fan_get_status(i32*) #1

declare dso_local i32 @acpi_ec_write(i32, i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vdbg_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
