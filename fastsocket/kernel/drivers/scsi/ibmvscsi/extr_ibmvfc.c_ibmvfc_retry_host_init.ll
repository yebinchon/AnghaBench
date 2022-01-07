; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_retry_host_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_retry_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i64, i32, i64, i32, i32 }

@IBMVFC_HOST_ACTION_INIT_WAIT = common dso_local global i64 0, align 8
@IBMVFC_MAX_HOST_INIT_RETRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Host initialization retries exceeded. Taking adapter offline\0A\00", align 1
@IBMVFC_HOST_OFFLINE = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_host*)* @ibmvfc_retry_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_retry_host_init(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IBMVFC_HOST_ACTION_INIT_WAIT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @IBMVFC_MAX_HOST_INIT_RETRIES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %24 = load i32, i32* @IBMVFC_HOST_OFFLINE, align 4
  %25 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %23, i32 %24)
  br label %40

26:                                               ; preds = %9
  %27 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IBMVFC_MAX_HOST_INIT_RETRIES, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %34 = call i32 @__ibmvfc_reset_host(%struct.ibmvfc_host* %33)
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %37 = load i32, i32* @IBMVFC_HOST_ACTION_INIT, align 4
  %38 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %36, i32 %37)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %42, i32 0, i32 3
  %44 = call i32 @wake_up(i32* %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @__ibmvfc_reset_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
