; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hbq_dmabuf = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_rqe = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64, %struct.hbq_dmabuf*)* @lpfc_sli_hbq_to_firmware_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_hbq_to_firmware_s4(%struct.lpfc_hba* %0, i64 %1, %struct.hbq_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hbq_dmabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_rqe, align 8
  %10 = alloca %struct.lpfc_rqe, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hbq_dmabuf* %2, %struct.hbq_dmabuf** %7, align 8
  %11 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %12 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @putPaddrLow(i32 %14)
  %16 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %9, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %18 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @putPaddrHigh(i32 %20)
  %22 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %24 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @putPaddrLow(i32 %26)
  %28 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %10, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %30 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @putPaddrHigh(i32 %32)
  %34 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @lpfc_sli4_rq_put(i32 %38, i32 %42, %struct.lpfc_rqe* %9, %struct.lpfc_rqe* %10)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %51 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %53 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @list_add_tail(i32* %54, i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %48, %46
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i32 @lpfc_sli4_rq_put(i32, i32, %struct.lpfc_rqe*, %struct.lpfc_rqe*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
