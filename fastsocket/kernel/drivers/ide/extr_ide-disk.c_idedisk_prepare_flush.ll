; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_idedisk_prepare_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_idedisk_prepare_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.request = type { %struct.ide_cmd*, i32 }
%struct.ide_cmd = type { %struct.request*, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH_EXT = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH = common dso_local global i32 0, align 4
@IDE_VALID_OUT_TF = common dso_local global i32 0, align 4
@IDE_VALID_DEVICE = common dso_local global i32 0, align 4
@IDE_TFLAG_DYN = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@REQ_TYPE_ATA_TASKFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @idedisk_prepare_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idedisk_prepare_flush(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.ide_cmd* @kmalloc(i32 24, i32 %10)
  store %struct.ide_cmd* %11, %struct.ide_cmd** %6, align 8
  %12 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %13 = icmp eq %struct.ide_cmd* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %17 = call i32 @memset(%struct.ide_cmd* %16, i32 0, i32 24)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ata_id_flush_ext_enabled(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %26, 268435456
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @ATA_CMD_FLUSH_EXT, align 4
  %30 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %23, %2
  %34 = load i32, i32* @ATA_CMD_FLUSH, align 4
  %35 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @IDE_VALID_OUT_TF, align 4
  %40 = load i32, i32* @IDE_VALID_DEVICE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @IDE_TFLAG_DYN, align 4
  %47 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ATA_PROT_NODATA, align 4
  %50 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @REQ_TYPE_ATA_TASKFILE, align 4
  %53 = load %struct.request*, %struct.request** %4, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %56 = load %struct.request*, %struct.request** %4, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 0
  store %struct.ide_cmd* %55, %struct.ide_cmd** %57, align 8
  %58 = load %struct.request*, %struct.request** %4, align 8
  %59 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %59, i32 0, i32 0
  store %struct.request* %58, %struct.request** %60, align 8
  ret void
}

declare dso_local %struct.ide_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.ide_cmd*, i32, i32) #1

declare dso_local i64 @ata_id_flush_ext_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
