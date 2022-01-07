; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i32, i64 }

@BFA_FALSE = common dso_local global i64 0, align 8
@bfa_fcxp_null_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcxp_discard(%struct.bfa_fcxp_s* %0) #0 {
  %2 = alloca %struct.bfa_fcxp_s*, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %2, align 8
  %3 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i64, i64* @BFA_FALSE, align 8
  %9 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %9, i32 0, i32 2
  store i64 %8, i64* %10, align 8
  %11 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %11, i32 0, i32 1
  %13 = call i32 @bfa_reqq_wcancel(i32* %12)
  %14 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %15 = call i32 @bfa_fcxp_free(%struct.bfa_fcxp_s* %14)
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @bfa_fcxp_null_comp, align 4
  %18 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_fcxp_free(%struct.bfa_fcxp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
