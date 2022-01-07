; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_add_di.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_add_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i8*, i32, i32*, i32 }
%struct.diosubd_data = type { i32, i32 }

@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_COMMON = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@pci_dio_insn_bits_di_b = common dso_local global i32 0, align 4
@pci_dio_insn_bits_di_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.diosubd_data*, i32)* @pci_dio_add_di to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dio_add_di(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.diosubd_data* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.diosubd_data*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.diosubd_data* %2, %struct.diosubd_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SDF_READABLE, align 4
  %13 = load i32, i32* @SDF_GROUND, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SDF_COMMON, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %18 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %24 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 16
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @SDF_LSAMPL, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %4
  %34 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %35 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %42 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 6
  store i32* @range_digital, i32** %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %59 [
    i32 128, label %51
    i32 129, label %55
  ]

51:                                               ; preds = %33
  %52 = load i32, i32* @pci_dio_insn_bits_di_b, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %33
  %56 = load i32, i32* @pci_dio_insn_bits_di_w, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %33, %55, %51
  %60 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %61 = bitcast %struct.diosubd_data* %60 to i8*
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
