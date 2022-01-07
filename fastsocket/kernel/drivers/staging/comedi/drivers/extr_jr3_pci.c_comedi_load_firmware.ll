; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_comedi_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_comedi_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.jr3_pci_dev_private* }
%struct.jr3_pci_dev_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@comedi_load_firmware.prefix = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"comedi/\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*, i32 (%struct.comedi_device*, i32, i32)*)* @comedi_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_load_firmware(%struct.comedi_device* %0, i8* %1, i32 (%struct.comedi_device*, i32, i32)* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.comedi_device*, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.jr3_pci_dev_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (%struct.comedi_device*, i32, i32)* %2, i32 (%struct.comedi_device*, i32, i32)** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %12, align 8
  store %struct.jr3_pci_dev_private* %13, %struct.jr3_pci_dev_private** %10, align 8
  %14 = load i8*, i8** @comedi_load_firmware.prefix, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %15, %17
  %19 = add nsw i64 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i64 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %66

27:                                               ; preds = %3
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** @comedi_load_firmware.prefix, align 8
  %32 = call i32 @strcat(i8* %30, i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcat(i8* %33, i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %10, align 8
  %38 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @request_firmware(%struct.firmware** %8, i8* %36, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %27
  %45 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %6, align 8
  %46 = icmp ne i32 (%struct.comedi_device*, i32, i32)* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %44
  %51 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %6, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = load %struct.firmware*, %struct.firmware** %8, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.firmware*, %struct.firmware** %8, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %51(%struct.comedi_device* %52, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %50, %47
  %61 = load %struct.firmware*, %struct.firmware** %8, align 8
  %62 = call i32 @release_firmware(%struct.firmware* %61)
  br label %63

63:                                               ; preds = %60, %27
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @kfree(i8* %64)
  br label %66

66:                                               ; preds = %63, %24
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
