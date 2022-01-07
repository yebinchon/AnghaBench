; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c___bfa_cb_tskim_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c___bfa_cb_tskim_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BFA_TSKIM_SM_HCB = common dso_local global i32 0, align 4
@tm_failures = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @__bfa_cb_tskim_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_cb_tskim_failed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_tskim_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_tskim_s*
  store %struct.bfa_tskim_s* %7, %struct.bfa_tskim_s** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %12 = load i32, i32* @BFA_TSKIM_SM_HCB, align 4
  %13 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %11, i32 %12)
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @tm_failures, align 4
  %19 = call i32 @bfa_stats(i32 %17, i32 %18)
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BFI_TSKIM_STS_FAILED, align 4
  %29 = call i32 @bfa_cb_tskim_done(i32 %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_cb_tskim_done(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
