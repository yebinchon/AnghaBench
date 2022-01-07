; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup_by_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32, i32 }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.lpfc_iocbq** }
%struct.lpfc_sli_ring = type { i32 }

@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"0372 iotag x%x is out off range: max iotag (x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i64)* @lpfc_sli_iocbq_lookup_by_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i64 %2) #0 {
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ule i64 %12, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, i64 %23
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  store %struct.lpfc_iocbq* %25, %struct.lpfc_iocbq** %8, align 8
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 1
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %4, align 8
  br label %54

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43, %11, %3
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @LOG_SLI, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %52)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %4, align 8
  br label %54

54:                                               ; preds = %44, %32
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  ret %struct.lpfc_iocbq* %55
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
