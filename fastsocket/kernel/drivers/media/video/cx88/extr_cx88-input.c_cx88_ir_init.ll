; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.cx88_IR*, %struct.TYPE_4__ }
%struct.cx88_IR = type { i32, i32, i32, i32, i32, %struct.cx88_core*, i32, i32, i8*, %struct.rc_dev* }
%struct.rc_dev = type { i8*, i32, i32, i32, i8*, i32, i32, %struct.cx88_core*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.pci_dev = type { i32, i32, i64, i32, i64 }

@RC_TYPE_OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_MAP_DNTV_LIVE_DVB_T = common dso_local global i8* null, align 8
@MO_GP1_IO = common dso_local global i8* null, align 8
@RC_MAP_CINERGY_1400 = common dso_local global i8* null, align 8
@RC_MAP_HAUPPAUGE_NEW = common dso_local global i8* null, align 8
@RC_MAP_WINFAST = common dso_local global i8* null, align 8
@MO_GP0_IO = common dso_local global i8* null, align 8
@RC_MAP_IODATA_BCTV7E = common dso_local global i8* null, align 8
@RC_MAP_PIXELVIEW_MK12 = common dso_local global i8* null, align 8
@RC_MAP_PIXELVIEW_NEW = common dso_local global i8* null, align 8
@RC_MAP_PIXELVIEW = common dso_local global i8* null, align 8
@RC_MAP_ADSTECH_DVB_T_PCI = common dso_local global i8* null, align 8
@RC_MAP_MSI_TVANYWHERE = common dso_local global i8* null, align 8
@RC_MAP_AVERTV_303 = common dso_local global i8* null, align 8
@MO_GP2_IO = common dso_local global i8* null, align 8
@RC_MAP_TBS_NEC = common dso_local global i8* null, align 8
@RC_MAP_TEVII_NEC = common dso_local global i8* null, align 8
@RC_MAP_DNTV_LIVE_DVBT_PRO = common dso_local global i8* null, align 8
@RC_MAP_NORWOOD = common dso_local global i8* null, align 8
@RC_MAP_NPGTECH = common dso_local global i8* null, align 8
@RC_MAP_PINNACLE_PCTV_HD = common dso_local global i8* null, align 8
@RC_MAP_POWERCOLOR_REAL_ANGEL = common dso_local global i8* null, align 8
@RC_MAP_TWINHAN_VP1027_DVBS = common dso_local global i8* null, align 8
@RC_TYPE_NEC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cx88 IR (%s)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@cx88_ir_open = common dso_local global i32 0, align 4
@cx88_ir_close = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_ir_init(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.cx88_IR*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32, i32* @RC_TYPE_OTHER, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cx88_IR* @kzalloc(i32 56, i32 %15)
  store %struct.cx88_IR* %16, %struct.cx88_IR** %6, align 8
  %17 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %17, %struct.rc_dev** %7, align 8
  %18 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %19 = icmp ne %struct.cx88_IR* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %22 = icmp ne %struct.rc_dev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %2
  br label %332

24:                                               ; preds = %20
  %25 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %26 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %27 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %26, i32 0, i32 9
  store %struct.rc_dev* %25, %struct.rc_dev** %27, align 8
  %28 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %29 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %197 [
    i32 170, label %31
    i32 158, label %31
    i32 157, label %31
    i32 137, label %42
    i32 168, label %46
    i32 167, label %46
    i32 161, label %46
    i32 160, label %46
    i32 166, label %46
    i32 165, label %46
    i32 164, label %46
    i32 163, label %46
    i32 151, label %46
    i32 150, label %46
    i32 162, label %46
    i32 130, label %50
    i32 129, label %50
    i32 131, label %50
    i32 133, label %61
    i32 132, label %61
    i32 128, label %61
    i32 159, label %72
    i32 143, label %83
    i32 148, label %83
    i32 142, label %92
    i32 141, label %92
    i32 156, label %103
    i32 173, label %114
    i32 155, label %125
    i32 172, label %136
    i32 171, label %136
    i32 152, label %147
    i32 140, label %147
    i32 138, label %147
    i32 139, label %147
    i32 145, label %147
    i32 144, label %147
    i32 146, label %147
    i32 135, label %151
    i32 136, label %151
    i32 169, label %155
    i32 154, label %159
    i32 153, label %170
    i32 149, label %179
    i32 147, label %183
    i32 134, label %192
  ]

31:                                               ; preds = %24, %24, %24
  %32 = load i8*, i8** @RC_MAP_DNTV_LIVE_DVB_T, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** @MO_GP1_IO, align 8
  %34 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %35 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %37 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %36, i32 0, i32 0
  store i32 31, i32* %37, align 8
  %38 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %39 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %38, i32 0, i32 1
  store i32 96, i32* %39, align 4
  %40 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %41 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %40, i32 0, i32 2
  store i32 50, i32* %41, align 8
  br label %197

42:                                               ; preds = %24
  %43 = load i8*, i8** @RC_MAP_CINERGY_1400, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %45 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %44, i32 0, i32 3
  store i32 60164, i32* %45, align 4
  br label %197

46:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  %47 = load i8*, i8** @RC_MAP_HAUPPAUGE_NEW, align 8
  store i8* %47, i8** %8, align 8
  %48 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %49 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  br label %197

50:                                               ; preds = %24, %24, %24
  %51 = load i8*, i8** @RC_MAP_WINFAST, align 8
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** @MO_GP0_IO, align 8
  %53 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %54 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %56 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %55, i32 0, i32 0
  store i32 2296, i32* %56, align 8
  %57 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %58 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %57, i32 0, i32 1
  store i32 256, i32* %58, align 4
  %59 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %60 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %59, i32 0, i32 2
  store i32 50, i32* %60, align 8
  br label %197

61:                                               ; preds = %24, %24, %24
  %62 = load i8*, i8** @RC_MAP_WINFAST, align 8
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** @MO_GP0_IO, align 8
  %64 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %65 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %67 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %66, i32 0, i32 0
  store i32 2296, i32* %67, align 8
  %68 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %69 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %68, i32 0, i32 1
  store i32 256, i32* %69, align 4
  %70 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %71 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %197

72:                                               ; preds = %24
  %73 = load i8*, i8** @RC_MAP_IODATA_BCTV7E, align 8
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** @MO_GP0_IO, align 8
  %75 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %76 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %78 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %77, i32 0, i32 0
  store i32 253, i32* %78, align 8
  %79 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %80 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %79, i32 0, i32 4
  store i32 2, i32* %80, align 8
  %81 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %82 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %81, i32 0, i32 2
  store i32 5, i32* %82, align 8
  br label %197

83:                                               ; preds = %24, %24
  %84 = load i8*, i8** @RC_MAP_PIXELVIEW_MK12, align 8
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** @MO_GP1_IO, align 8
  %86 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %87 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %89 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %88, i32 0, i32 1
  store i32 128, i32* %89, align 4
  %90 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %91 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %90, i32 0, i32 2
  store i32 10, i32* %91, align 8
  store i8* inttoptr (i64 63 to i8*), i8** %11, align 8
  br label %197

92:                                               ; preds = %24, %24
  %93 = load i8*, i8** @RC_MAP_PIXELVIEW_NEW, align 8
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** @MO_GP1_IO, align 8
  %95 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %96 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  %97 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %98 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %97, i32 0, i32 0
  store i32 63, i32* %98, align 8
  %99 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %100 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %99, i32 0, i32 1
  store i32 128, i32* %100, align 4
  %101 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %102 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  br label %197

103:                                              ; preds = %24
  %104 = load i8*, i8** @RC_MAP_PIXELVIEW, align 8
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** @MO_GP1_IO, align 8
  %106 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %107 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %109 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %108, i32 0, i32 0
  store i32 31, i32* %109, align 8
  %110 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %111 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %110, i32 0, i32 1
  store i32 96, i32* %111, align 4
  %112 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %113 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %197

114:                                              ; preds = %24
  %115 = load i8*, i8** @RC_MAP_ADSTECH_DVB_T_PCI, align 8
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** @MO_GP1_IO, align 8
  %117 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %118 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  %119 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %120 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %119, i32 0, i32 0
  store i32 191, i32* %120, align 8
  %121 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %122 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %121, i32 0, i32 1
  store i32 64, i32* %122, align 4
  %123 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %124 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %123, i32 0, i32 2
  store i32 50, i32* %124, align 8
  br label %197

125:                                              ; preds = %24
  %126 = load i8*, i8** @RC_MAP_MSI_TVANYWHERE, align 8
  store i8* %126, i8** %8, align 8
  %127 = load i8*, i8** @MO_GP1_IO, align 8
  %128 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %129 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %128, i32 0, i32 8
  store i8* %127, i8** %129, align 8
  %130 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %131 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %130, i32 0, i32 0
  store i32 31, i32* %131, align 8
  %132 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %133 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %132, i32 0, i32 1
  store i32 64, i32* %133, align 4
  %134 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %135 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  br label %197

136:                                              ; preds = %24, %24
  %137 = load i8*, i8** @RC_MAP_AVERTV_303, align 8
  store i8* %137, i8** %8, align 8
  %138 = load i8*, i8** @MO_GP2_IO, align 8
  %139 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %140 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %139, i32 0, i32 8
  store i8* %138, i8** %140, align 8
  %141 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %142 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %141, i32 0, i32 0
  store i32 251, i32* %142, align 8
  %143 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %144 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %143, i32 0, i32 4
  store i32 2, i32* %144, align 8
  %145 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %146 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %145, i32 0, i32 2
  store i32 50, i32* %146, align 8
  br label %197

147:                                              ; preds = %24, %24, %24, %24, %24, %24, %24
  %148 = load i8*, i8** @RC_MAP_TBS_NEC, align 8
  store i8* %148, i8** %8, align 8
  %149 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %150 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %149, i32 0, i32 3
  store i32 65280, i32* %150, align 4
  br label %197

151:                                              ; preds = %24, %24
  %152 = load i8*, i8** @RC_MAP_TEVII_NEC, align 8
  store i8* %152, i8** %8, align 8
  %153 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %154 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %153, i32 0, i32 3
  store i32 65280, i32* %154, align 4
  br label %197

155:                                              ; preds = %24
  %156 = load i8*, i8** @RC_MAP_DNTV_LIVE_DVBT_PRO, align 8
  store i8* %156, i8** %8, align 8
  %157 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %158 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %157, i32 0, i32 3
  store i32 65280, i32* %158, align 4
  br label %197

159:                                              ; preds = %24
  %160 = load i8*, i8** @RC_MAP_NORWOOD, align 8
  store i8* %160, i8** %8, align 8
  %161 = load i8*, i8** @MO_GP1_IO, align 8
  %162 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %163 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %162, i32 0, i32 8
  store i8* %161, i8** %163, align 8
  %164 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %165 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %164, i32 0, i32 0
  store i32 14, i32* %165, align 8
  %166 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %167 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %166, i32 0, i32 1
  store i32 128, i32* %167, align 4
  %168 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %169 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %168, i32 0, i32 2
  store i32 50, i32* %169, align 8
  br label %197

170:                                              ; preds = %24
  %171 = load i8*, i8** @RC_MAP_NPGTECH, align 8
  store i8* %171, i8** %8, align 8
  %172 = load i8*, i8** @MO_GP0_IO, align 8
  %173 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %174 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %173, i32 0, i32 8
  store i8* %172, i8** %174, align 8
  %175 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %176 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %175, i32 0, i32 0
  store i32 250, i32* %176, align 8
  %177 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %178 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %177, i32 0, i32 2
  store i32 50, i32* %178, align 8
  br label %197

179:                                              ; preds = %24
  %180 = load i8*, i8** @RC_MAP_PINNACLE_PCTV_HD, align 8
  store i8* %180, i8** %8, align 8
  %181 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %182 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  br label %197

183:                                              ; preds = %24
  %184 = load i8*, i8** @RC_MAP_POWERCOLOR_REAL_ANGEL, align 8
  store i8* %184, i8** %8, align 8
  %185 = load i8*, i8** @MO_GP2_IO, align 8
  %186 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %187 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %186, i32 0, i32 8
  store i8* %185, i8** %187, align 8
  %188 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %189 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %188, i32 0, i32 0
  store i32 126, i32* %189, align 8
  %190 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %191 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %190, i32 0, i32 2
  store i32 100, i32* %191, align 8
  br label %197

192:                                              ; preds = %24
  %193 = load i8*, i8** @RC_MAP_TWINHAN_VP1027_DVBS, align 8
  store i8* %193, i8** %8, align 8
  %194 = load i32, i32* @RC_TYPE_NEC, align 4
  store i32 %194, i32* %9, align 4
  %195 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %196 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %195, i32 0, i32 3
  store i32 65280, i32* %196, align 4
  br label %197

197:                                              ; preds = %24, %192, %183, %179, %170, %159, %155, %151, %147, %136, %125, %114, %103, %92, %83, %72, %61, %50, %46, %42, %31
  %198 = load i8*, i8** %8, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @ENODEV, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %332

203:                                              ; preds = %197
  %204 = load i8*, i8** %11, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %208 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load i8*, i8** %11, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %215 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %211, %206, %203
  %217 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %218 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %221 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @snprintf(i32 %219, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %223)
  %225 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %226 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %229 = call i8* @pci_name(%struct.pci_dev* %228)
  %230 = call i32 @snprintf(i32 %227, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %229)
  %231 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %232 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %235 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %234, i32 0, i32 12
  store i32 %233, i32* %235, align 4
  %236 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %237 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %240 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %239, i32 0, i32 11
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @BUS_PCI, align 4
  %242 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %243 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %242, i32 0, i32 10
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 3
  store i32 %241, i32* %244, align 8
  %245 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %246 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %245, i32 0, i32 10
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %249 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %216
  %253 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %254 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %257 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %256, i32 0, i32 10
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  store i64 %255, i64* %258, align 8
  %259 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %260 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %263 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %262, i32 0, i32 10
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  store i32 %261, i32* %264, align 4
  br label %278

265:                                              ; preds = %216
  %266 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %267 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %270 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %269, i32 0, i32 10
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  store i64 %268, i64* %271, align 8
  %272 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %273 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %276 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %275, i32 0, i32 10
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  store i32 %274, i32* %277, align 4
  br label %278

278:                                              ; preds = %265, %252
  %279 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %280 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %279, i32 0, i32 0
  %281 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %282 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %281, i32 0, i32 9
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i32* %280, i32** %283, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %286 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* @MODULE_NAME, align 4
  %288 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %289 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %288, i32 0, i32 8
  store i32 %287, i32* %289, align 8
  %290 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %291 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %292 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %291, i32 0, i32 7
  store %struct.cx88_core* %290, %struct.cx88_core** %292, align 8
  %293 = load i32, i32* @cx88_ir_open, align 4
  %294 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %295 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* @cx88_ir_close, align 4
  %297 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %298 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 8
  %299 = load i8*, i8** %11, align 8
  %300 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %301 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %300, i32 0, i32 4
  store i8* %299, i8** %301, align 8
  %302 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %303 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %278
  %307 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %308 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %309 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  %310 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %311 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %310, i32 0, i32 1
  store i32 10000000, i32* %311, align 8
  br label %319

312:                                              ; preds = %278
  %313 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %314 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %315 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* %9, align 4
  %317 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %318 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %312, %306
  %320 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %321 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %322 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %321, i32 0, i32 5
  store %struct.cx88_core* %320, %struct.cx88_core** %322, align 8
  %323 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %324 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %325 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %324, i32 0, i32 1
  store %struct.cx88_IR* %323, %struct.cx88_IR** %325, align 8
  %326 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %327 = call i32 @rc_register_device(%struct.rc_dev* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %319
  br label %332

331:                                              ; preds = %319
  store i32 0, i32* %3, align 4
  br label %340

332:                                              ; preds = %330, %200, %23
  %333 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %334 = call i32 @rc_free_device(%struct.rc_dev* %333)
  %335 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %336 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %335, i32 0, i32 1
  store %struct.cx88_IR* null, %struct.cx88_IR** %336, align 8
  %337 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  %338 = call i32 @kfree(%struct.cx88_IR* %337)
  %339 = load i32, i32* %10, align 4
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %332, %331
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.cx88_IR* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.cx88_IR*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
