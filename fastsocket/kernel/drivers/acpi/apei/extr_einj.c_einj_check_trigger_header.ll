; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_einj_check_trigger_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_einj_check_trigger_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_einj_trigger = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_einj_trigger*)* @einj_check_trigger_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @einj_check_trigger_header(%struct.acpi_einj_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_einj_trigger*, align 8
  store %struct.acpi_einj_trigger* %0, %struct.acpi_einj_trigger** %3, align 8
  %4 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 12
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %18
  %30 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = icmp ne i64 %33, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %26, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
