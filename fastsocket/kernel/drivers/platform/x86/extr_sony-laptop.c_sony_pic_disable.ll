; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pic_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Device disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @sony_pic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_pic_disable(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @acpi_evaluate_object(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @ACPI_FAILURE(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @AE_NOT_FOUND, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %12, %1
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @acpi_evaluate_object(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
