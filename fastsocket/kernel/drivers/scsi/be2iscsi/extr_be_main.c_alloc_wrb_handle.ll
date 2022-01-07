; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_wrb_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_alloc_wrb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrb_handle = type { i32, i32 }
%struct.beiscsi_hba = type { %struct.TYPE_2__, %struct.hwi_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32, i64, %struct.wrb_handle** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwi_wrb_context*, align 8
  %6 = alloca %struct.hwi_controller*, align 8
  %7 = alloca %struct.wrb_handle*, align 8
  %8 = alloca %struct.wrb_handle*, align 8
  %9 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BE_GET_CRI_FROM_CID(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 1
  %14 = load %struct.hwi_controller*, %struct.hwi_controller** %13, align 8
  store %struct.hwi_controller* %14, %struct.hwi_controller** %6, align 8
  %15 = load %struct.hwi_controller*, %struct.hwi_controller** %6, align 8
  %16 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %15, i32 0, i32 0
  %17 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %17, i64 %18
  store %struct.hwi_wrb_context* %19, %struct.hwi_wrb_context** %5, align 8
  %20 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %21 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %26 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %25, i32 0, i32 2
  %27 = load %struct.wrb_handle**, %struct.wrb_handle*** %26, align 8
  %28 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %29 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %27, i64 %30
  %32 = load %struct.wrb_handle*, %struct.wrb_handle** %31, align 8
  store %struct.wrb_handle* %32, %struct.wrb_handle** %7, align 8
  %33 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %34 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %38 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %24
  %48 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %49 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %55

50:                                               ; preds = %24
  %51 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %52 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %57 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %56, i32 0, i32 2
  %58 = load %struct.wrb_handle**, %struct.wrb_handle*** %57, align 8
  %59 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %60 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %58, i64 %61
  %63 = load %struct.wrb_handle*, %struct.wrb_handle** %62, align 8
  store %struct.wrb_handle* %63, %struct.wrb_handle** %8, align 8
  %64 = load %struct.wrb_handle*, %struct.wrb_handle** %8, align 8
  %65 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  %68 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %70

69:                                               ; preds = %2
  store %struct.wrb_handle* null, %struct.wrb_handle** %7, align 8
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.wrb_handle*, %struct.wrb_handle** %7, align 8
  ret %struct.wrb_handle* %71
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
