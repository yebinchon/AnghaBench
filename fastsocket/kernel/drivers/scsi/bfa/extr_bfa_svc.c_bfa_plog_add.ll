; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_plog_s = type { i64, i64, i64, %struct.bfa_plog_rec_s* }
%struct.bfa_plog_rec_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_plog_s*, %struct.bfa_plog_rec_s*)* @bfa_plog_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_plog_add(%struct.bfa_plog_s* %0, %struct.bfa_plog_rec_s* %1) #0 {
  %3 = alloca %struct.bfa_plog_s*, align 8
  %4 = alloca %struct.bfa_plog_rec_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfa_plog_rec_s*, align 8
  store %struct.bfa_plog_s* %0, %struct.bfa_plog_s** %3, align 8
  store %struct.bfa_plog_rec_s* %1, %struct.bfa_plog_rec_s** %4, align 8
  %7 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s** %4, align 8
  %14 = call i64 @plkd_validate_logrec(%struct.bfa_plog_rec_s* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @WARN_ON(i32 1)
  br label %49

18:                                               ; preds = %12
  %19 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %22, i32 0, i32 3
  %24 = load %struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %24, i64 %25
  store %struct.bfa_plog_rec_s* %26, %struct.bfa_plog_rec_s** %6, align 8
  %27 = load %struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s** %6, align 8
  %28 = load %struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s** %4, align 8
  %29 = call i32 @memcpy(%struct.bfa_plog_rec_s* %27, %struct.bfa_plog_rec_s* %28, i32 4)
  %30 = call i32 (...) @bfa_get_log_time()
  %31 = load %struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @BFA_PL_LOG_REC_INCR(i64 %35)
  %37 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %18
  %45 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BFA_PL_LOG_REC_INCR(i64 %47)
  br label %49

49:                                               ; preds = %11, %16, %44, %18
  ret void
}

declare dso_local i64 @plkd_validate_logrec(%struct.bfa_plog_rec_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(%struct.bfa_plog_rec_s*, %struct.bfa_plog_rec_s*, i32) #1

declare dso_local i32 @bfa_get_log_time(...) #1

declare dso_local i32 @BFA_PL_LOG_REC_INCR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
