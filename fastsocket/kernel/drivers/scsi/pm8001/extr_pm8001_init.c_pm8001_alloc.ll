; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32*, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"pm8001_alloc: PHY:%x\0A\00", align 1
@PM8001_MAX_CCB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AAP1 = common dso_local global i64 0, align 8
@PM8001_EVENT_LOG_SIZE = common dso_local global i8* null, align 8
@IOP = common dso_local global i64 0, align 8
@PM8001_MAX_SPCV_INB_NUM = common dso_local global i32 0, align 4
@CI = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8
@PM8001_MPI_QUEUE = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@PM8001_MAX_SPCV_OUTB_NUM = common dso_local global i32 0, align 4
@PI = common dso_local global i32 0, align 4
@OB = common dso_local global i32 0, align 4
@NVMD = common dso_local global i64 0, align 8
@DEV_MEM = common dso_local global i64 0, align 8
@PM8001_MAX_DEVICES = common dso_local global i32 0, align 4
@CCB_MEM = common dso_local global i64 0, align 8
@FW_FLASH = common dso_local global i64 0, align 8
@USI_MAX_MEMCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Mem%d alloc failed\0A\00", align 1
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@PM8001F_INIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pci_device_id*)* @pm8001_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_alloc(%struct.pm8001_hba_info* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %8 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %7, i32 0, i32 9
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %12 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %11, i32 0, i32 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %10, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %59, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %18
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pm8001_phy_init(%struct.pm8001_hba_info* %27, i32 %28)
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %31 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %30, i32 0, i32 7
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 7
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 7
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %52 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %51, i32 0, i32 7
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %18

62:                                               ; preds = %18
  %63 = load i32, i32* @PM8001_MAX_CCB, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @kzalloc(i32 %63, i32 %64)
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %67 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %69 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %699

73:                                               ; preds = %62
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %75 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i64, i64* @AAP1, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %84 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i64, i64* @AAP1, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %82, i32* %89, align 4
  %90 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %93 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* @AAP1, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32 %91, i32* %98, align 8
  %99 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %100 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* @AAP1, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i32 32, i32* %105, align 4
  %106 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %107 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* @IOP, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %116 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i64, i64* @IOP, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  %122 = load i8*, i8** @PM8001_EVENT_LOG_SIZE, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %125 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* @IOP, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 %123, i32* %130, align 8
  %131 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %132 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* @IOP, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32 32, i32* %137, align 4
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %277, %73
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @PM8001_MAX_SPCV_INB_NUM, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %280

142:                                              ; preds = %138
  %143 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %144 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i32, i32* @CI, align 4
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %154 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* @CI, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i32 4, i32* %162, align 4
  %163 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %164 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = load i32, i32* @CI, align 4
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  store i32 4, i32* %172, align 8
  %173 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %174 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load i32, i32* @CI, align 4
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  store i32 4, i32* %182, align 4
  %183 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %184 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @chip_8001, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %232

188:                                              ; preds = %142
  %189 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %191 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* @IB, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %189, i32* %199, align 8
  %200 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %201 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* @IB, align 4
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store i32 128, i32* %209, align 4
  %210 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %211 = mul nsw i32 %210, 128
  %212 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %213 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i32, i32* @IB, align 4
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i32 %211, i32* %221, align 8
  %222 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %223 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* @IB, align 4
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  store i32 128, i32* %231, align 4
  br label %276

232:                                              ; preds = %142
  %233 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %234 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %235 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = load i32, i32* @IB, align 4
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store i32 %233, i32* %243, align 8
  %244 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %245 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = load i32, i32* @IB, align 4
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  store i32 64, i32* %253, align 4
  %254 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %255 = mul nsw i32 %254, 64
  %256 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %257 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = load i32, i32* @IB, align 4
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  store i32 %255, i32* %265, align 8
  %266 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %267 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = load i32, i32* @IB, align 4
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  store i32 64, i32* %275, align 4
  br label %276

276:                                              ; preds = %232, %188
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %138

280:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %281

281:                                              ; preds = %420, %280
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @PM8001_MAX_SPCV_OUTB_NUM, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %423

285:                                              ; preds = %281
  %286 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %287 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = load i32, i32* @PI, align 4
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  store i32 1, i32* %295, align 8
  %296 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %297 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = load i32, i32* @PI, align 4
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 1
  store i32 4, i32* %305, align 4
  %306 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %307 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = load i32, i32* @PI, align 4
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 2
  store i32 4, i32* %315, align 8
  %316 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %317 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = load i32, i32* @PI, align 4
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 3
  store i32 4, i32* %325, align 4
  %326 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %327 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @chip_8001, align 8
  %330 = icmp ne i64 %328, %329
  br i1 %330, label %331, label %375

331:                                              ; preds = %285
  %332 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %333 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %334 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = load i32, i32* @OB, align 4
  %338 = load i32, i32* %6, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i32 %332, i32* %342, align 8
  %343 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %344 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %345, align 8
  %347 = load i32, i32* @OB, align 4
  %348 = load i32, i32* %6, align 4
  %349 = add nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 1
  store i32 128, i32* %352, align 4
  %353 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %354 = mul nsw i32 %353, 128
  %355 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %356 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = load i32, i32* @OB, align 4
  %360 = load i32, i32* %6, align 4
  %361 = add nsw i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 2
  store i32 %354, i32* %364, align 8
  %365 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %366 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* @OB, align 4
  %370 = load i32, i32* %6, align 4
  %371 = add nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 3
  store i32 128, i32* %374, align 4
  br label %419

375:                                              ; preds = %285
  %376 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %377 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %378 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %379, align 8
  %381 = load i32, i32* @OB, align 4
  %382 = load i32, i32* %6, align 4
  %383 = add nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  store i32 %376, i32* %386, align 8
  %387 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %388 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = load i32, i32* @OB, align 4
  %392 = load i32, i32* %6, align 4
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 1
  store i32 64, i32* %396, align 4
  %397 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %398 = mul nsw i32 %397, 64
  %399 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %400 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %401, align 8
  %403 = load i32, i32* @OB, align 4
  %404 = load i32, i32* %6, align 4
  %405 = add nsw i32 %403, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 2
  store i32 %398, i32* %408, align 8
  %409 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %410 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %411, align 8
  %413 = load i32, i32* @OB, align 4
  %414 = load i32, i32* %6, align 4
  %415 = add nsw i32 %413, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 3
  store i32 64, i32* %418, align 4
  br label %419

419:                                              ; preds = %375, %331
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %6, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %6, align 4
  br label %281

423:                                              ; preds = %281
  %424 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %425 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = load i64, i64* @NVMD, align 8
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 0
  store i32 1, i32* %430, align 8
  %431 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %432 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %433, align 8
  %435 = load i64, i64* @NVMD, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  store i32 4096, i32* %437, align 4
  %438 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %439 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %440, align 8
  %442 = load i64, i64* @NVMD, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 2
  store i32 4096, i32* %444, align 8
  %445 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %446 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %447, align 8
  %449 = load i64, i64* @DEV_MEM, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 0
  store i32 1, i32* %451, align 8
  %452 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %453 = sext i32 %452 to i64
  %454 = mul i64 %453, 4
  %455 = trunc i64 %454 to i32
  %456 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %457 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %458, align 8
  %460 = load i64, i64* @DEV_MEM, align 8
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 1
  store i32 %455, i32* %462, align 4
  %463 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %464 = sext i32 %463 to i64
  %465 = mul i64 %464, 4
  %466 = trunc i64 %465 to i32
  %467 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %468 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %469, align 8
  %471 = load i64, i64* @DEV_MEM, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 2
  store i32 %466, i32* %473, align 8
  %474 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %475 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %476, align 8
  %478 = load i64, i64* @CCB_MEM, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 0
  store i32 1, i32* %480, align 8
  %481 = load i32, i32* @PM8001_MAX_CCB, align 4
  %482 = sext i32 %481 to i64
  %483 = mul i64 %482, 4
  %484 = trunc i64 %483 to i32
  %485 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %486 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %485, i32 0, i32 3
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %487, align 8
  %489 = load i64, i64* @CCB_MEM, align 8
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 1
  store i32 %484, i32* %491, align 4
  %492 = load i32, i32* @PM8001_MAX_CCB, align 4
  %493 = sext i32 %492 to i64
  %494 = mul i64 %493, 4
  %495 = trunc i64 %494 to i32
  %496 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %497 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %496, i32 0, i32 3
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %498, align 8
  %500 = load i64, i64* @CCB_MEM, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 2
  store i32 %495, i32* %502, align 8
  %503 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %504 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %505, align 8
  %507 = load i64, i64* @FW_FLASH, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 2
  store i32 4096, i32* %509, align 8
  store i32 0, i32* %6, align 4
  br label %510

510:                                              ; preds = %576, %423
  %511 = load i32, i32* %6, align 4
  %512 = load i32, i32* @USI_MAX_MEMCNT, align 4
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %514, label %579

514:                                              ; preds = %510
  %515 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %516 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %515, i32 0, i32 5
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %519 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %518, i32 0, i32 3
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 0
  %521 = load %struct.TYPE_8__*, %struct.TYPE_8__** %520, align 8
  %522 = load i32, i32* %6, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 5
  %526 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %527 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %526, i32 0, i32 3
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_8__*, %struct.TYPE_8__** %528, align 8
  %530 = load i32, i32* %6, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 4
  %534 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %535 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %536, align 8
  %538 = load i32, i32* %6, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 7
  %542 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %543 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %544, align 8
  %546 = load i32, i32* %6, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 6
  %550 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %551 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %550, i32 0, i32 3
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_8__*, %struct.TYPE_8__** %552, align 8
  %554 = load i32, i32* %6, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %560 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %559, i32 0, i32 3
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 0
  %562 = load %struct.TYPE_8__*, %struct.TYPE_8__** %561, align 8
  %563 = load i32, i32* %6, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 4
  %568 = call i64 @pm8001_mem_alloc(i32 %517, %struct.TYPE_10__** %525, i32* %533, i32* %541, i32* %549, i32 %558, i32 %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %514
  %571 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %572 = load i32, i32* %6, align 4
  %573 = call i32 @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %572)
  %574 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %571, i32 %573)
  br label %699

