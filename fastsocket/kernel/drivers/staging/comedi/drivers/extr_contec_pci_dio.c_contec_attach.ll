; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_contec_pci_dio.c_contec_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_contec_pci_dio.c_contec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i64, i32, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [19 x i8] c"comedi%d: contec: \00", align 1
@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CONTEC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_PIO1616L = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"contec_pci_dio\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"error enabling PCI device and request regions!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" base addr %lx \00", align 1
@contec_boards = common dso_local global i64 0, align 8
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@contec_di_insn_bits = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@contec_do_insn_bits = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"card not present!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @contec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contec_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = call i64 @alloc_private(%struct.comedi_device* %17, i32 4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %161

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = call i64 @alloc_subdevices(%struct.comedi_device* %24, i32 2)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %161

30:                                               ; preds = %23
  %31 = load i32, i32* @PCI_ANY_ID, align 4
  %32 = load i32, i32* @PCI_ANY_ID, align 4
  %33 = call %struct.pci_dev* @pci_get_device(i32 %31, i32 %32, %struct.pci_dev* null)
  store %struct.pci_dev* %33, %struct.pci_dev** %6, align 8
  br label %34

34:                                               ; preds = %152, %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = icmp ne %struct.pci_dev* %35, null
  br i1 %36, label %37, label %157

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_VENDOR_ID_CONTEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %151

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_DEVICE_ID_PIO1616L, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %151

49:                                               ; preds = %43
  %50 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %56, %49
  %64 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %86, label %75

75:                                               ; preds = %63
  %76 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %77 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @PCI_SLOT(i32 %83)
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75, %63
  br label %152

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %56
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store %struct.pci_dev* %89, %struct.pci_dev** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %93 = call i64 @comedi_pci_enable(%struct.pci_dev* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %161

99:                                               ; preds = %88
  %100 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %101 = call i32 @pci_resource_start(%struct.pci_dev* %100, i32 0)
  %102 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %105 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* @contec_boards, align 8
  %109 = add nsw i64 %108, 0
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %113, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i64 0
  store %struct.comedi_subdevice* %115, %struct.comedi_subdevice** %7, align 8
  %116 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @SDF_READABLE, align 4
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 0
  store i32 16, i32* %123, align 8
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %126, i32 0, i32 3
  store i32* @range_digital, i32** %127, align 8
  %128 = load i32, i32* @contec_di_insn_bits, align 4
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %132, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i64 1
  store %struct.comedi_subdevice* %134, %struct.comedi_subdevice** %7, align 8
  %135 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @SDF_WRITABLE, align 4
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %142 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %141, i32 0, i32 0
  store i32 16, i32* %142, align 8
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 3
  store i32* @range_digital, i32** %146, align 8
  %147 = load i32, i32* @contec_do_insn_bits, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %161

151:                                              ; preds = %43, %37
  br label %152

152:                                              ; preds = %151, %86
  %153 = load i32, i32* @PCI_ANY_ID, align 4
  %154 = load i32, i32* @PCI_ANY_ID, align 4
  %155 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %156 = call %struct.pci_dev* @pci_get_device(i32 %153, i32 %154, %struct.pci_dev* %155)
  store %struct.pci_dev* %156, %struct.pci_dev** %6, align 8
  br label %34

157:                                              ; preds = %34
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %99, %95, %27, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
