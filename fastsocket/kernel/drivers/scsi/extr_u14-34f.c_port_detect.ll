; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_port_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_port_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8 }
%struct.TYPE_9__ = type { i64, i64, i64, i8, i32, i32, i8, i32, i8, i8, i32, i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.scsi_host_template = type { i8* }
%struct.config_1 = type { i8 }
%struct.config_2 = type { i8 }
%struct.TYPE_11__ = type { i8, i8, i8, i32, %struct.TYPE_10__*, i32*, i64* }
%struct.TYPE_10__ = type { i32, i32 }

@__const.port_detect.bios_segment_table = private unnamed_addr constant [8 x i64] [i64 0, i64 802816, i64 819200, i64 835584, i64 851968, i64 868352, i64 884736, i64 901120], align 16
@__const.port_detect.interrupt_table = private unnamed_addr constant [4 x i8] c"\0F\0E\0B\0A", align 1
@__const.port_detect.dma_channel_table = private unnamed_addr constant [4 x i8] c"\05\06\07\00", align 1
@__const.port_detect.mapping_table = private unnamed_addr constant [4 x %struct.anon] [%struct.anon { i8 16, i8 63 }, %struct.anon { i8 64, i8 32 }, %struct.anon { i8 64, i8 63 }, %struct.anon { i8 64, i8 32 }], align 1
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@driver_name = common dso_local global i8* null, align 8
@REGION_SIZE = common dso_local global i32 0, align 4
@driver_lock = common dso_local global i32 0, align 4
@REG_PRODUCT_ID1 = common dso_local global i64 0, align 8
@PRODUCT_ID1 = common dso_local global i8* null, align 8
@REG_PRODUCT_ID2 = common dso_local global i64 0, align 8
@PRODUCT_ID2 = common dso_local global i8 0, align 1
@REG_CONFIG1 = common dso_local global i64 0, align 8
@REG_CONFIG2 = common dso_local global i64 0, align 8
@do_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@ESA = common dso_local global i8 0, align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@sha = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: unable to allocate IRQ %u, detaching.\0A\00", align 1
@ISA = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: unable to allocate DMA channel %u, detaching.\0A\00", align 1
@have_old_firmware = common dso_local global i64 0, align 8
@DISABLE_CLUSTERING = common dso_local global i8* null, align 8
@sh = common dso_local global %struct.TYPE_9__** null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: unable to register host, detaching.\0A\00", align 1
@MAX_SGLIST = common dso_local global i32 0, align 4
@MAX_MAILBOXES = common dso_local global i8 0, align 1
@MAX_CMD_PER_LUN = common dso_local global i64 0, align 8
@CMD_ENA_INTR = common dso_local global i32 0, align 4
@REG_SYS_MASK = common dso_local global i64 0, align 8
@MAX_SAFE_SGLIST = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@NO_DMA = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"U34F%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"VESA\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DMA_MODE_CASCADE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"U14F%d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@MAX_CHANNEL = common dso_local global i8 0, align 1
@MAX_TARGET = common dso_local global i32 0, align 4
@MAX_LUN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"06000600\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s: %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"%s: firmware %s is outdated, FW PROM should be 28004-006.\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"BMST\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"DMA %u\00", align 1
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"%s: kmalloc SGlist failed, mbox %d, detaching.\0A\00", align 1
@max_queue_depth = common dso_local global i64 0, align 8
@MAX_TAGGED_CMD_PER_LUN = common dso_local global i64 0, align 8
@tag_mode = common dso_local global i64 0, align 8
@TAG_DISABLED = common dso_local global i64 0, align 8
@TAG_SIMPLE = common dso_local global i64 0, align 8
@TAG_ORDERED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [60 x i8] c"UltraStor 14F/34F: Copyright (C) 1994-2003 Dario Ballabio.\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"%s config options -> of:%c, tm:%d, lc:%c, mq:%d, et:%c.\0A\00", align 1
@linked_comm = common dso_local global i64 0, align 8
@ext_tran = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"%s: %s 0x%03lx, BIOS 0x%05x, IRQ %u, %s, SG %d, MB %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s: wide SCSI support enabled, max_id %u, max_lun %u.\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%s: SCSI channel %u enabled, host target ID %d.\0A\00", align 1
@REG_LCL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.scsi_host_template*)* @port_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_detect(i64 %0, i32 %1, %struct.scsi_host_template* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_host_template*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca [8 x i64], align 16
  %16 = alloca [4 x i8], align 1
  %17 = alloca [4 x i8], align 1
  %18 = alloca [4 x %struct.anon], align 1
  %19 = alloca %struct.config_1, align 1
  %20 = alloca %struct.config_2, align 1
  %21 = alloca [16 x i8], align 16
  %22 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_host_template* %2, %struct.scsi_host_template** %7, align 8
  %23 = bitcast [8 x i64]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([8 x i64]* @__const.port_detect.bios_segment_table to i8*), i64 64, i1 false)
  %24 = bitcast [4 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.port_detect.interrupt_table, i32 0, i32 0), i64 4, i1 false)
  %25 = bitcast [4 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.port_detect.dma_channel_table, i32 0, i32 0), i64 4, i1 false)
  %26 = bitcast [4 x %struct.anon]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([4 x %struct.anon], [4 x %struct.anon]* @__const.port_detect.mapping_table, i32 0, i32 0, i32 0), i64 8, i1 false)
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %28 = load i8*, i8** @driver_name, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @REGION_SIZE, align 4
  %33 = load i8*, i8** @driver_name, align 8
  %34 = call i32 @request_region(i64 %31, i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %738

37:                                               ; preds = %3
  %38 = call i32 @spin_lock_irq(i32* @driver_lock)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @REG_PRODUCT_ID1, align 8
  %41 = add i64 %39, %40
  %42 = call i8* @inb(i64 %41)
  %43 = load i8*, i8** @PRODUCT_ID1, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %733

46:                                               ; preds = %37
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @REG_PRODUCT_ID2, align 8
  %49 = add i64 %47, %48
  %50 = call i8* @inb(i64 %49)
  %51 = ptrtoint i8* %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 240
  %55 = load i8, i8* @PRODUCT_ID2, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %733

59:                                               ; preds = %46
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @REG_CONFIG1, align 8
  %62 = add i64 %60, %61
  %63 = call i8* @inb(i64 %62)
  %64 = ptrtoint i8* %63 to i8
  %65 = bitcast %struct.config_1* %19 to i8*
  store i8 %64, i8* %65, align 1
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @REG_CONFIG2, align 8
  %68 = add i64 %66, %67
  %69 = call i8* @inb(i64 %68)
  %70 = ptrtoint i8* %69 to i8
  %71 = bitcast %struct.config_2* %20 to i8*
  store i8 %70, i8* %71, align 1
  %72 = bitcast %struct.config_1* %19 to i8*
  %73 = load i8, i8* %72, align 1
  %74 = lshr i8 %73, 4
  %75 = and i8 %74, 3
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %8, align 1
  %79 = bitcast %struct.config_1* %19 to i8*
  %80 = load i8, i8* %79, align 1
  %81 = lshr i8 %80, 6
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %9, align 1
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 15
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %10, align 1
  %89 = load i8, i8* %8, align 1
  %90 = load i32, i32* @do_interrupt_handler, align 4
  %91 = load i32, i32* @IRQF_DISABLED, align 4
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @ESA, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %59
  %98 = load i32, i32* @IRQF_SHARED, align 4
  br label %100

99:                                               ; preds = %59
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = or i32 %91, %101
  %103 = load i8*, i8** @driver_name, align 8
  %104 = load i32*, i32** @sha, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = bitcast i32* %107 to i8*
  %109 = call i64 @request_irq(i8 zeroext %89, i32 %90, i32 %102, i8* %103, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %113 = load i8, i8* %8, align 1
  %114 = zext i8 %113 to i32
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 %114)
  br label %733

116:                                              ; preds = %100
  %117 = load i8, i8* %10, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @ISA, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load i8, i8* %9, align 1
  %124 = load i8*, i8** @driver_name, align 8
  %125 = call i64 @request_dma(i8 zeroext %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %129 = load i8, i8* %9, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %128, i32 %130)
  br label %726

132:                                              ; preds = %122, %116
  %133 = load i64, i64* @have_old_firmware, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** @DISABLE_CLUSTERING, align 8
  %137 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %138 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %132
  %140 = call i32 @spin_unlock_irq(i32* @driver_lock)
  %141 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %142 = call %struct.TYPE_9__* @scsi_register(%struct.scsi_host_template* %141, i32 4)
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %143, i64 %145
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %146, align 8
  %147 = call i32 @spin_lock_irq(i32* @driver_lock)
  %148 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %149 = load i32, i32* %6, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %148, i64 %150
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = icmp eq %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %716

157:                                              ; preds = %139
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %159, i64 %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i64 %158, i64* %164, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %167 = load i32, i32* %6, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 %168
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  store i64 %165, i64* %171, align 8
  %172 = load i32, i32* @REGION_SIZE, align 4
  %173 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %173, i64 %175
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 14
  store i32 %172, i32* %178, align 8
  %179 = bitcast %struct.config_1* %19 to i8*
  %180 = load i8, i8* %179, align 1
  %181 = and i8 %180, 7
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %186 = load i32, i32* %6, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %185, i64 %187
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  store i64 %184, i64* %190, align 8
  %191 = load i8, i8* %8, align 1
  %192 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %193 = load i32, i32* %6, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %192, i64 %194
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  store i8 %191, i8* %197, align 8
  %198 = load i32, i32* @MAX_SGLIST, align 4
  %199 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %200 = load i32, i32* %6, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %199, i64 %201
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 4
  store i32 %198, i32* %204, align 4
  %205 = bitcast %struct.config_2* %20 to i8*
  %206 = load i8, i8* %205, align 1
  %207 = and i8 %206, 7
  %208 = zext i8 %207 to i32
  %209 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %210 = load i32, i32* %6, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %209, i64 %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 5
  store i32 %208, i32* %214, align 8
  %215 = load i8, i8* @MAX_MAILBOXES, align 1
  %216 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %217 = load i32, i32* %6, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %216, i64 %218
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 6
  store i8 %215, i8* %221, align 4
  %222 = load i64, i64* @MAX_CMD_PER_LUN, align 8
  %223 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %224 = load i32, i32* %6, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %223, i64 %225
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 13
  store i64 %222, i64* %228, align 8
  %229 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %229, i64 %231
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %157
  %238 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %239 = load i32, i32* %6, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %238, i64 %240
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 5
  store i32 -1, i32* %243, align 8
  br label %244

244:                                              ; preds = %237, %157
  %245 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %246 = load i32, i32* %6, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %245, i64 %247
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %244
  %254 = load i32, i32* @CMD_ENA_INTR, align 4
  %255 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %256 = load i32, i32* %6, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %255, i64 %257
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @REG_SYS_MASK, align 8
  %263 = add i64 %261, %262
  %264 = call i32 @outb(i32 %254, i64 %263)
  br label %265

265:                                              ; preds = %253, %244
  %266 = load i32, i32* %6, align 4
  %267 = call %struct.TYPE_11__* @HD(i32 %266)
  %268 = call i32 @memset(%struct.TYPE_11__* %267, i32 0, i32 4)
  %269 = bitcast %struct.config_2* %20 to i8*
  %270 = load i8, i8* %269, align 1
  %271 = lshr i8 %270, 3
  %272 = and i8 %271, 3
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %273
  %275 = getelementptr inbounds %struct.anon, %struct.anon* %274, i32 0, i32 0
  %276 = load i8, i8* %275, align 1
  %277 = load i32, i32* %6, align 4
  %278 = call %struct.TYPE_11__* @HD(i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  store i8 %276, i8* %279, align 8
  %280 = bitcast %struct.config_2* %20 to i8*
  %281 = load i8, i8* %280, align 1
  %282 = lshr i8 %281, 3
  %283 = and i8 %282, 3
  %284 = zext i8 %283 to i64
  %285 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %18, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.anon, %struct.anon* %285, i32 0, i32 1
  %287 = load i8, i8* %286, align 1
  %288 = load i32, i32* %6, align 4
  %289 = call %struct.TYPE_11__* @HD(i32 %288)
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  store i8 %287, i8* %290, align 1
  %291 = load i8, i8* %10, align 1
  %292 = load i32, i32* %6, align 4
  %293 = call %struct.TYPE_11__* @HD(i32 %292)
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  store i8 %291, i8* %294, align 2
  %295 = load i32, i32* %6, align 4
  %296 = call %struct.TYPE_11__* @HD(i32 %295)
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 5
  store i32* null, i32** %297, align 8
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = call %struct.TYPE_11__* @HD(i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  store i32 %298, i32* %301, align 4
  %302 = load i64, i64* @have_old_firmware, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %265
  %305 = load i8*, i8** @MAX_SAFE_SGLIST, align 8
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %308 = load i32, i32* %6, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %307, i64 %309
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 4
  store i32 %306, i32* %312, align 4
  br label %313

313:                                              ; preds = %304, %265
  %314 = load i32, i32* %6, align 4
  %315 = call %struct.TYPE_11__* @HD(i32 %314)
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load i8, i8* %316, align 2
  %318 = zext i8 %317 to i32
  %319 = load i8, i8* @ESA, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %341

322:                                              ; preds = %313
  %323 = load i32, i32* @FALSE, align 4
  %324 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %325 = load i32, i32* %6, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %324, i64 %326
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 7
  store i32 %323, i32* %329, align 8
  %330 = load i8, i8* @NO_DMA, align 1
  %331 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %332 = load i32, i32* %6, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %331, i64 %333
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 8
  store i8 %330, i8* %336, align 4
  %337 = load i32, i32* %6, align 4
  %338 = call i8* @BN(i32 %337)
  %339 = load i32, i32* %6, align 4
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %339)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %372

341:                                              ; preds = %313
  %342 = load i32, i32* @TRUE, align 4
  %343 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %344 = load i32, i32* %6, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %343, i64 %345
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 7
  store i32 %342, i32* %348, align 8
  %349 = call i64 (...) @claim_dma_lock()
  store i64 %349, i64* %22, align 8
  %350 = load i8, i8* %9, align 1
  %351 = call i32 @disable_dma(i8 zeroext %350)
  %352 = load i8, i8* %9, align 1
  %353 = call i32 @clear_dma_ff(i8 zeroext %352)
  %354 = load i8, i8* %9, align 1
  %355 = load i32, i32* @DMA_MODE_CASCADE, align 4
  %356 = call i32 @set_dma_mode(i8 zeroext %354, i32 %355)
  %357 = load i8, i8* %9, align 1
  %358 = call i32 @enable_dma(i8 zeroext %357)
  %359 = load i64, i64* %22, align 8
  %360 = call i32 @release_dma_lock(i64 %359)
  %361 = load i8, i8* %9, align 1
  %362 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %363 = load i32, i32* %6, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %362, i64 %364
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 8
  store i8 %361, i8* %367, align 4
  %368 = load i32, i32* %6, align 4
  %369 = call i8* @BN(i32 %368)
  %370 = load i32, i32* %6, align 4
  %371 = call i32 (i8*, i8*, ...) @sprintf(i8* %369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %370)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %372

372:                                              ; preds = %341, %322
  %373 = load i8, i8* @MAX_CHANNEL, align 1
  %374 = zext i8 %373 to i32
  %375 = sub nsw i32 %374, 1
  %376 = trunc i32 %375 to i8
  %377 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %378 = load i32, i32* %6, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %377, i64 %379
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 9
  store i8 %376, i8* %382, align 1
  %383 = load i32, i32* @MAX_TARGET, align 4
  %384 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %385 = load i32, i32* %6, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %384, i64 %386
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 10
  store i32 %383, i32* %389, align 8
  %390 = load i32, i32* @MAX_LUN, align 4
  %391 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %392 = load i32, i32* %6, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %391, i64 %393
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 11
  store i32 %390, i32* %396, align 4
  %397 = load i32, i32* %6, align 4
  %398 = call %struct.TYPE_11__* @HD(i32 %397)
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 2
  %400 = load i8, i8* %399, align 2
  %401 = zext i8 %400 to i32
  %402 = load i8, i8* @ISA, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %457

405:                                              ; preds = %372
  %406 = load i32, i32* %6, align 4
  %407 = call i32 @board_inquiry(i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %457, label %409

409:                                              ; preds = %405
  %410 = load i32, i32* %6, align 4
  %411 = call %struct.TYPE_11__* @HD(i32 %410)
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 6
  %413 = load i64*, i64** %412, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 40
  store i64 0, i64* %414, align 8
  %415 = load i32, i32* %6, align 4
  %416 = call %struct.TYPE_11__* @HD(i32 %415)
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 6
  %418 = load i64*, i64** %417, align 8
  %419 = getelementptr inbounds i64, i64* %418, i64 32
  %420 = call i64 @strcmp(i64* %419, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %456

422:                                              ; preds = %409
  %423 = load i32, i32* %6, align 4
  %424 = call i8* @BN(i32 %423)
  %425 = load i32, i32* %6, align 4
  %426 = call %struct.TYPE_11__* @HD(i32 %425)
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 6
  %428 = load i64*, i64** %427, align 8
  %429 = getelementptr inbounds i64, i64* %428, i64 8
  %430 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %424, i64* %429)
  %431 = load i32, i32* %6, align 4
  %432 = call i8* @BN(i32 %431)
  %433 = load i32, i32* %6, align 4
  %434 = call %struct.TYPE_11__* @HD(i32 %433)
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 6
  %436 = load i64*, i64** %435, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 32
  %438 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i8* %432, i64* %437)
  %439 = load i8*, i8** @DISABLE_CLUSTERING, align 8
  %440 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %441 = load i32, i32* %6, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %440, i64 %442
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 12
  %446 = load %struct.TYPE_8__*, %struct.TYPE_8__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 0
  store i8* %439, i8** %447, align 8
  %448 = load i8*, i8** @MAX_SAFE_SGLIST, align 8
  %449 = ptrtoint i8* %448 to i32
  %450 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %451 = load i32, i32* %6, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %450, i64 %452
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 4
  store i32 %449, i32* %455, align 4
  br label %456

456:                                              ; preds = %422, %409
  br label %457

457:                                              ; preds = %456, %405, %372
  %458 = load i8, i8* %9, align 1
  %459 = zext i8 %458 to i32
  %460 = load i8, i8* @NO_DMA, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp eq i32 %459, %461
  br i1 %462, label %463, label %466

463:                                              ; preds = %457
  %464 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %465 = call i32 (i8*, i8*, ...) @sprintf(i8* %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %471

466:                                              ; preds = %457
  %467 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %468 = load i8, i8* %9, align 1
  %469 = zext i8 %468 to i32
  %470 = call i32 (i8*, i8*, ...) @sprintf(i8* %467, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %469)
  br label %471

471:                                              ; preds = %466, %463
  %472 = call i32 @spin_unlock_irq(i32* @driver_lock)
  store i8 0, i8* %11, align 1
  br label %473

473:                                              ; preds = %507, %471
  %474 = load i8, i8* %11, align 1
  %475 = zext i8 %474 to i32
  %476 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %477 = load i32, i32* %6, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %476, i64 %478
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 6
  %482 = load i8, i8* %481, align 4
  %483 = zext i8 %482 to i32
  %484 = icmp slt i32 %475, %483
  br i1 %484, label %485, label %510

485:                                              ; preds = %473
  %486 = load i32, i32* %6, align 4
  %487 = call %struct.TYPE_11__* @HD(i32 %486)
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 5
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %6, align 4
  %491 = call %struct.TYPE_11__* @HD(i32 %490)
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 4
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %492, align 8
  %494 = load i8, i8* %11, align 1
  %495 = zext i8 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i64 %495
  %497 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %498 = call i32 @pci_map_single(i32* %489, %struct.TYPE_10__* %496, i32 4, i32 %497)
  %499 = load i32, i32* %6, align 4
  %500 = call %struct.TYPE_11__* @HD(i32 %499)
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 4
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %501, align 8
  %503 = load i8, i8* %11, align 1
  %504 = zext i8 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 1
  store i32 %498, i32* %506, align 4
  br label %507

507:                                              ; preds = %485
  %508 = load i8, i8* %11, align 1
  %509 = add i8 %508, 1
  store i8 %509, i8* %11, align 1
  br label %473

510:                                              ; preds = %473
  store i8 0, i8* %11, align 1
  br label %511

511:                                              ; preds = %566, %510
  %512 = load i8, i8* %11, align 1
  %513 = zext i8 %512 to i32
  %514 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %515 = load i32, i32* %6, align 4
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %514, i64 %516
  %518 = load %struct.TYPE_9__*, %struct.TYPE_9__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 6
  %520 = load i8, i8* %519, align 4
  %521 = zext i8 %520 to i32
  %522 = icmp slt i32 %513, %521
  br i1 %522, label %523, label %569

523:                                              ; preds = %511
  %524 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %525 = load i32, i32* %6, align 4
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %524, i64 %526
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 4
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  %532 = mul i64 %531, 4
  %533 = trunc i64 %532 to i32
  %534 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %535 = load i32, i32* %6, align 4
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %534, i64 %536
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 7
  %540 = load i32, i32* %539, align 8
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %523
  %543 = load i32, i32* @GFP_DMA, align 4
  br label %545

544:                                              ; preds = %523
  br label %545

545:                                              ; preds = %544, %542
  %546 = phi i32 [ %543, %542 ], [ 0, %544 ]
  %547 = load i32, i32* @GFP_ATOMIC, align 4
  %548 = or i32 %546, %547
  %549 = call i32 @kmalloc(i32 %533, i32 %548)
  %550 = load i32, i32* %6, align 4
  %551 = call %struct.TYPE_11__* @HD(i32 %550)
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 4
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %552, align 8
  %554 = load i8, i8* %11, align 1
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  store i32 %549, i32* %557, align 4
  %558 = icmp ne i32 %549, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %545
  %560 = load i32, i32* %6, align 4
  %561 = call i8* @BN(i32 %560)
  %562 = load i8, i8* %11, align 1
  %563 = zext i8 %562 to i32
  %564 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i8* %561, i32 %563)
  br label %740

565:                                              ; preds = %545
  br label %566

566:                                              ; preds = %565
  %567 = load i8, i8* %11, align 1
  %568 = add i8 %567, 1
  store i8 %568, i8* %11, align 1
  br label %511

569:                                              ; preds = %511
  %570 = load i64, i64* @max_queue_depth, align 8
  %571 = load i64, i64* @MAX_TAGGED_CMD_PER_LUN, align 8
  %572 = icmp sgt i64 %570, %571
  br i1 %572, label %573, label %575

573:                                              ; preds = %569
  %574 = load i64, i64* @MAX_TAGGED_CMD_PER_LUN, align 8
  store i64 %574, i64* @max_queue_depth, align 8
  br label %575

575:                                              ; preds = %573, %569
  %576 = load i64, i64* @max_queue_depth, align 8
  %577 = load i64, i64* @MAX_CMD_PER_LUN, align 8
  %578 = icmp slt i64 %576, %577
  br i1 %578, label %579, label %581

579:                                              ; preds = %575
  %580 = load i64, i64* @MAX_CMD_PER_LUN, align 8
  store i64 %580, i64* @max_queue_depth, align 8
  br label %581

581:                                              ; preds = %579, %575
  %582 = load i64, i64* @tag_mode, align 8
  %583 = load i64, i64* @TAG_DISABLED, align 8
  %584 = icmp ne i64 %582, %583
  br i1 %584, label %585, label %591

585:                                              ; preds = %581
  %586 = load i64, i64* @tag_mode, align 8
  %587 = load i64, i64* @TAG_SIMPLE, align 8
  %588 = icmp ne i64 %586, %587
  br i1 %588, label %589, label %591

589:                                              ; preds = %585
  %590 = load i64, i64* @TAG_ORDERED, align 8
  store i64 %590, i64* @tag_mode, align 8
  br label %591

591:                                              ; preds = %589, %585, %581
  %592 = load i32, i32* %6, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %606

594:                                              ; preds = %591
  %595 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  %596 = load i8*, i8** @driver_name, align 8
  %597 = load i64, i64* @have_old_firmware, align 8
  %598 = call i32 @YESNO(i64 %597)
  %599 = load i64, i64* @tag_mode, align 8
  %600 = load i64, i64* @linked_comm, align 8
  %601 = call i32 @YESNO(i64 %600)
  %602 = load i64, i64* @max_queue_depth, align 8
  %603 = load i64, i64* @ext_tran, align 8
  %604 = call i32 @YESNO(i64 %603)
  %605 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i8* %596, i32 %598, i64 %599, i32 %601, i64 %602, i32 %604)
  br label %606

606:                                              ; preds = %594, %591
  %607 = load i32, i32* %6, align 4
  %608 = call i8* @BN(i32 %607)
  %609 = load i8*, i8** %13, align 8
  %610 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %611 = load i32, i32* %6, align 4
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %610, i64 %612
  %614 = load %struct.TYPE_9__*, %struct.TYPE_9__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %618 = load i32, i32* %6, align 4
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %617, i64 %619
  %621 = load %struct.TYPE_9__*, %struct.TYPE_9__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %621, i32 0, i32 2
  %623 = load i64, i64* %622, align 8
  %624 = trunc i64 %623 to i32
  %625 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %626 = load i32, i32* %6, align 4
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %625, i64 %627
  %629 = load %struct.TYPE_9__*, %struct.TYPE_9__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %629, i32 0, i32 3
  %631 = load i8, i8* %630, align 8
  %632 = zext i8 %631 to i32
  %633 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %634 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %635 = load i32, i32* %6, align 4
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %634, i64 %636
  %638 = load %struct.TYPE_9__*, %struct.TYPE_9__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %638, i32 0, i32 4
  %640 = load i32, i32* %639, align 4
  %641 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %642 = load i32, i32* %6, align 4
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %641, i64 %643
  %645 = load %struct.TYPE_9__*, %struct.TYPE_9__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i32 0, i32 6
  %647 = load i8, i8* %646, align 4
  %648 = zext i8 %647 to i32
  %649 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i8* %608, i8* %609, i64 %616, i32 %624, i32 %632, i8* %633, i32 %640, i32 %648)
  %650 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %651 = load i32, i32* %6, align 4
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %650, i64 %652
  %654 = load %struct.TYPE_9__*, %struct.TYPE_9__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %654, i32 0, i32 10
  %656 = load i32, i32* %655, align 8
  %657 = icmp sgt i32 %656, 8
  br i1 %657, label %667, label %658

