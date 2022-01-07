; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hwi_wrb_context = type { i64, i32, %struct.wrb_handle** }
%struct.wrb_handle = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"BM_%d : FREE WRB: pwrb_handle=%p free_index=0x%xwrb_handles_available=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, %struct.hwi_wrb_context*, %struct.wrb_handle*)* @free_wrb_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_wrb_handle(%struct.beiscsi_hba* %0, %struct.hwi_wrb_context* %1, %struct.wrb_handle* %2) #0 {
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.hwi_wrb_context*, align 8
  %6 = alloca %struct.wrb_handle*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.hwi_wrb_context* %1, %struct.hwi_wrb_context** %5, align 8
  store %struct.wrb_handle* %2, %struct.wrb_handle** %6, align 8
  %7 = load %struct.wrb_handle*, %struct.wrb_handle** %6, align 8
  %8 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %9 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %8, i32 0, i32 2
  %10 = load %struct.wrb_handle**, %struct.wrb_handle*** %9, align 8
  %11 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %12 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %10, i64 %13
  store %struct.wrb_handle* %7, %struct.wrb_handle** %14, align 8
  %15 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %16 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %20 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %31 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %34 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %41 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.wrb_handle*, %struct.wrb_handle** %6, align 8
  %44 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %45 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %49 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @beiscsi_log(%struct.beiscsi_hba* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), %struct.wrb_handle* %43, i32 %47, i32 %50)
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, %struct.wrb_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
