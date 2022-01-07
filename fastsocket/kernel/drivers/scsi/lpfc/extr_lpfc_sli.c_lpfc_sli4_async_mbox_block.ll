; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_async_mbox_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_async_mbox_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, i64 }

@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_async_mbox_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_async_mbox_block(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 1
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %12 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %22, i64 %26)
  %28 = mul nsw i32 %27, 1000
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  %30 = load i64, i64* @jiffies, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  br label %36

36:                                               ; preds = %49, %32
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = call i32 @msleep(i32 2)
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %42
  br label %36

50:                                               ; preds = %48, %36
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  br label %66

66:                                               ; preds = %53, %50
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
