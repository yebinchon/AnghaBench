; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i64, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@slram_mtdlist = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"slram: Cannot allocate new MTD device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"slram: ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@slram_erase = common dso_local global i32 0, align 4
@slram_point = common dso_local global i32 0, align 4
@slram_unpoint = common dso_local global i32 0, align 4
@slram_read = common dso_local global i32 0, align 4
@slram_write = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@SLRAM_BLK_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"slram: Failed to register new device\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"slram: Registered device %s from %luKiB to %luKiB\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"slram: Mapped from 0x%p to 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_device(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_8__** @slram_mtdlist, %struct.TYPE_8__*** %8, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %8, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_8__* @kmalloc(i32 16, i32 %18)
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 @E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %252

28:                                               ; preds = %17
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_9__*
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %28
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 8, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_9__*
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %67, align 8
  br label %68

68:                                               ; preds = %59, %43
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = call i32 @E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %252

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @ioremap(i64 %80, i64 %81)
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = bitcast %struct.TYPE_9__* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %82, i32* %90, align 4
  %91 = icmp ne i32 %82, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %79
  %93 = call i32 @E(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %252

96:                                               ; preds = %79
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = bitcast %struct.TYPE_9__* %102 to %struct.TYPE_7__*
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = bitcast %struct.TYPE_9__* %115 to %struct.TYPE_7__*
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %109, i32* %117, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i8* %118, i8** %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i64 %124, i64* %129, align 8
  %130 = load i32, i32* @MTD_CAP_RAM, align 4
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 12
  store i32 %130, i32* %135, align 8
  %136 = load i32, i32* @slram_erase, align 4
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 11
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* @slram_point, align 4
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 10
  store i32 %142, i32* %147, align 8
  %148 = load i32, i32* @slram_unpoint, align 4
  %149 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 9
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* @slram_read, align 4
  %155 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 8
  store i32 %154, i32* %159, align 8
  %160 = load i32, i32* @slram_write, align 4
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 7
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* @THIS_MODULE, align 4
  %167 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 6
  store i32 %166, i32* %171, align 8
  %172 = load i32, i32* @MTD_RAM, align 4
  %173 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  store i32 %172, i32* %177, align 4
  %178 = load i32, i32* @SLRAM_BLK_SZ, align 4
  %179 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  store i32 %178, i32* %183, align 8
  %184 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  store i32 1, i32* %188, align 8
  %189 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = call i64 @add_mtd_device(%struct.TYPE_9__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %96
  %196 = call i32 @E(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %197 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = bitcast %struct.TYPE_9__* %202 to %struct.TYPE_7__*
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @iounmap(i32 %205)
  %207 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = call i32 @kfree(%struct.TYPE_9__* %212)
  %214 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = call i32 @kfree(%struct.TYPE_9__* %217)
  %219 = load i32, i32* @EAGAIN, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %252

221:                                              ; preds = %96
  %222 = load i8*, i8** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = udiv i64 %223, 1024
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = add i64 %225, %226
  %228 = udiv i64 %227, 1024
  %229 = call i32 (i8*, i8*, i64, ...) @T(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %222, i64 %224, i64 %228)
  %230 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = bitcast %struct.TYPE_9__* %235 to %struct.TYPE_7__*
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = bitcast %struct.TYPE_9__* %246 to %struct.TYPE_7__*
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = call i32 (i8*, i8*, i64, ...) @T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %240, i64 %250)
  store i32 0, i32* %4, align 4
  br label %252

252:                                              ; preds = %221, %195, %92, %75, %24
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @E(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i64 @add_mtd_device(%struct.TYPE_9__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @T(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
