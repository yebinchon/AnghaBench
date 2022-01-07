; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@I8K_FAN_LEFT = common dso_local global i32 0, align 4
@I8K_FAN_RIGHT = common dso_local global i32 0, align 4
@power_status = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s %s %s %d %d %d %d %d %d %d\0A\00", align 1
@I8K_PROC_FMT = common dso_local global i32 0, align 4
@bios_version = common dso_local global i32 0, align 4
@DMI_PRODUCT_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i8k_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = call i32 @i8k_get_temp(i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @I8K_FAN_LEFT, align 4
  %14 = call i32 @i8k_get_fan_status(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @I8K_FAN_RIGHT, align 4
  %16 = call i32 @i8k_get_fan_status(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @I8K_FAN_LEFT, align 4
  %18 = call i32 @i8k_get_fan_speed(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @I8K_FAN_RIGHT, align 4
  %20 = call i32 @i8k_get_fan_speed(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = call i32 (...) @i8k_get_fn_status()
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* @power_status, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @i8k_get_power_status()
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* @I8K_PROC_FMT, align 4
  %30 = load i32, i32* @bios_version, align 4
  %31 = load i32, i32* @DMI_PRODUCT_SERIAL, align 4
  %32 = call i32 @i8k_get_dmi_data(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @i8k_get_temp(i32) #1

declare dso_local i32 @i8k_get_fan_status(i32) #1

declare dso_local i32 @i8k_get_fan_speed(i32) #1

declare dso_local i32 @i8k_get_fn_status(...) #1

declare dso_local i32 @i8k_get_power_status(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i8k_get_dmi_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
