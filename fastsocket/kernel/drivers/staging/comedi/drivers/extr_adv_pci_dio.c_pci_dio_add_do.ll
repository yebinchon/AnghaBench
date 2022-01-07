; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_add_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_add_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i8*, i32, i64, i32*, i32 }
%struct.diosubd_data = type { i32 }

@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_COMMON = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@pci_dio_insn_bits_do_b = common dso_local global i32 0, align 4
@pci_dio_insn_bits_do_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.diosubd_data*, i32)* @pci_dio_add_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dio_add_do(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.diosubd_data* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.diosubd_data*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.diosubd_data* %2, %struct.diosubd_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SDF_WRITABLE, align 4
  %13 = load i32, i32* @SDF_GROUND, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SDF_COMMON, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %20 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 16
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @SDF_LSAMPL, align 4
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %4
  %30 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %31 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %38 = getelementptr inbounds %struct.diosubd_data, %struct.diosubd_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 7
  store i32* @range_digital, i32** %43, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %57 [
    i32 128, label %49
    i32 129, label %53
  ]

49:                                               ; preds = %29
  %50 = load i32, i32* @pci_dio_insn_bits_do_b, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %29
  %54 = load i32, i32* @pci_dio_insn_bits_do_w, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %29, %53, %49
  %58 = load %struct.diosubd_data*, %struct.diosubd_data** %7, align 8
  %59 = bitcast %struct.diosubd_data* %58 to i8*
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
