; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_state_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_state_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_sfp_req_s = type { i64 }

@BFA_SFP_STATE_INIT = common dso_local global i64 0, align 8
@BFI_SFP_MEM_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*)* @bfa_sfp_state_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_state_query(%struct.bfa_sfp_s* %0) #0 {
  %2 = alloca %struct.bfa_sfp_s*, align 8
  %3 = alloca %struct.bfi_sfp_req_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %2, align 8
  %4 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.bfi_sfp_req_s*
  store %struct.bfi_sfp_req_s* %8, %struct.bfi_sfp_req_s** %3, align 8
  %9 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BFA_SFP_STATE_INIT, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %23 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bfa_trc(%struct.bfa_sfp_s* %22, i64 %25)
  %27 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load %struct.bfi_sfp_req_s*, %struct.bfi_sfp_req_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfi_sfp_req_s, %struct.bfi_sfp_req_s* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %37 = load i32, i32* @BFI_SFP_MEM_ALL, align 4
  %38 = call i32 @bfa_sfp_getdata(%struct.bfa_sfp_s* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i64) #1

declare dso_local i32 @bfa_sfp_getdata(%struct.bfa_sfp_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
