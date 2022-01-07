; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sst25l_flash = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.spi_transfer = type { i8*, i32, i8* }
%struct.spi_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SST25L_CMD_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8*)* @sst25l_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sst25l_flash*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = call %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info* %17)
  store %struct.sst25l_flash* %18, %struct.sst25l_flash** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %108

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %27 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %108

34:                                               ; preds = %22
  %35 = load i64*, i64** %10, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64*, i64** %10, align 8
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = call i32 @spi_message_init(%struct.spi_message* %14)
  %41 = bitcast [2 x %struct.spi_transfer]* %13 to %struct.spi_transfer**
  %42 = call i32 @memset(%struct.spi_transfer** %41, i32 0, i32 48)
  %43 = load i8, i8* @SST25L_CMD_READ, align 1
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load i64, i64* %8, align 8
  %46 = lshr i64 %45, 16
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  store i8 %47, i8* %48, align 1
  %49 = load i64, i64* %8, align 8
  %50 = lshr i64 %49, 8
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  store i8 %51, i8* %52, align 1
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %57 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 16
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 1
  store i32 4, i32* %60, align 8
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %62 = call i32 @spi_message_add_tail(%struct.spi_transfer* %61, %struct.spi_message* %14)
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %71 = call i32 @spi_message_add_tail(%struct.spi_transfer* %70, %struct.spi_message* %14)
  %72 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %73 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %76 = call i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %39
  %80 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %81 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %6, align 4
  br label %108

84:                                               ; preds = %39
  %85 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %86 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @spi_sync(i32 %87, %struct.spi_message* %14)
  %89 = load i64*, i64** %10, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ugt i64 %94, 4
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 4
  %101 = load i64*, i64** %10, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %100
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %96, %91, %84
  %105 = load %struct.sst25l_flash*, %struct.sst25l_flash** %12, align 8
  %106 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %79, %31, %21
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst25l_wait_till_ready(%struct.sst25l_flash*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
