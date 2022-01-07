; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i64, i64, %struct.Scsi_Host*, i32, %struct.sbp2_fwhost_info*, i32, i32, i32, i32, i32, i32, %struct.unit_directory*, %struct.TYPE_10__* }
%struct.Scsi_Host = type { i64*, i32 }
%struct.sbp2_fwhost_info = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.unit_directory = type { i32, %struct.TYPE_10__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to create lu\00", align 1
@IEEE1394_SPEED_100 = common dso_local global i64 0, align 8
@sbp2_speedto_max_payload = common dso_local global i32* null, align 8
@CSR1212_INVALID_ADDR_SPACE = common dso_local global i64 0, align 8
@SBP2LU_STATE_RUNNING = common dso_local global i32 0, align 4
@sbp2_highlevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to allocate hostinfo\00", align 1
@SBP2_MAX_SEG_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to get a reference on 1394 host driver\00", align 1
@sbp2_hi_logical_units_lock = common dso_local global i32 0, align 4
@sbp2_ops = common dso_local global i32 0, align 4
@CSR1212_ALL_SPACE_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to allocate status FIFO address range\00", align 1
@sbp2_shost_template = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to register scsi host\00", align 1
@SBP2_MAX_CDB_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to add scsi host\00", align 1
@sbp2_physdma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp2_lu* (%struct.unit_directory*)* @sbp2_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp2_lu* @sbp2_alloc_device(%struct.unit_directory* %0) #0 {
  %2 = alloca %struct.sbp2_lu*, align 8
  %3 = alloca %struct.unit_directory*, align 8
  %4 = alloca %struct.sbp2_fwhost_info*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sbp2_lu*, align 8
  %7 = alloca i64, align 8
  store %struct.unit_directory* %0, %struct.unit_directory** %3, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  store %struct.sbp2_lu* null, %struct.sbp2_lu** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sbp2_lu* @kzalloc(i32 80, i32 %8)
  store %struct.sbp2_lu* %9, %struct.sbp2_lu** %6, align 8
  %10 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %11 = icmp ne %struct.sbp2_lu* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %186

14:                                               ; preds = %1
  %15 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %16 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %19 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %18, i32 0, i32 12
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %19, align 8
  %20 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %22 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %21, i32 0, i32 11
  store %struct.unit_directory* %20, %struct.unit_directory** %22, align 8
  %23 = load i64, i64* @IEEE1394_SPEED_100, align 8
  %24 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %25 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32*, i32** @sbp2_speedto_max_payload, align 8
  %27 = load i64, i64* @IEEE1394_SPEED_100, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %31 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %33 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %34 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %36 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %35, i32 0, i32 9
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %39 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %38, i32 0, i32 8
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %42 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %41, i32 0, i32 3
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %45 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %44, i32 0, i32 7
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %48 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %47, i32 0, i32 6
  %49 = load i32, i32* @SBP2LU_STATE_RUNNING, align 4
  %50 = call i32 @atomic_set(i32* %48, i32 %49)
  %51 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %52 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %51, i32 0, i32 5
  %53 = call i32 @INIT_WORK(i32* %52, i32* null)
  %54 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %55 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %54, i32 0, i32 0
  %56 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %57 = call i32 @dev_set_drvdata(i32* %55, %struct.sbp2_lu* %56)
  %58 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %59 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = call %struct.sbp2_fwhost_info* @hpsb_get_hostinfo(i32* @sbp2_highlevel, %struct.TYPE_11__* %62)
  store %struct.sbp2_fwhost_info* %63, %struct.sbp2_fwhost_info** %4, align 8
  %64 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %65 = icmp ne %struct.sbp2_fwhost_info* %64, null
  br i1 %65, label %88, label %66

66:                                               ; preds = %14
  %67 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %68 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call %struct.sbp2_fwhost_info* @hpsb_create_hostinfo(i32* @sbp2_highlevel, %struct.TYPE_11__* %71, i32 16)
  store %struct.sbp2_fwhost_info* %72, %struct.sbp2_fwhost_info** %4, align 8
  %73 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %74 = icmp ne %struct.sbp2_fwhost_info* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %186

77:                                               ; preds = %66
  %78 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %79 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %84 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %83, i32 0, i32 1
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %84, align 8
  %85 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %86 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %85, i32 0, i32 0
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  br label %88

88:                                               ; preds = %77, %14
  %89 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %90 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @dma_get_max_seg_size(i32 %94)
  %96 = load i64, i64* @SBP2_MAX_SEG_SIZE, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %100 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @SBP2_MAX_SEG_SIZE, align 8
  %106 = call i32 @dma_set_max_seg_size(i32 %104, i64 %105)
  %107 = call i32 @BUG_ON(i32 %106)
  br label %108

108:                                              ; preds = %98, %88
  %109 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %110 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @try_module_get(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %186

120:                                              ; preds = %108
  %121 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %122 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %123 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %122, i32 0, i32 4
  store %struct.sbp2_fwhost_info* %121, %struct.sbp2_fwhost_info** %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @write_lock_irqsave(i32* @sbp2_hi_logical_units_lock, i64 %124)
  %126 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %127 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %126, i32 0, i32 3
  %128 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %129 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %128, i32 0, i32 0
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @write_unlock_irqrestore(i32* @sbp2_hi_logical_units_lock, i64 %131)
  %133 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %134 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %139 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CSR1212_ALL_SPACE_END, align 4
  %146 = call i64 @hpsb_allocate_and_register_addrspace(i32* @sbp2_highlevel, %struct.TYPE_11__* %137, i32* @sbp2_ops, i32 4, i32 4, i32 %144, i32 %145)
  %147 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %148 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %150 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %120
  %155 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %186

156:                                              ; preds = %120
  %157 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @sbp2_shost_template, i32 8)
  store %struct.Scsi_Host* %157, %struct.Scsi_Host** %5, align 8
  %158 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %159 = icmp ne %struct.Scsi_Host* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %186

162:                                              ; preds = %156
  %163 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %164 = ptrtoint %struct.sbp2_lu* %163 to i64
  %165 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %166 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  store i64 %164, i64* %168, align 8
  %169 = load i32, i32* @SBP2_MAX_CDB_SIZE, align 4
  %170 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %171 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %173 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %174 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %173, i32 0, i32 0
  %175 = call i32 @scsi_add_host(%struct.Scsi_Host* %172, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %162
  %178 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %179 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %180 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %179, i32 0, i32 2
  store %struct.Scsi_Host* %178, %struct.Scsi_Host** %180, align 8
  %181 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  store %struct.sbp2_lu* %181, %struct.sbp2_lu** %2, align 8
  br label %189

182:                                              ; preds = %162
  %183 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %184 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %185 = call i32 @scsi_host_put(%struct.Scsi_Host* %184)
  br label %186

186:                                              ; preds = %182, %160, %154, %118, %75, %12
  %187 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %188 = call i32 @sbp2_remove_device(%struct.sbp2_lu* %187)
  store %struct.sbp2_lu* null, %struct.sbp2_lu** %2, align 8
  br label %189

189:                                              ; preds = %186, %177
  %190 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  ret %struct.sbp2_lu* %190
}

declare dso_local %struct.sbp2_lu* @kzalloc(i32, i32) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.sbp2_lu*) #1

declare dso_local %struct.sbp2_fwhost_info* @hpsb_get_hostinfo(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.sbp2_fwhost_info* @hpsb_create_hostinfo(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @dma_get_max_seg_size(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_set_max_seg_size(i32, i64) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @hpsb_allocate_and_register_addrspace(i32*, %struct.TYPE_11__*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @sbp2_remove_device(%struct.sbp2_lu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
