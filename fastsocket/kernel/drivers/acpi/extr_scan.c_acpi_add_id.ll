; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_add_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_hardware_id = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i8*)* @acpi_add_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_add_id(%struct.acpi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 16, i32 %6)
  %8 = bitcast i8* %7 to %struct.acpi_hardware_id*
  store %struct.acpi_hardware_id* %8, %struct.acpi_hardware_id** %5, align 8
  %9 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %10 = icmp ne %struct.acpi_hardware_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %26 = call i32 @kfree(%struct.acpi_hardware_id* %25)
  br label %39

27:                                               ; preds = %12
  %28 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %33, i32 0, i32 0
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %34, i32* %37)
  br label %39

39:                                               ; preds = %27, %24, %11
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(%struct.acpi_hardware_id*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
