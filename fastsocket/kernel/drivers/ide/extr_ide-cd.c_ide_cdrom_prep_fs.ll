; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64*, i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@GPCMD_READ_10 = common dso_local global i64 0, align 8
@GPCMD_WRITE_10 = common dso_local global i64 0, align 8
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @ide_cdrom_prep_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cdrom_prep_fs(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = call i32 @queue_logical_block_size(%struct.request_queue* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call i64 @blk_rq_pos(%struct.request* %10)
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 9
  %14 = sext i32 %13 to i64
  %15 = sdiv i64 %11, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = call i32 @blk_rq_sectors(%struct.request* %16)
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 9
  %20 = sdiv i32 %17, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* @BLK_MAX_CDB, align 4
  %26 = call i32 @memset(i64* %24, i32 0, i32 %25)
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i64 @rq_data_dir(%struct.request* %27)
  %29 = load i64, i64* @READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i64, i64* @GPCMD_READ_10, align 8
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %32, i64* %36, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load i64, i64* @GPCMD_WRITE_10, align 8
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i64, i64* %6, align 8
  %45 = ashr i64 %44, 24
  %46 = and i64 %45, 255
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  store i64 %46, i64* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = ashr i64 %51, 16
  %53 = and i64 %52, 255
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  store i64 %53, i64* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = ashr i64 %58, 8
  %60 = and i64 %59, 255
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 4
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = and i64 %65, 255
  %67 = load %struct.request*, %struct.request** %4, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 5
  store i64 %66, i64* %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = lshr i64 %71, 8
  %73 = and i64 %72, 255
  %74 = load %struct.request*, %struct.request** %4, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 7
  store i64 %73, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = and i64 %78, 255
  %80 = load %struct.request*, %struct.request** %4, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 8
  store i64 %79, i64* %83, align 8
  %84 = load %struct.request*, %struct.request** %4, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 1
  store i32 10, i32* %85, align 8
  %86 = load i32, i32* @BLKPREP_OK, align 4
  ret i32 %86
}

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
