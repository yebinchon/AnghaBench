; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wakeup_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wakeup_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i64* }
%struct.sym_ccb = type { i32 }

@MAX_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: bad DSA (%x) in done queue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*)* @sym_wakeup_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_wakeup_done(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca %struct.sym_ccb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %8 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %1, %54
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %12 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @scr_to_cpu(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %55

22:                                               ; preds = %10
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @MAX_QUEUE, align 4
  %32 = mul nsw i32 %31, 2
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %36, i64 %37)
  store %struct.sym_ccb* %38, %struct.sym_ccb** %3, align 8
  %39 = load %struct.sym_ccb*, %struct.sym_ccb** %3, align 8
  %40 = icmp ne %struct.sym_ccb* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = call i32 (...) @MEMORY_READ_BARRIER()
  %43 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %44 = load %struct.sym_ccb*, %struct.sym_ccb** %3, align 8
  %45 = call i32 @sym_complete_ok(%struct.sym_hcb* %43, %struct.sym_ccb* %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %35
  %49 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %50 = call i8* @sym_name(%struct.sym_hcb* %49)
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  br label %10

55:                                               ; preds = %21
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %58 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @scr_to_cpu(i64) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i64) #1

declare dso_local i32 @MEMORY_READ_BARRIER(...) #1

declare dso_local i32 @sym_complete_ok(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
