; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32, %struct.TYPE_8__*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [23 x i8] c"comedi%d: cb_pcimdas: \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPUTERBOARDS = common dso_local global i64 0, align 8
@N_BOARDS = common dso_local global i32 0, align 4
@cb_pcimdas_boards = common dso_local global %struct.TYPE_8__* null, align 8
@devpriv = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"No supported ComputerBoards/MeasurementComputing card found on requested position\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Found %s on bus %i, slot %i\0A\00", align 1
@thisboard = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"THIS CARD IS UNSUPPORTED.\0APLEASE REPORT USAGE TO <mocelet@sucs.org>\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cb_pcimdas\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c" Failed to enable PCI device and request regions\0A\00", align 1
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@cb_pcimdas_ai_rinsn = common dso_local global i32* null, align 8
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@cb_pcimdas_ao_winsn = common dso_local global i32 0, align 4
@cb_pcimdas_ao_rinsn = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @cb_pcimdas_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcimdas_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
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
  br label %266

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @PCI_ANY_ID, align 4
  %22 = load i32, i32* @PCI_ANY_ID, align 4
  %23 = call %struct.pci_dev* @pci_get_device(i32 %21, i32 %22, %struct.pci_dev* null)
  store %struct.pci_dev* %23, %struct.pci_dev** %7, align 8
  br label %24

24:                                               ; preds = %104, %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %27, label %109

27:                                               ; preds = %24
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_VENDOR_ID_COMPUTERBOARDS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %104

34:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %100, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @N_BOARDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cb_pcimdas_boards, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %100

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
  %66 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %88, label %77

77:                                               ; preds = %65
  %78 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
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
  br label %100

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store %struct.pci_dev* %91, %struct.pci_dev** %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cb_pcimdas_boards, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 2
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %99, align 8
  br label %113

100:                                              ; preds = %88, %50
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %35

103:                                              ; preds = %35
  br label %104

104:                                              ; preds = %103, %33
  %105 = load i32, i32* @PCI_ANY_ID, align 4
  %106 = load i32, i32* @PCI_ANY_ID, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %108 = call %struct.pci_dev* @pci_get_device(i32 %105, i32 %106, %struct.pci_dev* %107)
  store %struct.pci_dev* %108, %struct.pci_dev** %7, align 8
  br label %24

109:                                              ; preds = %24
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %266

113:                                              ; preds = %90
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cb_pcimdas_boards, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 3
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @PCI_SLOT(i32 %127)
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %119, i64 %124, i64 %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %134 [
    i32 86, label %133
  ]

133:                                              ; preds = %113
  br label %136

134:                                              ; preds = %113
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %133
  %137 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %138 = call i64 @comedi_pci_enable(%struct.pci_dev* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %266

144:                                              ; preds = %136
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = load %struct.pci_dev*, %struct.pci_dev** %146, align 8
  %148 = call i8* @pci_resource_start(%struct.pci_dev* %147, i32 0)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 5
  %153 = load %struct.pci_dev*, %struct.pci_dev** %152, align 8
  %154 = call i8* @pci_resource_start(%struct.pci_dev* %153, i32 1)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = load %struct.pci_dev*, %struct.pci_dev** %158, align 8
  %160 = call i8* @pci_resource_start(%struct.pci_dev* %159, i32 2)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = load %struct.pci_dev*, %struct.pci_dev** %164, align 8
  %166 = call i8* @pci_resource_start(%struct.pci_dev* %165, i32 3)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 5
  %171 = load %struct.pci_dev*, %struct.pci_dev** %170, align 8
  %172 = call i8* @pci_resource_start(%struct.pci_dev* %171, i32 4)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %179 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %181 = call i64 @alloc_subdevices(%struct.comedi_device* %180, i32 3)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %144
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %266

186:                                              ; preds = %144
  %187 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %188 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %187, i32 0, i32 0
  %189 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %188, align 8
  %190 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %189, i64 0
  store %struct.comedi_subdevice* %190, %struct.comedi_subdevice** %6, align 8
  %191 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %193 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @SDF_READABLE, align 4
  %195 = load i32, i32* @SDF_GROUND, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %198 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %203 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 1, %206
  %208 = sub nsw i32 %207, 1
  %209 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %210 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %212 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %211, i32 0, i32 6
  store i32* @range_unknown, i32** %212, align 8
  %213 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %214 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %213, i32 0, i32 2
  store i32 1, i32* %214, align 8
  %215 = load i32*, i32** @cb_pcimdas_ai_rinsn, align 8
  %216 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %217 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %216, i32 0, i32 4
  store i32* %215, i32** %217, align 8
  %218 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %219 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %218, i32 0, i32 0
  %220 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %219, align 8
  %221 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %220, i64 1
  store %struct.comedi_subdevice* %221, %struct.comedi_subdevice** %6, align 8
  %222 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %223 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %224 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @SDF_WRITABLE, align 4
  %226 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %227 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %232 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 1, %235
  %237 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %238 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %240 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %239, i32 0, i32 6
  store i32* @range_unknown, i32** %240, align 8
  %241 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %242 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %241, i32 0, i32 5
  store i32* @cb_pcimdas_ao_winsn, i32** %242, align 8
  %243 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %244 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %243, i32 0, i32 4
  store i32* @cb_pcimdas_ao_rinsn, i32** %244, align 8
  %245 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %246 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %245, i32 0, i32 0
  %247 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %246, align 8
  %248 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %247, i64 2
  store %struct.comedi_subdevice* %248, %struct.comedi_subdevice** %6, align 8
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thisboard, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %186
  %254 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %255 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @subdev_8255_init(%struct.comedi_device* %254, %struct.comedi_subdevice* %255, i32* null, i8* %258)
  br label %264

260:                                              ; preds = %186
  %261 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %262 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %263 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %260, %253
  %265 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %266

266:                                              ; preds = %264, %183, %140, %109, %16
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i8*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
