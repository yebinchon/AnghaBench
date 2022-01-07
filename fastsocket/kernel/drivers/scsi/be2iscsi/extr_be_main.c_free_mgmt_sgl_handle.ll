; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_mgmt_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_mgmt_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, %struct.TYPE_2__, i32, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sgl_handle = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BM_%d : In  free_mgmt_sgl_handle,eh_sgl_free_index=%d\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"BM_%d : Double Free in eh SGL ,eh_sgl_free_index=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mgmt_sgl_handle(%struct.beiscsi_hba* %0, %struct.sgl_handle* %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.sgl_handle*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.sgl_handle* %1, %struct.sgl_handle** %4, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = load i32, i32* @KERN_INFO, align 4
  %7 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @beiscsi_log(%struct.beiscsi_hba* %5, i32 %6, i32 %7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 3
  %14 = load %struct.sgl_handle**, %struct.sgl_handle*** %13, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %14, i64 %17
  %19 = load %struct.sgl_handle*, %struct.sgl_handle** %18, align 8
  %20 = icmp ne %struct.sgl_handle* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = load i32, i32* @KERN_WARNING, align 4
  %24 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @beiscsi_log(%struct.beiscsi_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.sgl_handle*, %struct.sgl_handle** %4, align 8
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 3
  %33 = load %struct.sgl_handle**, %struct.sgl_handle*** %32, align 8
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %33, i64 %36
  store %struct.sgl_handle* %30, %struct.sgl_handle** %37, align 8
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %48, %52
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %44, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %29
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %65

60:                                               ; preds = %29
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %62 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %21, %60, %57
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
