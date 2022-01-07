; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_brightness_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@TPACPI_DBG_BRGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set backlight level to %d\0A\00", align 1
@brightness_mutex = common dso_local global i32 0, align 4
@brightness_mode = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brightness_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 15, i32 7
  %10 = icmp ugt i32 %5, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %11
  %18 = load i32, i32* @TPACPI_DBG_BRGHT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @vdbg_printk(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @mutex_lock_killable(i32* @brightness_mutex)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load i32, i32* @brightness_mode, align 4
  switch i32 %27, label %34 [
    i32 130, label %28
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %26, %26
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @tpacpi_brightness_set_ec(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @tpacpi_brightness_set_ucmsstep(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31, %28
  %38 = call i32 @mutex_unlock(i32* @brightness_mutex)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %24, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @vdbg_printk(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @tpacpi_brightness_set_ec(i32) #1

declare dso_local i32 @tpacpi_brightness_set_ucmsstep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
