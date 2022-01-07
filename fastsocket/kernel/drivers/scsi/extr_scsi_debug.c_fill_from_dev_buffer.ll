; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_fill_from_dev_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_fill_from_dev_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.scsi_data_buffer = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i8*, i32)* @fill_from_dev_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_data_buffer*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call %struct.scsi_data_buffer* @scsi_in(%struct.scsi_cmnd* %10)
  store %struct.scsi_data_buffer* %11, %struct.scsi_data_buffer** %9, align 8
  %12 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %13 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %19 = call i64 @scsi_bidi_cmnd(%struct.scsi_cmnd* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @DID_ERROR, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %21, %17
  %31 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %32 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sg_copy_from_buffer(i32 %34, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %43 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %61

53:                                               ; preds = %30
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %55 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %9, align 8
  %60 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %53, %46
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %27, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.scsi_data_buffer* @scsi_in(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_bidi_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i8*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
