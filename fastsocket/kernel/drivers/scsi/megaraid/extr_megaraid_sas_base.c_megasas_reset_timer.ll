; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_reset_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_reset_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.megasas_instance = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@MEGASAS_DEFAULT_CMD_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BLK_EH_NOT_HANDLED = common dso_local global i32 0, align 4
@MEGASAS_FW_BUSY = common dso_local global i32 0, align 4
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @megasas_reset_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_reset_timer(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @MEGASAS_DEFAULT_CMD_TIMEOUT, align 4
  %11 = mul nsw i32 %10, 2
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %9, %14
  %16 = call i64 @time_after(i32 %6, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BLK_EH_NOT_HANDLED, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.megasas_instance*
  store %struct.megasas_instance* %28, %struct.megasas_instance** %4, align 8
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MEGASAS_FW_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %20
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_lock_irqsave(i32 %40, i64 %41)
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @MEGASAS_FW_BUSY, align 4
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %55 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %35, %20
  %66 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
