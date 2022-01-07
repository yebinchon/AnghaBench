; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_intarr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_intarr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_plog_s = type { i64 }
%struct.bfa_plog_rec_s = type { i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64* }

@BFA_PL_INT_LOG_SZ = common dso_local global i64 0, align 8
@BFA_PL_LOG_TYPE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_plog_intarr(%struct.bfa_plog_s* %0, i32 %1, i32 %2, i32 %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.bfa_plog_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bfa_plog_rec_s, align 8
  %14 = alloca i64, align 8
  store %struct.bfa_plog_s* %0, %struct.bfa_plog_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @BFA_PL_INT_LOG_SZ, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i64, i64* @BFA_PL_INT_LOG_SZ, align 8
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = call i32 @memset(%struct.bfa_plog_rec_s* %13, i32 0, i32 32)
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BFA_PL_LOG_TYPE_INT, align 4
  %32 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %49, %25
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %43, i64* %48, align 8
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %14, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %35

52:                                               ; preds = %35
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %13, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %7, align 8
  %56 = call i32 @bfa_plog_add(%struct.bfa_plog_s* %55, %struct.bfa_plog_rec_s* %13)
  br label %57

57:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @memset(%struct.bfa_plog_rec_s*, i32, i32) #1

declare dso_local i32 @bfa_plog_add(%struct.bfa_plog_s*, %struct.bfa_plog_rec_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
