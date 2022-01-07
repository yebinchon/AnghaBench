; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_wait_for_hba_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_wait_for_hba_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HBA_ONLINE_TOV = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4xxx_wait_for_hba_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_wait_for_hba_online(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @HBA_ONLINE_TOV, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = mul i64 %6, %7
  %9 = add i64 %5, %8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @time_before(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = call i64 @adapter_up(%struct.scsi_qla_host* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %15
  %22 = call i32 @msleep(i32 2000)
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* @QLA_ERROR, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @adapter_up(%struct.scsi_qla_host*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
