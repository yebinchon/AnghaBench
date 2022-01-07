; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_megasas_get_best_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_megasas_get_best_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LD_LOAD_BALANCE_INFO = type { i64*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_get_best_arm(%struct.LD_LOAD_BALANCE_INFO* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.LD_LOAD_BALANCE_INFO* %0, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  %15 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i64 @atomic_read(i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  %20 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = call i64 @atomic_read(i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  %26 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ABS_DIFF(i64 %24, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  %33 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @ABS_DIFF(i64 %31, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp sle i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 4
  %50 = icmp sgt i64 %47, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46, %4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 4
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %46
  %61 = load i32, i32* %13, align 4
  %62 = xor i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %55, %51
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %5, align 8
  %69 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @ABS_DIFF(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