575:                                              ; preds = %514
  br label %576

576:                                              ; preds = %575
  %577 = load i32, i32* %6, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %6, align 4
  br label %510

579:                                              ; preds = %510
  %580 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %581 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %580, i32 0, i32 3
  %582 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %581, i32 0, i32 0
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %582, align 8
  %584 = load i64, i64* @DEV_MEM, align 8
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 5
  %587 = load %struct.TYPE_10__*, %struct.TYPE_10__** %586, align 8
  %588 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %589 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %588, i32 0, i32 4
  store %struct.TYPE_10__* %587, %struct.TYPE_10__** %589, align 8
  store i32 0, i32* %6, align 4
  br label %590

590:                                              ; preds = %626, %579
  %591 = load i32, i32* %6, align 4
  %592 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %593 = icmp slt i32 %591, %592
  br i1 %593, label %594, label %629

594:                                              ; preds = %590
  %595 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %596 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %597 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %596, i32 0, i32 4
  %598 = load %struct.TYPE_10__*, %struct.TYPE_10__** %597, align 8
  %599 = load i32, i32* %6, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %598, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i32 0, i32 7
  store i32 %595, i32* %602, align 8
  %603 = load i32, i32* %6, align 4
  %604 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %605 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %604, i32 0, i32 4
  %606 = load %struct.TYPE_10__*, %struct.TYPE_10__** %605, align 8
  %607 = load i32, i32* %6, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %609, i32 0, i32 0
  store i32 %603, i32* %610, align 8
  %611 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %612 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %613 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %612, i32 0, i32 4
  %614 = load %struct.TYPE_10__*, %struct.TYPE_10__** %613, align 8
  %615 = load i32, i32* %6, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 1
  store i32 %611, i32* %618, align 4
  %619 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %620 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %619, i32 0, i32 4
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %620, align 8
  %622 = load i32, i32* %6, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %624, i32 0, i32 6
  store i64 0, i64* %625, align 8
  br label %626

