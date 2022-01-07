; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_write_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_write_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { {}*, i32, i64, i32, %struct.request* }
%struct.request = type { i32 }

@MG_REG_STATUS = common dso_local global i64 0, align 8
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mg_write_intr\00", align 1
@MG_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"sector %ld, remaining=%ld, buffer=0x%p\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MG_CMD_WR_CONF = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_host*)* @mg_write_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_write_intr(%struct.mg_host* %0) #0 {
  %2 = alloca %struct.mg_host*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mg_host* %0, %struct.mg_host** %2, align 8
  %6 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %7 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %6, i32 0, i32 4
  %8 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %8, %struct.request** %3, align 8
  br label %9

9:                                                ; preds = %1
  %10 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %11 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MG_REG_STATUS, align 8
  %14 = add i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATA_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %37

21:                                               ; preds = %9
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MG_READY_OK(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %37

26:                                               ; preds = %21
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = call i32 @blk_rq_sectors(%struct.request* %27)
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ATA_DRQ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %26
  br label %47

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25, %20
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %40 = call i32 @mg_dump_status(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.mg_host* %39)
  %41 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %42 = call i32 @mg_bad_rw_intr(%struct.mg_host* %41)
  %43 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %44 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mg_request(i32 %45)
  br label %90

47:                                               ; preds = %35
  %48 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %49 = load i32, i32* @MG_SECTOR_SIZE, align 4
  %50 = call i32 @mg_end_request(%struct.mg_host* %48, i32 0, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = call i32 @mg_write_one(%struct.mg_host* %53, %struct.request* %54)
  %56 = load %struct.request*, %struct.request** %3, align 8
  %57 = call i32 @blk_rq_pos(%struct.request* %56)
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = call i32 @blk_rq_sectors(%struct.request* %58)
  %60 = load %struct.request*, %struct.request** %3, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MG_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i32 %62)
  %64 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %65 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to void (%struct.mg_host*)**
  store void (%struct.mg_host*)* @mg_write_intr, void (%struct.mg_host*)** %66, align 8
  %67 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %68 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %67, i32 0, i32 3
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 3, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @mod_timer(i32* %68, i64 %73)
  br label %75

75:                                               ; preds = %52, %47
  %76 = load i32, i32* @MG_CMD_WR_CONF, align 4
  %77 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %78 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MG_REG_COMMAND, align 8
  %81 = add i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %75
  %86 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %87 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mg_request(i32 %88)
  br label %90

90:                                               ; preds = %37, %85, %75
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @MG_READY_OK(i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @mg_dump_status(i8*, i32, %struct.mg_host*) #1

declare dso_local i32 @mg_bad_rw_intr(%struct.mg_host*) #1

declare dso_local i32 @mg_request(i32) #1

declare dso_local i32 @mg_end_request(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mg_write_one(%struct.mg_host*, %struct.request*) #1

declare dso_local i32 @MG_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