658:                                              ; preds = %606
  %659 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %660 = load i32, i32* %6, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %659, i64 %661
  %663 = load %struct.TYPE_9__*, %struct.TYPE_9__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %663, i32 0, i32 11
  %665 = load i32, i32* %664, align 4
  %666 = icmp sgt i32 %665, 8
  br i1 %666, label %667, label %685

667:                                              ; preds = %658, %606
  %668 = load i32, i32* %6, align 4
  %669 = call i8* @BN(i32 %668)
  %670 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %671 = load i32, i32* %6, align 4
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %670, i64 %672
  %674 = load %struct.TYPE_9__*, %struct.TYPE_9__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %674, i32 0, i32 10
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %678 = load i32, i32* %6, align 4
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %677, i64 %679
  %681 = load %struct.TYPE_9__*, %struct.TYPE_9__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %681, i32 0, i32 11
  %683 = load i32, i32* %682, align 4
  %684 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i8* %669, i32 %676, i32 %683)
  br label %685

685:                                              ; preds = %667, %658
  store i8 0, i8* %11, align 1
  br label %686

686:                                              ; preds = %711, %685
  %687 = load i8, i8* %11, align 1
  %688 = zext i8 %687 to i32
  %689 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %690 = load i32, i32* %6, align 4
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %689, i64 %691
  %693 = load %struct.TYPE_9__*, %struct.TYPE_9__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %693, i32 0, i32 9
  %695 = load i8, i8* %694, align 1
  %696 = zext i8 %695 to i32
  %697 = icmp sle i32 %688, %696
  br i1 %697, label %698, label %714

