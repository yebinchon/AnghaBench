; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20006_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20006_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i8**, i32, i32, i32, i32, %union.pci20xxx_subdev_private* }
%union.pci20xxx_subdev_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }

@pci20006_range_list = common dso_local global i8** null, align 8
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pci20006_insn_read = common dso_local global i32 0, align 4
@pci20006_insn_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @pci20006_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20006_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.pci20xxx_subdev_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 8
  %12 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %11, align 8
  store %union.pci20xxx_subdev_private* %12, %union.pci20xxx_subdev_private** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i8**, i8*** @pci20006_range_list, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %33 = bitcast %union.pci20xxx_subdev_private* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %31, i8** %36, align 8
  %37 = load i8**, i8*** @pci20006_range_list, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %43 = bitcast %union.pci20xxx_subdev_private* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %41, i8** %46, align 8
  %47 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SDF_WRITABLE, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  store i32 2, i32* %56, align 4
  %57 = load i32, i32* @pci20006_insn_read, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @pci20006_insn_write, align 4
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 2
  store i32 65535, i32* %64, align 8
  %65 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %66 = bitcast %union.pci20xxx_subdev_private* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 3
  store i8** %68, i8*** %70, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
