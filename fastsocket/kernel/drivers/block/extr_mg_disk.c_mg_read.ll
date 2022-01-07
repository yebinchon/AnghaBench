; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mg_host* }
%struct.mg_host = type { i64 }

@MG_CMD_RD = common dso_local global i32 0, align 4
@MG_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"requested %d sects (from %ld), buffer=0x%p\0A\00", align 1
@ATA_DRQ = common dso_local global i32 0, align 4
@MG_TMAX_WAIT_RD_DRQ = common dso_local global i32 0, align 4
@MG_CMD_RD_CONF = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@MG_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @mg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_read(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.mg_host*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  store %struct.mg_host* %8, %struct.mg_host** %3, align 8
  %9 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = call i32 @blk_rq_pos(%struct.request* %10)
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = call i32 @blk_rq_sectors(%struct.request* %12)
  %14 = load i32, i32* @MG_CMD_RD, align 4
  %15 = call i64 @mg_out(%struct.mg_host* %9, i32 %11, i32 %13, i32 %14, i32* null)
  %16 = load i64, i64* @MG_ERR_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %20 = call i32 @mg_bad_rw_intr(%struct.mg_host* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = call i32 @blk_rq_sectors(%struct.request* %22)
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = call i32 @blk_rq_pos(%struct.request* %24)
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MG_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %51, %21
  %31 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %32 = load i32, i32* @ATA_DRQ, align 4
  %33 = load i32, i32* @MG_TMAX_WAIT_RD_DRQ, align 4
  %34 = call i64 @mg_wait(%struct.mg_host* %31, i32 %32, i32 %33)
  %35 = load i64, i64* @MG_ERR_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %39 = call i32 @mg_bad_rw_intr(%struct.mg_host* %38)
  br label %56

40:                                               ; preds = %30
  %41 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = call i32 @mg_read_one(%struct.mg_host* %41, %struct.request* %42)
  %44 = load i32, i32* @MG_CMD_RD_CONF, align 4
  %45 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %46 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MG_REG_COMMAND, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %53 = load i32, i32* @MG_SECTOR_SIZE, align 4
  %54 = call i64 @mg_end_request(%struct.mg_host* %52, i32 0, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %30, label %56

56:                                               ; preds = %37, %51
  ret void
}

declare dso_local i64 @mg_out(%struct.mg_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @mg_bad_rw_intr(%struct.mg_host*) #1

declare dso_local i32 @MG_DBG(i8*, i32, i32, i32) #1

declare dso_local i64 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mg_read_one(%struct.mg_host*, %struct.request*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @mg_end_request(%struct.mg_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