698:                                              ; preds = %686
  %699 = load i32, i32* %6, align 4
  %700 = call i8* @BN(i32 %699)
  %701 = load i8, i8* %11, align 1
  %702 = zext i8 %701 to i32
  %703 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %704 = load i32, i32* %6, align 4
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %703, i64 %705
  %707 = load %struct.TYPE_9__*, %struct.TYPE_9__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %707, i32 0, i32 5
  %709 = load i32, i32* %708, align 8
  %710 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i8* %700, i32 %702, i32 %709)
  br label %711

711:                                              ; preds = %698
  %712 = load i8, i8* %11, align 1
  %713 = add i8 %712, 1
  store i8 %713, i8* %11, align 1
  br label %686

714:                                              ; preds = %686
  %715 = load i32, i32* @TRUE, align 4
  store i32 %715, i32* %4, align 4
  br label %748

716:                                              ; preds = %154
  %717 = load i8, i8* %10, align 1
  %718 = zext i8 %717 to i32
  %719 = load i8, i8* @ISA, align 1
  %720 = zext i8 %719 to i32
  %721 = icmp eq i32 %718, %720
  br i1 %721, label %722, label %725

722:                                              ; preds = %716
  %723 = load i8, i8* %9, align 1
  %724 = call i32 @free_dma(i8 zeroext %723)
  br label %725

