; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c___apei_exec_write_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c___apei_exec_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_whea_header = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@APEI_EXEC_PRESERVE_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__apei_exec_write_register(%struct.acpi_whea_header* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_whea_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_whea_header* %0, %struct.acpi_whea_header** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @APEI_EXEC_PRESERVE_REGISTER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %26 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %26, i32 0, i32 2
  %28 = call i32 @apei_read(i32* %7, %struct.TYPE_3__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %36, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %33, %2
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %50, i32 0, i32 2
  %52 = call i32 @apei_write(i32 %49, %struct.TYPE_3__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %31
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @apei_read(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @apei_write(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
