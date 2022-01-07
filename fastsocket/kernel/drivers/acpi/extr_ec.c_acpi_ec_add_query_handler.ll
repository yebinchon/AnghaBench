; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_add_query_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_acpi_ec_add_query_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32 }
%struct.acpi_ec_query_handler = type { i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ec_add_query_handler(%struct.acpi_ec* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_ec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.acpi_ec_query_handler*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.acpi_ec_query_handler* @kzalloc(i32 32, i32 %13)
  store %struct.acpi_ec_query_handler* %14, %struct.acpi_ec_query_handler** %12, align 8
  %15 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %16 = icmp ne %struct.acpi_ec_query_handler* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %44

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %23 = getelementptr inbounds %struct.acpi_ec_query_handler, %struct.acpi_ec_query_handler* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %26 = getelementptr inbounds %struct.acpi_ec_query_handler, %struct.acpi_ec_query_handler* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %29 = getelementptr inbounds %struct.acpi_ec_query_handler, %struct.acpi_ec_query_handler* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %32 = getelementptr inbounds %struct.acpi_ec_query_handler, %struct.acpi_ec_query_handler* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.acpi_ec*, %struct.acpi_ec** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.acpi_ec_query_handler*, %struct.acpi_ec_query_handler** %12, align 8
  %37 = getelementptr inbounds %struct.acpi_ec_query_handler, %struct.acpi_ec_query_handler* %36, i32 0, i32 0
  %38 = load %struct.acpi_ec*, %struct.acpi_ec** %7, align 8
  %39 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = load %struct.acpi_ec*, %struct.acpi_ec** %7, align 8
  %42 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %20, %17
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.acpi_ec_query_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