725:                                              ; preds = %722, %716
  br label %726

726:                                              ; preds = %725, %127
  %727 = load i8, i8* %8, align 1
  %728 = load i32*, i32** @sha, align 8
  %729 = load i32, i32* %6, align 4
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  %732 = call i32 @free_irq(i8 zeroext %727, i32* %731)
  br label %733

733:                                              ; preds = %726, %111, %58, %45
  %734 = call i32 @spin_unlock_irq(i32* @driver_lock)
  %735 = load i64, i64* %5, align 8
  %736 = load i32, i32* @REGION_SIZE, align 4
  %737 = call i32 @release_region(i64 %735, i32 %736)
  br label %738

738:                                              ; preds = %733, %36
  %739 = load i32, i32* @FALSE, align 4
  store i32 %739, i32* %4, align 4
  br label %748

740:                                              ; preds = %559
  %741 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %742 = load i32, i32* %6, align 4
  %743 = zext i32 %742 to i64
  %744 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %741, i64 %743
  %745 = load %struct.TYPE_9__*, %struct.TYPE_9__** %744, align 8
  %746 = call i32 @u14_34f_release(%struct.TYPE_9__* %745)
  %747 = load i32, i32* @FALSE, align 4
  store i32 %747, i32* %4, align 4
  br label %748

