; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_queue_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_queue_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }

@DID_OK = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.scsi_cmnd*)* @ahc_linux_queue_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_queue_cmd_complete(%struct.ahc_softc* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = call i32 @ahc_cmd_get_transaction_status(%struct.scsi_cmnd* %6)
  switch i32 %7, label %28 [
    i32 139, label %8
    i32 141, label %8
    i32 134, label %8
    i32 142, label %10
    i32 150, label %12
    i32 138, label %14
    i32 145, label %14
    i32 133, label %16
    i32 135, label %18
    i32 151, label %18
    i32 130, label %20
    i32 148, label %22
    i32 131, label %24
    i32 140, label %24
    i32 152, label %24
    i32 146, label %24
    i32 147, label %24
    i32 129, label %24
    i32 132, label %24
    i32 149, label %24
    i32 144, label %24
    i32 137, label %24
    i32 128, label %24
    i32 136, label %24
    i32 143, label %26
  ]

8:                                                ; preds = %2, %2, %2
  %9 = load i32, i32* @DID_OK, align 4
  store i32 %9, i32* %5, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load i32, i32* @DID_ABORT, align 4
  store i32 %11, i32* %5, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @DID_BUS_BUSY, align 4
  store i32 %13, i32* %5, align 4
  br label %30

14:                                               ; preds = %2, %2
  %15 = load i32, i32* @DID_BAD_TARGET, align 4
  store i32 %15, i32* %5, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @DID_RESET, align 4
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @DID_PARITY, align 4
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %25 = load i32, i32* @DID_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @DID_REQUEUE, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @DID_ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ahc_cmd_set_transaction_status(%struct.scsi_cmnd* %31, i32 %32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = call i32 %36(%struct.scsi_cmnd* %37)
  ret void
}

declare dso_local i32 @ahc_cmd_get_transaction_status(%struct.scsi_cmnd*) #1

declare dso_local i32 @ahc_cmd_set_transaction_status(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
