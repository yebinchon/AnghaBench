; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.hbq_s* }
%struct.hbq_s = type { i32, i32, i32 }
%struct.hbq_dmabuf = type { %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.lpfc_hbq_entry = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64, %struct.hbq_dmabuf*)* @lpfc_sli_hbq_to_firmware_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_hbq_to_firmware_s3(%struct.lpfc_hba* %0, i64 %1, %struct.hbq_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hbq_dmabuf*, align 8
  %8 = alloca %struct.lpfc_hbq_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hbq_s*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hbq_dmabuf* %2, %struct.hbq_dmabuf** %7, align 8
  %11 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %12 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba* %15, i64 %16)
  store %struct.lpfc_hbq_entry* %17, %struct.lpfc_hbq_entry** %8, align 8
  %18 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %19 = icmp ne %struct.lpfc_hbq_entry* %18, null
  br i1 %19, label %20, label %93

20:                                               ; preds = %3
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = load %struct.hbq_s*, %struct.hbq_s** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %23, i64 %24
  store %struct.hbq_s* %25, %struct.hbq_s** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @putPaddrHigh(i32 %26)
  %28 = call i8* @le32_to_cpu(i8* %27)
  %29 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @putPaddrLow(i32 %32)
  %34 = call i8* @le32_to_cpu(i8* %33)
  %35 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %39 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %42 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 8
  %46 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %47 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %52 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @le32_to_cpu(i8* %55)
  %57 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %58 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %62 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @le32_to_cpu(i8* %63)
  %65 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %8, align 8
  %66 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %68 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %71 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %73 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  %87 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %88 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %91 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %90, i32 0, i32 0
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  store i32 0, i32* %4, align 4
  br label %96

93:                                               ; preds = %3
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba*, i64) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