626:                                              ; preds = %594
  %627 = load i32, i32* %6, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %6, align 4
  br label %590

629:                                              ; preds = %590
  %630 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %631 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %630, i32 0, i32 3
  %632 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_8__*, %struct.TYPE_8__** %632, align 8
  %634 = load i64, i64* @CCB_MEM, align 8
  %635 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %635, i32 0, i32 5
  %637 = load %struct.TYPE_10__*, %struct.TYPE_10__** %636, align 8
  %638 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %639 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %638, i32 0, i32 2
  store %struct.TYPE_10__* %637, %struct.TYPE_10__** %639, align 8
  store i32 0, i32* %6, align 4
  br label %640

640:                                              ; preds = %690, %629
  %641 = load i32, i32* %6, align 4
  %642 = load i32, i32* @PM8001_MAX_CCB, align 4
  %643 = icmp slt i32 %641, %642
  br i1 %643, label %644, label %693

644:                                              ; preds = %640
  %645 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %646 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %645, i32 0, i32 3
  %647 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %646, i32 0, i32 0
  %648 = load %struct.TYPE_8__*, %struct.TYPE_8__** %647, align 8
  %649 = load i64, i64* @CCB_MEM, align 8
  %650 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %648, i64 %649
  %651 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %650, i32 0, i32 4
  %652 = load i32, i32* %651, align 8
  %653 = sext i32 %652 to i64
  %654 = load i32, i32* %6, align 4
  %655 = sext i32 %654 to i64
  %656 = mul i64 %655, 4
  %657 = add i64 %653, %656
  %658 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %659 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %658, i32 0, i32 2
  %660 = load %struct.TYPE_10__*, %struct.TYPE_10__** %659, align 8
  %661 = load i32, i32* %6, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %660, i64 %662
  %664 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %663, i32 0, i32 5
  store i64 %657, i64* %664, align 8
  %665 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %666 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %665, i32 0, i32 2
  %667 = load %struct.TYPE_10__*, %struct.TYPE_10__** %666, align 8
  %668 = load i32, i32* %6, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %667, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %670, i32 0, i32 4
  store i32* null, i32** %671, align 8
  %672 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %673 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %672, i32 0, i32 2
  %674 = load %struct.TYPE_10__*, %struct.TYPE_10__** %673, align 8
  %675 = load i32, i32* %6, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %674, i64 %676
  %678 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %677, i32 0, i32 2
  store i32 -1, i32* %678, align 8
  %679 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %680 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %679, i32 0, i32 2
  %681 = load %struct.TYPE_10__*, %struct.TYPE_10__** %680, align 8
  %682 = load i32, i32* %6, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %681, i64 %683
  %685 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %684, i32 0, i32 3
  store i32* null, i32** %685, align 8
  %686 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %687 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %687, align 4
  br label %690

690:                                              ; preds = %644
  %691 = load i32, i32* %6, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %6, align 4
  br label %640

693:                                              ; preds = %640
  %694 = load i32, i32* @PM8001F_INIT_TIME, align 4
  %695 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %696 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %695, i32 0, i32 0
  store i32 %694, i32* %696, align 8
  %697 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %698 = call i32 @pm8001_tag_init(%struct.pm8001_hba_info* %697)
  store i32 0, i32* %3, align 4
  br label %700

699:                                              ; preds = %570, %72
  store i32 1, i32* %3, align 4
  br label %700

700:                                              ; preds = %699, %693
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_phy_init(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @pm8001_mem_alloc(i32, %struct.TYPE_10__**, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_tag_init(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
