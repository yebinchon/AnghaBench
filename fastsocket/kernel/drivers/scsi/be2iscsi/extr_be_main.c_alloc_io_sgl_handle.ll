; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_io_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_io_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgl_handle = type { i32 }
%struct.beiscsi_hba = type { i64, %struct.TYPE_2__, i64, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BM_%d : In alloc_io_sgl_handle, io_sgl_alloc_index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sgl_handle* (%struct.beiscsi_hba*)* @alloc_io_sgl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.sgl_handle*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %4 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @beiscsi_log(%struct.beiscsi_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 3
  %18 = load %struct.sgl_handle**, %struct.sgl_handle*** %17, align 8
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %18, i64 %21
  %23 = load %struct.sgl_handle*, %struct.sgl_handle** %22, align 8
  store %struct.sgl_handle* %23, %struct.sgl_handle** %3, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 3
  %26 = load %struct.sgl_handle**, %struct.sgl_handle*** %25, align 8
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %26, i64 %29
  store %struct.sgl_handle* null, %struct.sgl_handle** %30, align 8
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %8
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %53

48:                                               ; preds = %8
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %45
  br label %55

54:                                               ; preds = %1
  store %struct.sgl_handle* null, %struct.sgl_handle** %3, align 8
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.sgl_handle*, %struct.sgl_handle** %3, align 8
  ret %struct.sgl_handle* %56
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
