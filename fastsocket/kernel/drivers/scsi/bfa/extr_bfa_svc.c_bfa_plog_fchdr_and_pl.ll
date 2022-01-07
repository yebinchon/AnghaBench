; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_fchdr_and_pl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_plog_fchdr_and_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_plog_s = type { i64 }
%struct.fchs_s = type { i32 }
%struct.bfa_plog_rec_s = type { i32 }

@BFA_PL_INT_LOG_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_plog_fchdr_and_pl(%struct.bfa_plog_s* %0, i32 %1, i32 %2, i32 %3, %struct.fchs_s* %4, i32 %5) #0 {
  %7 = alloca %struct.bfa_plog_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fchs_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfa_plog_rec_s, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.bfa_plog_s* %0, %struct.bfa_plog_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fchs_s* %4, %struct.fchs_s** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.fchs_s*, %struct.fchs_s** %11, align 8
  %18 = bitcast %struct.fchs_s* %17 to i32*
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* @BFA_PL_INT_LOG_SZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfa_plog_s, %struct.bfa_plog_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %6
  %28 = call i32 @memset(%struct.bfa_plog_rec_s* %13, i32 0, i32 4)
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.bfa_plog_s*, %struct.bfa_plog_s** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @bfa_plog_intarr(%struct.bfa_plog_s* %43, i32 %44, i32 %45, i32 %46, i32* %22, i32 4)
  br label %48

48:                                               ; preds = %27, %6
  %49 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.bfa_plog_rec_s*, i32, i32) #2

declare dso_local i32 @bfa_plog_intarr(%struct.bfa_plog_s*, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
