; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_check_vendor_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_check_vendor_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_error_type_with_address = type { i32 }
%struct.vendor_error_type_extension = type { i32, i32, i32, i32 }

@vendor_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%x:%x:%x.%x vendor_id=%x device_id=%x rev_id=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.set_error_type_with_address*)* @check_vendor_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_vendor_extension(i64 %0, %struct.set_error_type_with_address* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.set_error_type_with_address*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vendor_error_type_extension*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.set_error_type_with_address* %1, %struct.set_error_type_with_address** %4, align 8
  %8 = load %struct.set_error_type_with_address*, %struct.set_error_type_with_address** %4, align 8
  %9 = getelementptr inbounds %struct.set_error_type_with_address, %struct.set_error_type_with_address* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call %struct.vendor_error_type_extension* @acpi_os_map_memory(i64 %18, i32 16)
  store %struct.vendor_error_type_extension* %19, %struct.vendor_error_type_extension** %6, align 8
  %20 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %21 = icmp ne %struct.vendor_error_type_extension* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %51

23:                                               ; preds = %14
  %24 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %25 = getelementptr inbounds %struct.vendor_error_type_extension, %struct.vendor_error_type_extension* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @vendor_dev, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 24
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 11
  %35 = and i32 %34, 31
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 7
  %39 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %40 = getelementptr inbounds %struct.vendor_error_type_extension, %struct.vendor_error_type_extension* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %43 = getelementptr inbounds %struct.vendor_error_type_extension, %struct.vendor_error_type_extension* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %46 = getelementptr inbounds %struct.vendor_error_type_extension, %struct.vendor_error_type_extension* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.vendor_error_type_extension*, %struct.vendor_error_type_extension** %6, align 8
  %50 = call i32 @acpi_os_unmap_memory(%struct.vendor_error_type_extension* %49, i32 16)
  br label %51

51:                                               ; preds = %23, %22, %13
  ret void
}

declare dso_local %struct.vendor_error_type_extension* @acpi_os_map_memory(i64, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @acpi_os_unmap_memory(%struct.vendor_error_type_extension*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
