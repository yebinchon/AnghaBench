; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.lpfc_iocbq** }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"0317 iotag x%x is out off range: max iotag x%x wd0 x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_iocbq_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  %10 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %11 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %17, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %27, i64 %28
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %29, align 8
  store %struct.lpfc_iocbq* %30, %struct.lpfc_iocbq** %8, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 2
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %23
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_iocbq* %48, %struct.lpfc_iocbq** %4, align 8
  br label %64

49:                                               ; preds = %16, %3
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_SLI, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 1
  %60 = bitcast %struct.TYPE_4__* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %57, i32 %62)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %4, align 8
  br label %64

64:                                               ; preds = %49, %47
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  ret %struct.lpfc_iocbq* %65
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
