; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_ec_wait_ibf0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_ec_wait_ibf0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ACPI_EC_DELAY = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @ec_wait_ibf0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_wait_ibf0(%struct.acpi_ec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @ACPI_EC_DELAY, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @time_before(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %19 = call i32 @ec_check_ibf0(%struct.acpi_ec* %18)
  %20 = call i64 @msecs_to_jiffies(i32 1)
  %21 = call i64 @wait_event_timeout(i32 %17, i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  br label %9

25:                                               ; preds = %9
  %26 = load i32, i32* @ETIME, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @ec_check_ibf0(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
