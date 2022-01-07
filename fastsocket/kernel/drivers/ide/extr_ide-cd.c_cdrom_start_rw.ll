; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_start_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_start_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.request_queue*, %struct.cdrom_info* }
%struct.request_queue = type { i32 (%struct.request_queue*, %struct.request*)* }
%struct.request = type opaque
%struct.cdrom_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.request.0 = type { i32, i32, i32* }

@WRITE = common dso_local global i64 0, align 8
@SECTOR_BITS = common dso_local global i16 0, align 2
@IDE_DBG_RQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"rq->cmd[0]: 0x%x, rq->cmd_flags: 0x%x, secs_per_frame: %u\00", align 1
@ide_stopped = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@ATAPI_WAIT_PC = common dso_local global i32 0, align 4
@ide_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.request.0*)* @cdrom_start_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_start_rw(%struct.TYPE_5__* %0, %struct.request.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.request.0*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.request.0* %1, %struct.request.0** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load %struct.cdrom_info*, %struct.cdrom_info** %11, align 8
  store %struct.cdrom_info* %12, %struct.cdrom_info** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %7, align 8
  %16 = load %struct.request.0*, %struct.request.0** %5, align 8
  %17 = call i64 @rq_data_dir(%struct.request.0* %16)
  %18 = load i64, i64* @WRITE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %22 = call zeroext i16 @queue_logical_block_size(%struct.request_queue* %21)
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @SECTOR_BITS, align 2
  %25 = zext i16 %24 to i32
  %26 = ashr i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %9, align 2
  %28 = load i32, i32* @IDE_DBG_RQ, align 4
  %29 = load %struct.request.0*, %struct.request.0** %5, align 8
  %30 = getelementptr inbounds %struct.request.0, %struct.request.0* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request.0*, %struct.request.0** %5, align 8
  %35 = getelementptr inbounds %struct.request.0, %struct.request.0* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i16, i16* %9, align 2
  %38 = call i32 @ide_debug_log(i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i16 zeroext %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %43 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @get_disk_ro(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ide_stopped, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %41
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = load i32 (%struct.request_queue*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*)** %52, align 8
  %54 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %55 = load %struct.request.0*, %struct.request.0** %5, align 8
  %56 = bitcast %struct.request.0* %55 to %struct.request*
  %57 = call i32 %53(%struct.request_queue* %54, %struct.request* %56)
  br label %58

58:                                               ; preds = %50, %49
  %59 = load %struct.request.0*, %struct.request.0** %5, align 8
  %60 = call zeroext i16 @blk_rq_sectors(%struct.request.0* %59)
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %9, align 2
  %63 = zext i16 %62 to i32
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.request.0*, %struct.request.0** %5, align 8
  %69 = call zeroext i16 @blk_rq_pos(%struct.request.0* %68)
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67, %58
  %77 = load i32, i32* @ide_stopped, align 4
  store i32 %77, i32* %3, align 4
  br label %101

78:                                               ; preds = %67
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %94 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %78
  %97 = load i32, i32* @ATAPI_WAIT_PC, align 4
  %98 = load %struct.request.0*, %struct.request.0** %5, align 8
  %99 = getelementptr inbounds %struct.request.0, %struct.request.0* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @ide_started, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %76, %47
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @rq_data_dir(%struct.request.0*) #1

declare dso_local zeroext i16 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32, i16 zeroext) #1

declare dso_local i64 @get_disk_ro(i32) #1

declare dso_local zeroext i16 @blk_rq_sectors(%struct.request.0*) #1

declare dso_local zeroext i16 @blk_rq_pos(%struct.request.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