748:                                              ; preds = %740, %738, %714
  %749 = load i32, i32* %4, align 4
  ret i32 %749
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @request_region(i64, i32, i8*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i8* @inb(i64) #2

declare dso_local i64 @request_irq(i8 zeroext, i32, i32, i8*, i8*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i64 @request_dma(i8 zeroext, i8*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local %struct.TYPE_9__* @scsi_register(%struct.scsi_host_template*, i32) #2

declare dso_local i32 @outb(i32, i64) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local %struct.TYPE_11__* @HD(i32) #2

declare dso_local i8* @BN(i32) #2

declare dso_local i64 @claim_dma_lock(...) #2

declare dso_local i32 @disable_dma(i8 zeroext) #2

declare dso_local i32 @clear_dma_ff(i8 zeroext) #2

declare dso_local i32 @set_dma_mode(i8 zeroext, i32) #2

declare dso_local i32 @enable_dma(i8 zeroext) #2

declare dso_local i32 @release_dma_lock(i64) #2

declare dso_local i32 @board_inquiry(i32) #2

declare dso_local i64 @strcmp(i64*, i8*) #2

declare dso_local i32 @pci_map_single(i32*, %struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @kmalloc(i32, i32) #2

declare dso_local i32 @YESNO(i64) #2

declare dso_local i32 @free_dma(i8 zeroext) #2

declare dso_local i32 @free_irq(i8 zeroext, i32*) #2

declare dso_local i32 @release_region(i64, i32) #2

declare dso_local i32 @u14_34f_release(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
