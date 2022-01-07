; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_plog_s = type { i64 }
%struct.bfa_plog_rec_s = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@BFA_PL_LOG_TYPE_STRING = common dso_local global i32 0, align 4
@BFA_PL_STRING_LOG_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_plog_str(%struct.bfa_plog_s* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bfa_plog_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.bfa_plog_rec_s, align 8
  store %struct.bfa_plog_s* %0, %struct.bfa_plog_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %6, align 8
  %13 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %5
  %17 = call i32 @memset(%struct.bfa_plog_rec_s* %11, i32 0, i32 24)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BFA_PL_LOG_TYPE_STRING, align 4
  %23 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @BFA_PL_STRING_LOG_SZ, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @strncpy(i8* %28, i8* %29, i32 %31)
  %33 = getelementptr inbounds %struct.bfa_plog_rec_s, %struct.bfa_plog_rec_s* %11, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @BFA_PL_STRING_LOG_SZ, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %6, align 8
  %41 = call i32 @bfa_plog_add(%struct.bfa_plog_s* %40, %struct.bfa_plog_rec_s* %11)
  br label %42

42:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @memset(%struct.bfa_plog_rec_s*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @bfa_plog_add(%struct.bfa_plog_s*, %struct.bfa_plog_rec_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
