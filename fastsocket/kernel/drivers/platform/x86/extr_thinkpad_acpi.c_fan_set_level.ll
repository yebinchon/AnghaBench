; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fan_control_allowed = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@fan_control_access_mode = common dso_local global i32 0, align 4
@sfan_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TP_EC_FAN_AUTO = common dso_local global i32 0, align 4
@TP_EC_FAN_FULLSPEED = common dso_local global i32 0, align 4
@fan_status_offset = common dso_local global i32 0, align 4
@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@TPACPI_DBG_FAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"fan control: set fan control register to 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fan_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_set_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @fan_control_allowed, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %83

9:                                                ; preds = %1
  %10 = load i32, i32* @fan_control_access_mode, align 4
  switch i32 %10, label %76 [
    i32 129, label %11
    i32 130, label %30
    i32 128, label %30
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 7
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* @sfan_handle, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @acpi_evalf(i32 %18, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %83

25:                                               ; preds = %17
  br label %29

26:                                               ; preds = %14, %11
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %25
  br label %79

30:                                               ; preds = %9, %9
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TP_EC_FAN_AUTO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @TP_EC_FAN_FULLSPEED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 7
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %43, %35, %30
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @TP_EC_FAN_FULLSPEED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, 7
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @TP_EC_FAN_AUTO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* @fan_status_offset, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @acpi_ec_write(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %66
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 4
  br label %75

75:                                               ; preds = %74
  br label %79

76:                                               ; preds = %9
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %75, %29
  %80 = load i32, i32* @TPACPI_DBG_FAN, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @vdbg_printk(i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %76, %71, %46, %26, %22, %6
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @acpi_ec_write(i32, i32) #1

declare dso_local i32 @vdbg_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
