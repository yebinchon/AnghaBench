; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_ipmi_space_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_ipmi_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { i32, i32, i32, i32, i32 }
%struct.acpi_ipmi_device = type { i32, i32, i32 }

@ACPI_IO_MASK = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@IPMI_TIMEOUT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i8*)* @acpi_ipmi_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ipmi_space_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.acpi_ipmi_msg*, align 8
  %15 = alloca %struct.acpi_ipmi_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.acpi_ipmi_device*
  store %struct.acpi_ipmi_device* %20, %struct.acpi_ipmi_device** %15, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ACPI_IO_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ACPI_READ, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @AE_TYPE, align 4
  store i32 %27, i32* %7, align 4
  br label %96

28:                                               ; preds = %6
  %29 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %30 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %34, i32* %7, align 4
  br label %96

35:                                               ; preds = %28
  %36 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %37 = call %struct.acpi_ipmi_msg* @acpi_alloc_ipmi_msg(%struct.acpi_ipmi_device* %36)
  store %struct.acpi_ipmi_msg* %37, %struct.acpi_ipmi_msg** %14, align 8
  %38 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %39 = icmp ne %struct.acpi_ipmi_msg* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %41, i32* %7, align 4
  br label %96

42:                                               ; preds = %35
  %43 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @acpi_format_ipmi_msg(%struct.acpi_ipmi_msg* %43, i32 %44, i32* %45)
  %47 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %48 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %51 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %50, i32 0, i32 0
  %52 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %53 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %52, i32 0, i32 2
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %56 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %59 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %62 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %61, i32 0, i32 4
  %63 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %64 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %67 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %66, i32 0, i32 2
  %68 = call i32 @ipmi_request_settime(i32 %60, i32* %62, i32 %65, i32* %67, i32* null, i32 0, i32 0, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %42
  %72 = load i32, i32* @AE_ERROR, align 4
  store i32 %72, i32* %18, align 4
  br label %83

73:                                               ; preds = %42
  %74 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %75 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %74, i32 0, i32 1
  %76 = load i32, i32* @IPMI_TIMEOUT, align 4
  %77 = call i32 @wait_for_completion_timeout(i32* %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @acpi_format_ipmi_response(%struct.acpi_ipmi_msg* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @AE_OK, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %73, %71
  %84 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %85 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %84, i32 0, i32 0
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %88 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %87, i32 0, i32 0
  %89 = call i32 @list_del(i32* %88)
  %90 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %91 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %94 = call i32 @kfree(%struct.acpi_ipmi_msg* %93)
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %83, %40, %33, %26
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.acpi_ipmi_msg* @acpi_alloc_ipmi_msg(%struct.acpi_ipmi_device*) #1

declare dso_local i32 @acpi_format_ipmi_msg(%struct.acpi_ipmi_msg*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipmi_request_settime(i32, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @acpi_format_ipmi_response(%struct.acpi_ipmi_msg*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_ipmi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
