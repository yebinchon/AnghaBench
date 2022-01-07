; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_bsg_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_bsg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i64, i32 }
%struct.ibmvfc_host = type { i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ibmvfc_tmf }
%struct.ibmvfc_tmf = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@IBMVFC_ACTIVE = common dso_local global i64 0, align 8
@ibmvfc_bsg_timeout_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_TMF_MAD = common dso_local global i32 0, align 4
@IBMVFC_PASSTHRU_CANCEL_KEY = common dso_local global i32 0, align 4
@IBMVFC_INTERNAL_CANCEL_KEY = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to send cancel event. rc=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Cancelling passthru command to port id 0x%lx\0A\00", align 1
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @ibmvfc_bsg_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_bsg_timeout(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibmvfc_event*, align 8
  %7 = alloca %struct.ibmvfc_tmf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ibmvfc_host* @shost_priv(i32 %12)
  store %struct.ibmvfc_host* %13, %struct.ibmvfc_host** %4, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @ENTER, align 4
  %18 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32 %22, i64 %23)
  %25 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IBMVFC_ACTIVE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29, %1
  %36 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %37 = call i32 @__ibmvfc_reset_host(%struct.ibmvfc_host* %36)
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  store i32 0, i32* %2, align 4
  br label %110

45:                                               ; preds = %29
  %46 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %49 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %48)
  store %struct.ibmvfc_event* %49, %struct.ibmvfc_event** %6, align 8
  %50 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %51 = load i32, i32* @ibmvfc_bsg_timeout_done, align 4
  %52 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %53 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %50, i32 %51, i32 %52)
  %54 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %55 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.ibmvfc_tmf* %56, %struct.ibmvfc_tmf** %7, align 8
  %57 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %58 = call i32 @memset(%struct.ibmvfc_tmf* %57, i32 0, i32 32)
  %59 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @IBMVFC_TMF_MAD, align 4
  %63 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 32, i32* %68, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @IBMVFC_PASSTHRU_CANCEL_KEY, align 4
  %73 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @IBMVFC_INTERNAL_CANCEL_KEY, align 4
  %76 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %77 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %79 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %80 = load i32, i32* @default_timeout, align 4
  %81 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %78, %struct.ibmvfc_host* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %45
  %85 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %88 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %100

94:                                               ; preds = %45
  %95 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @dev_info(i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %94, %84
  %101 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %102 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32 %105, i64 %106)
  %108 = load i32, i32* @LEAVE, align 4
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %100, %35
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__ibmvfc_reset_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_tmf*, i32, i32) #1

declare dso_local i32 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
