; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_host_end_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_host_end_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.blk_queue_tag* }
%struct.blk_queue_tag = type { i32, i32** }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SCSI_NO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*, %struct.scsi_cmnd*)* @fnic_scsi_host_end_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_scsi_host_end_tag(%struct.fnic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.blk_queue_tag*, align 8
  %6 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.fnic*, %struct.fnic** %3, align 8
  %8 = getelementptr inbounds %struct.fnic, %struct.fnic* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %12, align 8
  store %struct.blk_queue_tag* %13, %struct.blk_queue_tag** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SCSI_NO_TAG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %25 = icmp ne %struct.blk_queue_tag* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %28 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %26, %23
  %37 = phi i1 [ true, %23 ], [ %35, %26 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %41 = icmp ne %struct.blk_queue_tag* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %55

43:                                               ; preds = %36
  %44 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %45 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %52 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clear_bit(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %43, %42, %22
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
