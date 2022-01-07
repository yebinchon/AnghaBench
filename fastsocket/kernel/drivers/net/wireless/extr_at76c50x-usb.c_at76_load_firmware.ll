; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwentry = type { i32, i8*, i32, i32, i32, i32*, i32*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.at76_fw_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@firmwares = common dso_local global %struct.fwentry* null, align 8
@fw_mutex = common dso_local global i32 0, align 4
@DBG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"re-using previously loaded fw\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"downloading firmware %s\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"firmware %s not found!\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"you may need to download the firmware from http://developer.berlios.de/projects/at76c503a/\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got it.\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"firmware is too short (0x%zx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"board type mismatch, requested %u, got %u\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"using firmware %s (version %d.%d.%d-%d)\0A\00", align 1
@DBG_DEVSTART = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"board %u, int %d:%d, ext %d:%d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"firmware id %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwentry* (%struct.usb_device*, i32)* @at76_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwentry* @at76_load_firmware(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.fwentry*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.at76_fw_header*, align 8
  %9 = alloca %struct.fwentry*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fwentry*, %struct.fwentry** @firmwares, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %10, i64 %12
  store %struct.fwentry* %13, %struct.fwentry** %9, align 8
  %14 = call i32 @mutex_lock(i32* @fw_mutex)
  %15 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %16 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @DBG_FW, align 4
  %21 = call i32 (i32, i8*, ...) @at76_dbg(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %205

22:                                               ; preds = %2
  %23 = load i32, i32* @DBG_FW, align 4
  %24 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %25 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @at76_dbg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %29 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %28, i32 0, i32 8
  %30 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %31 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = call i32 @request_firmware(%struct.TYPE_4__** %29, i8* %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %22
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 0
  %42 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %43 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %39, i32* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %46, i32* %48, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0))
  br label %205

50:                                               ; preds = %22
  %51 = load i32, i32* @DBG_FW, align 4
  %52 = call i32 (i32, i8*, ...) @at76_dbg(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %54 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %53, i32 0, i32 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.at76_fw_header*
  store %struct.at76_fw_header* %58, %struct.at76_fw_header** %8, align 8
  %59 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %60 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %59, i32 0, i32 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ule i64 %64, 40
  br i1 %65, label %66, label %76

66:                                               ; preds = %50
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 0
  %70 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %71 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %70, i32 0, i32 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %67, i32* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %205

76:                                               ; preds = %50
  %77 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %78 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %82 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %84 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %76
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %94 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %89, i32* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %92, i32 %95)
  br label %205

97:                                               ; preds = %76
  %98 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %99 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %102 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %105 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %108 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %111 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %114 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %117 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %120 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %123 = bitcast %struct.at76_fw_header* %122 to i8*
  %124 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %125 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %123, i64 %128
  store i8* %129, i8** %7, align 8
  %130 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %131 = bitcast %struct.at76_fw_header* %130 to i32*
  %132 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %133 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %139 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %138, i32 0, i32 6
  store i32* %137, i32** %139, align 8
  %140 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %141 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %145 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %147 = bitcast %struct.at76_fw_header* %146 to i32*
  %148 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %149 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le32_to_cpu(i32 %150)
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %155 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %154, i32 0, i32 5
  store i32* %153, i32** %155, align 8
  %156 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %157 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %161 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %163 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load i32, i32* @KERN_DEBUG, align 4
  %165 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 0
  %167 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %168 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %171 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %174 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %177 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %180 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %164, i32* %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %169, i32 %172, i32 %175, i32 %178, i32 %181)
  %183 = load i32, i32* @DBG_DEVSTART, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %186 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le32_to_cpu(i32 %187)
  %189 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %190 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  %193 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %194 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %198 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @le32_to_cpu(i32 %199)
  %201 = call i32 (i32, i8*, ...) @at76_dbg(i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %184, i32 %188, i32 %192, i32 %196, i32 %200)
  %202 = load i32, i32* @DBG_DEVSTART, align 4
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 (i32, i8*, ...) @at76_dbg(i32 %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %97, %88, %66, %38, %19
  %206 = call i32 @mutex_unlock(i32* @fw_mutex)
  %207 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %208 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  store %struct.fwentry* %212, %struct.fwentry** %3, align 8
  br label %214

213:                                              ; preds = %205
  store %struct.fwentry* null, %struct.fwentry** %3, align 8
  br label %214

214:                                              ; preds = %213, %211
  %215 = load %struct.fwentry*, %struct.fwentry** %3, align 8
  ret %struct.fwentry* %215
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @at76_dbg(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i8*, i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
