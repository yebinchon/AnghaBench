; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_xri_exchange_busy_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_xri_exchange_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LPFC_XRI_EXCH_BUSY_WAIT_TMO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"2877 FCP XRI exchange busy wait time: %d seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"2878 ELS XRI exchange busy wait time: %d seconds.\0A\00", align 1
@LPFC_XRI_EXCH_BUSY_WAIT_T2 = common dso_local global i64 0, align 8
@LPFC_XRI_EXCH_BUSY_WAIT_T1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_xri_exchange_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @list_empty(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %63, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ true, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %72

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_TMO, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_INIT, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 1000
  %36 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_INIT, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sdiv i32 %44, 1000
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i64, i64* @LPFC_XRI_EXCH_BUSY_WAIT_T2, align 8
  %49 = call i32 @msleep(i64 %48)
  %50 = load i64, i64* @LPFC_XRI_EXCH_BUSY_WAIT_T2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %23
  %56 = load i64, i64* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 8
  %57 = call i32 @msleep(i64 %56)
  %58 = load i64, i64* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @list_empty(i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @list_empty(i32* %70)
  store i32 %71, i32* %5, align 4
  br label %14

72:                                               ; preds = %21
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
