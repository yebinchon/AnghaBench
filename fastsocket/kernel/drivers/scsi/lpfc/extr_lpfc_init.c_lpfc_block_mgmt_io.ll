; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_block_mgmt_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_block_mgmt_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MBX_HEARTBEAT = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"2813 Mgmt IO is Blocked %x - mbox cmd %x still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32)* @lpfc_block_mgmt_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_block_mgmt_io(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MBX_HEARTBEAT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %91

27:                                               ; preds = %2
  %28 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = load i32, i32* @jiffies, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %27
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %52, %struct.TYPE_8__* %56)
  %58 = mul nsw i32 %57, 1000
  %59 = call i64 @msecs_to_jiffies(i32 %58)
  %60 = load i32, i32* @jiffies, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %43, %27
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 1
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %90, %63
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = call i32 @msleep(i32 2)
  %76 = load i32, i32* @jiffies, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @time_after(i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = load i32, i32* @KERN_ERR, align 4
  %83 = load i32, i32* @LOG_SLI, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  br label %91

90:                                               ; preds = %74
  br label %68

91:                                               ; preds = %26, %80, %68
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, %struct.TYPE_8__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
