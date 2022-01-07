; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_flogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i8*, i8*, i32, i32, i8* }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_LPS_SM_LOGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_lps_flogi(%struct.bfa_lps_s* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.bfa_lps_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %17 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %20 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %23 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %26 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %29 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @BFA_FALSE, align 4
  %31 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %32 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %35 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %8, align 8
  %37 = load i32, i32* @BFA_LPS_SM_LOGIN, align 4
  %38 = call i32 @bfa_sm_send_event(%struct.bfa_lps_s* %36, i32 %37)
  ret void
}

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_lps_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
