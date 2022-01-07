; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_hcam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_hcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { %struct.pmcraid_hostrcb, %struct.pmcraid_hostrcb }
%struct.pmcraid_hostrcb = type { i32* }

@PMCRAID_HCAM_CODE_LOG_DATA = common dso_local global i64 0, align 8
@PMCRAID_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@pmcraid_timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*, i64, void (%struct.pmcraid_cmd*)*)* @pmcraid_cancel_hcam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_cancel_hcam(%struct.pmcraid_cmd* %0, i64 %1, void (%struct.pmcraid_cmd*)* %2) #0 {
  %4 = alloca %struct.pmcraid_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (%struct.pmcraid_cmd*)*, align 8
  %7 = alloca %struct.pmcraid_instance*, align 8
  %8 = alloca %struct.pmcraid_hostrcb*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store void (%struct.pmcraid_cmd*)* %2, void (%struct.pmcraid_cmd*)** %6, align 8
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 0
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %10, align 8
  store %struct.pmcraid_instance* %11, %struct.pmcraid_instance** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PMCRAID_HCAM_CODE_LOG_DATA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 1
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.pmcraid_hostrcb* [ %17, %15 ], [ %20, %18 ]
  store %struct.pmcraid_hostrcb* %22, %struct.pmcraid_hostrcb** %8, align 8
  %23 = load %struct.pmcraid_hostrcb*, %struct.pmcraid_hostrcb** %8, align 8
  %24 = getelementptr inbounds %struct.pmcraid_hostrcb, %struct.pmcraid_hostrcb* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %30 = load %struct.pmcraid_hostrcb*, %struct.pmcraid_hostrcb** %8, align 8
  %31 = getelementptr inbounds %struct.pmcraid_hostrcb, %struct.pmcraid_hostrcb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pmcraid_prepare_cancel_cmd(%struct.pmcraid_cmd* %29, i32* %32)
  %34 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %35 = load void (%struct.pmcraid_cmd*)*, void (%struct.pmcraid_cmd*)** %6, align 8
  %36 = load i32, i32* @PMCRAID_INTERNAL_TIMEOUT, align 4
  %37 = load i32, i32* @pmcraid_timeout_handler, align 4
  %38 = call i32 @pmcraid_send_cmd(%struct.pmcraid_cmd* %34, void (%struct.pmcraid_cmd*)* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @pmcraid_prepare_cancel_cmd(%struct.pmcraid_cmd*, i32*) #1

declare dso_local i32 @pmcraid_send_cmd(%struct.pmcraid_cmd*, void (%struct.pmcraid_cmd*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
