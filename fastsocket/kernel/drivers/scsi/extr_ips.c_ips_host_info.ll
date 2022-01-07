; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_host_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32* }
%struct.TYPE_16__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ips_host_info\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0AIBM ServeRAID General Information:\0A\0A\00", align 1
@IPS_NVRAM_P5_SIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\09Controller Type                   : %s\0A\00", align 1
@ips_adapter_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"\09Controller Type                   : Unknown\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\09IO region                         : 0x%lx (%d bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\09Memory region                     : 0x%lx (%d bytes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09Shared memory address             : 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\09IRQ number                        : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\09BIOS Version                      : %c%c%c%c%c%c%c\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\09BIOS Version                      : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\09Firmware Version                  : %c%c%c%c%c%c%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\09Firmware Version                  : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\09Boot Block Version                : %c%c%c%c%c%c%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"\09Boot Block Version                : %c%c%c%c%c%c%c%c\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\09Driver Version                    : %s%s\0A\00", align 1
@IPS_VERSION_HIGH = common dso_local global i32 0, align 4
@IPS_VERSION_LOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"\09Driver Build                      : %d\0A\00", align 1
@IPS_BUILD_IDENT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"\09Max Physical Devices              : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\09Max Active Commands               : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\09Current Queued Commands           : %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"\09Current Active Commands           : %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"\09Current Queued PT Commands        : %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\09Current Active PT Commands        : %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32, i32)* @ips_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_host_info(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* @IPS_NVRAM_P5_SIG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le16_to_cpu(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32*, i32** @ips_adapter_name, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %48

46:                                               ; preds = %28, %4
  %47 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %36
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %66, %61
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @le32_to_cpu(i32 %89)
  %91 = load i64, i64* @IPS_NVRAM_P5_SIG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %212

93:                                               ; preds = %78
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %153

102:                                              ; preds = %93
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %116, i32 %123, i32 %130, i32 %137, i32 %144, i32 %151)
  br label %211

153:                                              ; preds = %93
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 7
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %167, i32 %174, i32 %181, i32 %188, i32 %195, i32 %202, i32 %209)
  br label %211

211:                                              ; preds = %153, %102
  br label %212

212:                                              ; preds = %211, %78
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 7
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %272

221:                                              ; preds = %212
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 6
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 5
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 6
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %228, i32 %235, i32 %242, i32 %249, i32 %256, i32 %263, i32 %270)
  br label %330

272:                                              ; preds = %212
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 6
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 6
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 6
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 3
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 6
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 4
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 6
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 5
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 6
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 6
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 6
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 7
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %279, i32 %286, i32 %293, i32 %300, i32 %307, i32 %314, i32 %321, i32 %328)
  br label %330

330:                                              ; preds = %272, %221
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 7
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %390

339:                                              ; preds = %330
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 6
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 6
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 6
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 3
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 4
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 6
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 5
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 6
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 6
  %388 = load i32, i32* %387, align 4
  %389 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %346, i32 %353, i32 %360, i32 %367, i32 %374, i32 %381, i32 %388)
  br label %448

390:                                              ; preds = %330
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 6
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 6
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 6
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 6
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 3
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 1
  %423 = load i32*, i32** %422, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 4
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 6
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 5
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 6
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 6
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %440, i32 0, i32 6
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 7
  %446 = load i32, i32* %445, align 4
  %447 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 %397, i32 %404, i32 %411, i32 %418, i32 %425, i32 %432, i32 %439, i32 %446)
  br label %448

448:                                              ; preds = %390, %339
  %449 = load i32, i32* @IPS_VERSION_HIGH, align 4
  %450 = load i32, i32* @IPS_VERSION_LOW, align 4
  %451 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %449, i32 %450)
  %452 = load i32, i32* @IPS_BUILD_IDENT, align 4
  %453 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %452)
  %454 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 6
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %458)
  %460 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 4
  %463 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %462)
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 4
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %467)
  %469 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %469, i32 0, i32 3
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = sub nsw i64 %472, %475
  %477 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i64 %476)
  %478 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %481)
  %483 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i64 %485)
  %487 = call i32 (%struct.TYPE_18__*, i8*, ...) @copy_info(%struct.TYPE_18__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %488 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  ret i32 %489
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @copy_info(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
