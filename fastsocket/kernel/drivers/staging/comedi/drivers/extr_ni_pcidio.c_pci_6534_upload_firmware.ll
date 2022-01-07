; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_pci_6534_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@COMEDI_DEVCONF_AUX_DATA_LENGTH = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA0_LENGTH = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA1_LENGTH = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA2_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*)* @pci_6534_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_6534_upload_firmware(%struct.comedi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA_LENGTH, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @pci_6534_reset_fpgas(%struct.comedi_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @comedi_aux_data(i32* %27, i32 0)
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA0_LENGTH, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @pci_6534_load_fpga(%struct.comedi_device* %33, i32 2, i8* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %74

41:                                               ; preds = %26
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = call i32 @pci_6534_init_main_fpga(%struct.comedi_device* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @comedi_aux_data(i32* %44, i32 1)
  store i8* %45, i8** %8, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA1_LENGTH, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @pci_6534_load_fpga(%struct.comedi_device* %50, i32 0, i8* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %74

58:                                               ; preds = %41
  %59 = load i32*, i32** %5, align 8
  %60 = call i8* @comedi_aux_data(i32* %59, i32 2)
  store i8* %60, i8** %9, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA2_LENGTH, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @pci_6534_load_fpga(%struct.comedi_device* %65, i32 1, i8* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %56, %39, %24, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pci_6534_reset_fpgas(%struct.comedi_device*) #1

declare dso_local i8* @comedi_aux_data(i32*, i32) #1

declare dso_local i32 @pci_6534_load_fpga(%struct.comedi_device*, i32, i8*, i32) #1

declare dso_local i32 @pci_6534_init_main_fpga(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
