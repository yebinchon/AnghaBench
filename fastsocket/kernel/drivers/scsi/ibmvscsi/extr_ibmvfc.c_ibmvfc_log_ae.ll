; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_ae.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i64, i32 }

@IBMVFC_AE_RSCN = common dso_local global i32 0, align 4
@FCH_EVT_RSCN = common dso_local global i32 0, align 4
@IBMVFC_AE_LINKDOWN = common dso_local global i32 0, align 4
@IBMVFC_HALTED = common dso_local global i64 0, align 8
@FCH_EVT_LINKDOWN = common dso_local global i32 0, align 4
@IBMVFC_AE_LINKUP = common dso_local global i32 0, align 4
@IBMVFC_INITIALIZING = common dso_local global i64 0, align 8
@FCH_EVT_LINKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*, i32)* @ibmvfc_log_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_log_ae(%struct.ibmvfc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IBMVFC_AE_RSCN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (...) @fc_get_event_number()
  %14 = load i32, i32* @FCH_EVT_RSCN, align 4
  %15 = call i32 @fc_host_post_event(i32 %12, i32 %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IBMVFC_AE_LINKDOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IBMVFC_HALTED, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %29 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (...) @fc_get_event_number()
  %32 = load i32, i32* @FCH_EVT_LINKDOWN, align 4
  %33 = call i32 @fc_host_post_event(i32 %30, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %27, %21, %16
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IBMVFC_AE_LINKUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IBMVFC_INITIALIZING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (...) @fc_get_event_number()
  %50 = load i32, i32* @FCH_EVT_LINKUP, align 4
  %51 = call i32 @fc_host_post_event(i32 %48, i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %45, %39, %34
  ret void
}

declare dso_local i32 @fc_host_post_event(i32, i32, i32, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
