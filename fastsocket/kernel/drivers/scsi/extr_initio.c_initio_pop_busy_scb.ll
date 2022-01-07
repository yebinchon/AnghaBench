; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_pop_busy_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_pop_busy_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_ctrl_blk = type { i64, i64, %struct.scsi_ctrl_blk* }
%struct.initio_host = type { %struct.TYPE_2__*, i32*, i32*, %struct.scsi_ctrl_blk* }
%struct.TYPE_2__ = type { i32 }

@TCF_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_ctrl_blk* (%struct.initio_host*)* @initio_pop_busy_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %4 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %5 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %4, i32 0, i32 3
  %6 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %6, %struct.scsi_ctrl_blk** %3, align 8
  %7 = icmp ne %struct.scsi_ctrl_blk* %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %9, i32 0, i32 2
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %10, align 8
  %12 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 3
  store %struct.scsi_ctrl_blk* %11, %struct.scsi_ctrl_blk** %13, align 8
  %14 = icmp eq %struct.scsi_ctrl_blk* %11, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %17 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %19, i32 0, i32 2
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %20, align 8
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %27 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %48

35:                                               ; preds = %18
  %36 = load i32, i32* @TCF_BUSY, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %39 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %37
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %35, %25
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  ret %struct.scsi_ctrl_blk* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
