; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_mbox_sys_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_mbox_sys_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, i64 }

@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_mbox_sys_shutdown(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_sli*, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 1
  store %struct.lpfc_sli* %8, %struct.lpfc_sli** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @msleep(i32 100)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = call i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba* %14)
  br label %81

16:                                               ; preds = %2
  %17 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %27 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %16
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %44, i64 %48)
  %50 = mul nsw i32 %49, 1000
  %51 = call i64 @msecs_to_jiffies(i32 %50)
  %52 = load i32, i32* @jiffies, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %43, %37
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  br label %59

59:                                               ; preds = %72, %55
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = call i32 @msleep(i32 2)
  %67 = load i32, i32* @jiffies, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @time_after(i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %73

72:                                               ; preds = %65
  br label %59

73:                                               ; preds = %71, %59
  br label %78

74:                                               ; preds = %16
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_irq(i32* %76)
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = call i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba* %79)
  br label %81

81:                                               ; preds = %78, %12
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
