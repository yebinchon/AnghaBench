; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mg_host* }
%struct.mg_host = type { i64 }

@MG_CMD_WR = common dso_local global i32 0, align 4
@MG_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"requested %d sects (from %ld), buffer=0x%p\0A\00", align 1
@ATA_DRQ = common dso_local global i32 0, align 4
@MG_TMAX_WAIT_WR_DRQ = common dso_local global i32 0, align 4
@MG_CMD_WR_CONF = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@MG_STAT_READY = common dso_local global i32 0, align 4
@MG_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @mg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_write(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.mg_host*, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mg_host*, %struct.mg_host** %8, align 8
  store %struct.mg_host* %9, %struct.mg_host** %3, align 8
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = call i32 @blk_rq_sectors(%struct.request* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = call i32 @blk_rq_pos(%struct.request* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MG_CMD_WR, align 4
  %17 = call i64 @mg_out(%struct.mg_host* %12, i32 %14, i32 %15, i32 %16, i32* null)
  %18 = load i64, i64* @MG_ERR_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %22 = call i32 @mg_bad_rw_intr(%struct.mg_host* %21)
  br label %83

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = call i32 @blk_rq_pos(%struct.request* %25)
  %27 = load %struct.request*, %struct.request** %2, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MG_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %29)
  %31 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %32 = load i32, i32* @ATA_DRQ, align 4
  %33 = load i32, i32* @MG_TMAX_WAIT_WR_DRQ, align 4
  %34 = call i64 @mg_wait(%struct.mg_host* %31, i32 %32, i32 %33)
  %35 = load i64, i64* @MG_ERR_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %39 = call i32 @mg_bad_rw_intr(%struct.mg_host* %38)
  br label %83

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %78, %40
  %42 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %43 = load %struct.request*, %struct.request** %2, align 8
  %44 = call i32 @mg_write_one(%struct.mg_host* %42, %struct.request* %43)
  %45 = load i32, i32* @MG_CMD_WR_CONF, align 4
  %46 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %47 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MG_REG_COMMAND, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @outb(i32 %45, i64 %50)
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %58 = load i32, i32* @ATA_DRQ, align 4
  %59 = load i32, i32* @MG_TMAX_WAIT_WR_DRQ, align 4
  %60 = call i64 @mg_wait(%struct.mg_host* %57, i32 %58, i32 %59)
  %61 = load i64, i64* @MG_ERR_NONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %65 = call i32 @mg_bad_rw_intr(%struct.mg_host* %64)
  br label %83

66:                                               ; preds = %56, %41
  %67 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %68 = load i32, i32* @MG_STAT_READY, align 4
  %69 = load i32, i32* @MG_TMAX_WAIT_WR_DRQ, align 4
  %70 = call i64 @mg_wait(%struct.mg_host* %67, i32 %68, i32 %69)
  %71 = load i64, i64* @MG_ERR_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %75 = call i32 @mg_bad_rw_intr(%struct.mg_host* %74)
  br label %83

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %80 = load i32, i32* @MG_SECTOR_SIZE, align 4
  %81 = call i64 @mg_end_request(%struct.mg_host* %79, i32 0, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %41, label %83

83:                                               ; preds = %20, %37, %63, %73, %78
  ret void
}

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @mg_out(%struct.mg_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @mg_bad_rw_intr(%struct.mg_host*) #1

declare dso_local i32 @MG_DBG(i8*, i32, i32, i32) #1

declare dso_local i64 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mg_write_one(%struct.mg_host*, %struct.request*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @mg_end_request(%struct.mg_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
