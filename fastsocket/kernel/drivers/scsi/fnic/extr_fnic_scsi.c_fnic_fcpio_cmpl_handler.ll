; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.fcpio_fw_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fnic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"firmware completion type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_cmpl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_fcpio_cmpl_handler(%struct.vnic_dev* %0, i32 %1, %struct.fcpio_fw_req* %2) #0 {
  %4 = alloca %struct.vnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fcpio_fw_req*, align 8
  %7 = alloca %struct.fnic*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fcpio_fw_req* %2, %struct.fcpio_fw_req** %6, align 8
  %8 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %9 = call %struct.fnic* @vnic_dev_priv(%struct.vnic_dev* %8)
  store %struct.fnic* %9, %struct.fnic** %7, align 8
  %10 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %11 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %35 [
    i32 133, label %14
    i32 130, label %19
    i32 129, label %23
    i32 131, label %27
    i32 132, label %27
    i32 128, label %31
  ]

14:                                               ; preds = %3
  %15 = load %struct.fnic*, %struct.fnic** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %18 = call i32 @fnic_fcpio_ack_handler(%struct.fnic* %15, i32 %16, %struct.fcpio_fw_req* %17)
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.fnic*, %struct.fnic** %7, align 8
  %21 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %22 = call i32 @fnic_fcpio_icmnd_cmpl_handler(%struct.fnic* %20, %struct.fcpio_fw_req* %21)
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.fnic*, %struct.fnic** %7, align 8
  %25 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %26 = call i32 @fnic_fcpio_itmf_cmpl_handler(%struct.fnic* %24, %struct.fcpio_fw_req* %25)
  br label %47

27:                                               ; preds = %3, %3
  %28 = load %struct.fnic*, %struct.fnic** %7, align 8
  %29 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %30 = call i32 @fnic_fcpio_flogi_reg_cmpl_handler(%struct.fnic* %28, %struct.fcpio_fw_req* %29)
  br label %47

31:                                               ; preds = %3
  %32 = load %struct.fnic*, %struct.fnic** %7, align 8
  %33 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %34 = call i32 @fnic_fcpio_fw_reset_cmpl_handler(%struct.fnic* %32, %struct.fcpio_fw_req* %33)
  br label %47

35:                                               ; preds = %3
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.fnic*, %struct.fnic** %7, align 8
  %38 = getelementptr inbounds %struct.fnic, %struct.fnic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %43 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FNIC_SCSI_DBG(i32 %36, i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %35, %31, %27, %23, %19, %14
  ret i32 0
}

declare dso_local %struct.fnic* @vnic_dev_priv(%struct.vnic_dev*) #1

declare dso_local i32 @fnic_fcpio_ack_handler(%struct.fnic*, i32, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_icmnd_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_itmf_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_flogi_reg_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_fw_reset_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
