; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_mgmt_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_mgmt_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgl_handle = type { i32 }
%struct.beiscsi_hba = type { i64, %struct.TYPE_2__, i64, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BM_%d : mgmt_sgl_alloc_index=%d=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sgl_handle* (%struct.beiscsi_hba*)* @alloc_mgmt_sgl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.sgl_handle*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %4 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %1
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 3
  %11 = load %struct.sgl_handle**, %struct.sgl_handle*** %10, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %11, i64 %14
  %16 = load %struct.sgl_handle*, %struct.sgl_handle** %15, align 8
  store %struct.sgl_handle* %16, %struct.sgl_handle** %3, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 3
  %19 = load %struct.sgl_handle**, %struct.sgl_handle*** %18, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %19, i64 %22
  store %struct.sgl_handle* null, %struct.sgl_handle** %23, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @beiscsi_log(%struct.beiscsi_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %44, %48
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %40, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %8
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %61

56:                                               ; preds = %8
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %58 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %53
  br label %63

62:                                               ; preds = %1
  store %struct.sgl_handle* null, %struct.sgl_handle** %3, align 8
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.sgl_handle*, %struct.sgl_handle** %3, align 8
  ret %struct.sgl_handle* %64
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
