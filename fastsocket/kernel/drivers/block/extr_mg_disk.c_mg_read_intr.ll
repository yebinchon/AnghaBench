; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_read_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_read_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { {}*, i32, i32, i64, %struct.request* }
%struct.request = type { i32 }

@MG_REG_STATUS = common dso_local global i64 0, align 8
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mg_read_intr\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"sector %ld, remaining=%ld, buffer=0x%p\0A\00", align 1
@MG_CMD_RD_CONF = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@MG_SECTOR_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_host*)* @mg_read_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_read_intr(%struct.mg_host* %0) #0 {
  %2 = alloca %struct.mg_host*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.mg_host* %0, %struct.mg_host** %2, align 8
  %5 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %6 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %5, i32 0, i32 4
  %7 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %7, %struct.request** %3, align 8
  br label %8

8:                                                ; preds = %1
  %9 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %10 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MG_REG_STATUS, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ATA_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %32

20:                                               ; preds = %8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MG_READY_OK(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ATA_DRQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %42

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %24, %19
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %35 = call i32 @mg_dump_status(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.mg_host* %34)
  %36 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %37 = call i32 @mg_bad_rw_intr(%struct.mg_host* %36)
  %38 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %39 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mg_request(i32 %40)
  br label %83

42:                                               ; preds = %30
  %43 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %44 = load %struct.request*, %struct.request** %3, align 8
  %45 = call i32 @mg_read_one(%struct.mg_host* %43, %struct.request* %44)
  %46 = load %struct.request*, %struct.request** %3, align 8
  %47 = call i32 @blk_rq_pos(%struct.request* %46)
  %48 = load %struct.request*, %struct.request** %3, align 8
  %49 = call i64 @blk_rq_sectors(%struct.request* %48)
  %50 = sub nsw i64 %49, 1
  %51 = load %struct.request*, %struct.request** %3, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MG_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %50, i32 %53)
  %55 = load i32, i32* @MG_CMD_RD_CONF, align 4
  %56 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %57 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MG_REG_COMMAND, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @outb(i32 %55, i64 %60)
  %62 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %63 = load i32, i32* @MG_SECTOR_SIZE, align 4
  %64 = call i64 @mg_end_request(%struct.mg_host* %62, i32 0, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %42
  %67 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %68 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to void (%struct.mg_host*)**
  store void (%struct.mg_host*)* @mg_read_intr, void (%struct.mg_host*)** %69, align 8
  %70 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %71 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %70, i32 0, i32 2
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i32, i32* @HZ, align 4
  %74 = mul nsw i32 3, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = call i32 @mod_timer(i32* %71, i64 %76)
  br label %83

78:                                               ; preds = %42
  %79 = load %struct.mg_host*, %struct.mg_host** %2, align 8
  %80 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mg_request(i32 %81)
  br label %83

83:                                               ; preds = %32, %78, %66
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @MG_READY_OK(i32) #1

declare dso_local i32 @mg_dump_status(i8*, i32, %struct.mg_host*) #1

declare dso_local i32 @mg_bad_rw_intr(%struct.mg_host*) #1

declare dso_local i32 @mg_request(i32) #1

declare dso_local i32 @mg_read_one(%struct.mg_host*, %struct.request*) #1

declare dso_local i32 @MG_DBG(i8*, i32, i64, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @mg_end_request(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
