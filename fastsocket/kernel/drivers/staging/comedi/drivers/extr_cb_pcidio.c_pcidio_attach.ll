; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidio.c_pcidio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidio.c_pcidio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.comedi_device = type { i64, i32, %struct.TYPE_8__*, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [23 x i8] c"comedi%d: cb_pcidio: \0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CB = common dso_local global i64 0, align 8
@pcidio_boards = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"No supported ComputerBoards/MeasurementComputing card found on requested position\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_7__* null, align 8
@devpriv = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Found %s on bus %i, slot %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"cb_pcidio: failed to enable PCI device and request regions\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" subdev %d: base = 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcidio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcidio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call i64 @alloc_private(%struct.comedi_device* %13, i32 4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %205

19:                                               ; preds = %2
  %20 = load i32, i32* @PCI_ANY_ID, align 4
  %21 = load i32, i32* @PCI_ANY_ID, align 4
  %22 = call %struct.pci_dev* @pci_get_device(i32 %20, i32 %21, %struct.pci_dev* null)
  store %struct.pci_dev* %22, %struct.pci_dev** %6, align 8
  br label %23

23:                                               ; preds = %101, %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %26, label %106

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_VENDOR_ID_CB, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %101

33:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %97, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pcidio_boards, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pcidio_boards, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %97

51:                                               ; preds = %39
  %52 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %58, %51
  %66 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %88, label %77

77:                                               ; preds = %65
  %78 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @PCI_SLOT(i32 %80)
  %82 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77, %65
  br label %97

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pcidio_boards, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 2
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %96, align 8
  br label %110

97:                                               ; preds = %88, %50
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %34

100:                                              ; preds = %34
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* @PCI_ANY_ID, align 4
  %103 = load i32, i32* @PCI_ANY_ID, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %105 = call %struct.pci_dev* @pci_get_device(i32 %102, i32 %103, %struct.pci_dev* %104)
  store %struct.pci_dev* %105, %struct.pci_dev** %6, align 8
  br label %23

106:                                              ; preds = %23
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %205

110:                                              ; preds = %90
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store %struct.pci_dev* %116, %struct.pci_dev** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.pci_dev*, %struct.pci_dev** %123, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.pci_dev*, %struct.pci_dev** %130, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @PCI_SLOT(i32 %133)
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %121, i64 %128, i64 %134)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @comedi_pci_enable(%struct.pci_dev* %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %110
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %205

146:                                              ; preds = %110
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.pci_dev*, %struct.pci_dev** %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pcidio_boards, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @pci_resource_start(%struct.pci_dev* %149, i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @alloc_subdevices(%struct.comedi_device* %159, i32 %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %146
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %205

168:                                              ; preds = %146
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %200, %168
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %169
  %176 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %177 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %178 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 %186, 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %185, %188
  %190 = call i32 @subdev_8255_init(%struct.comedi_device* %176, i64 %182, i32* null, i64 %189)
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = mul nsw i32 %195, 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %194, %197
  %199 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %191, i64 %198)
  br label %200

200:                                              ; preds = %175
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %169

203:                                              ; preds = %169
  %204 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %165, %142, %106, %16
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
