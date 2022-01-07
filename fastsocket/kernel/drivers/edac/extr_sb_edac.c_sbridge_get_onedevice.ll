; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_get_onedevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_get_onedevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_id_table = type { %struct.pci_id_descr* }
%struct.pci_id_descr = type { i64, i64, i32, i64 }
%struct.sbridge_dev = type { %struct.pci_dev** }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Seeking for: dev %02x.%d PCI ID %04x:%04x\0A\00", align 1
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Device not found: dev %02x.%d PCI ID %04x:%04x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Duplicated device for dev %02x:%d.%d PCI ID %04x:%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Device PCI ID %04x:%04x has dev %02x:%d.%d instead of dev %02x:%02x.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Couldn't enable dev %02x:%d.%d PCI ID %04x:%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Detected dev %02x:%d.%d PCI ID %04x:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev**, i32*, %struct.pci_id_table*, i32)* @sbridge_get_onedevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbridge_get_onedevice(%struct.pci_dev** %0, i32* %1, %struct.pci_id_table* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_id_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sbridge_dev*, align 8
  %11 = alloca %struct.pci_id_descr*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev** %0, %struct.pci_dev*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pci_id_table* %2, %struct.pci_id_table** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pci_id_table*, %struct.pci_id_table** %8, align 8
  %15 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %14, i32 0, i32 0
  %16 = load %struct.pci_id_descr*, %struct.pci_id_descr** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %16, i64 %18
  store %struct.pci_id_descr* %19, %struct.pci_id_descr** %11, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %22 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %25 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %30 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = call i32 (i32, i8*, i64, i64, i64, i64, ...) @sbridge_printk(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26, i64 %28, i64 %32)
  %34 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %35 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %36 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %38, align 8
  %40 = call %struct.pci_dev* @pci_get_device(i32 %34, i32 %37, %struct.pci_dev* %39)
  store %struct.pci_dev* %40, %struct.pci_dev** %12, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %79, label %43

43:                                               ; preds = %4
  %44 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %44, align 8
  %46 = icmp ne %struct.pci_dev* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %49 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  store %struct.pci_dev* %48, %struct.pci_dev** %49, align 8
  store i32 0, i32* %5, align 4
  br label %233

50:                                               ; preds = %43
  %51 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %52 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %233

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %233

62:                                               ; preds = %56
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %65 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %68 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %73 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = call i32 (i32, i8*, i64, i64, i64, i64, ...) @sbridge_printk(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %69, i64 %71, i64 %75)
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %233

79:                                               ; preds = %4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call %struct.sbridge_dev* @get_sbridge_dev(i32 %85)
  store %struct.sbridge_dev* %86, %struct.sbridge_dev** %10, align 8
  %87 = load %struct.sbridge_dev*, %struct.sbridge_dev** %10, align 8
  %88 = icmp ne %struct.sbridge_dev* %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.pci_id_table*, %struct.pci_id_table** %8, align 8
  %92 = call %struct.sbridge_dev* @alloc_sbridge_dev(i32 %90, %struct.pci_id_table* %91)
  store %struct.sbridge_dev* %92, %struct.sbridge_dev** %10, align 8
  %93 = load %struct.sbridge_dev*, %struct.sbridge_dev** %10, align 8
  %94 = icmp ne %struct.sbridge_dev* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %97 = call i32 @pci_dev_put(%struct.pci_dev* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %233

100:                                              ; preds = %89
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %100, %79
  %105 = load %struct.sbridge_dev*, %struct.sbridge_dev** %10, align 8
  %106 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %105, i32 0, i32 0
  %107 = load %struct.pci_dev**, %struct.pci_dev*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %107, i64 %109
  %111 = load %struct.pci_dev*, %struct.pci_dev** %110, align 8
  %112 = icmp ne %struct.pci_dev* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %118 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %121 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %126 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, i64, i64, i64, i64, ...) @sbridge_printk(i32 %114, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %116, i64 %119, i64 %122, i64 %124, i32 %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %130 = call i32 @pci_dev_put(%struct.pci_dev* %129)
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %233

133:                                              ; preds = %104
  %134 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %135 = load %struct.sbridge_dev*, %struct.sbridge_dev** %10, align 8
  %136 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %135, i32 0, i32 0
  %137 = load %struct.pci_dev**, %struct.pci_dev*** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %137, i64 %139
  store %struct.pci_dev* %134, %struct.pci_dev** %140, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @PCI_SLOT(i32 %143)
  %145 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %146 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %158, label %149

149:                                              ; preds = %133
  %150 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @PCI_FUNC(i32 %152)
  %154 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %155 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br label %158

158:                                              ; preds = %149, %133
  %159 = phi i1 [ true, %133 ], [ %157, %149 ]
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %158
  %164 = load i32, i32* @KERN_ERR, align 4
  %165 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %168 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %174 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @PCI_SLOT(i32 %175)
  %177 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @PCI_FUNC(i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %183 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %186 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i32, i8*, i64, i64, i64, i64, ...) @sbridge_printk(i32 %164, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %166, i64 %170, i64 %172, i64 %176, i64 %180, i32 %181, i64 %184, i64 %187)
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %233

191:                                              ; preds = %158
  %192 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %193 = call i64 @pci_enable_device(%struct.pci_dev* %192)
  %194 = icmp slt i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %191
  %199 = load i32, i32* @KERN_ERR, align 4
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %203 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %206 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %211 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i32, i8*, i64, i64, i64, i64, ...) @sbridge_printk(i32 %199, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %201, i64 %204, i64 %207, i64 %209, i32 %212)
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %233

216:                                              ; preds = %191
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %219 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %222 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %225 = load %struct.pci_id_descr*, %struct.pci_id_descr** %11, align 8
  %226 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @debugf0(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %217, i64 %220, i64 %223, i32 %224, i32 %227)
  %229 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %230 = call i32 @pci_dev_get(%struct.pci_dev* %229)
  %231 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %232 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  store %struct.pci_dev* %231, %struct.pci_dev** %232, align 8
  store i32 0, i32* %5, align 4
  br label %233

233:                                              ; preds = %216, %198, %163, %113, %95, %62, %59, %55, %47
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @sbridge_printk(i32, i8*, i64, i64, i64, i64, ...) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local %struct.sbridge_dev* @get_sbridge_dev(i32) #1

declare dso_local %struct.sbridge_dev* @alloc_sbridge_dev(i32, %struct.pci_id_table*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @debugf0(i8*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
