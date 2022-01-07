; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_qpageit_get_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_qpageit_get_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { i64, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"ERROR!! not at PAGE-Boundary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ipz_qpageit_get_inc(%struct.ipz_queue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipz_queue*, align 8
  %4 = alloca i8*, align 8
  store %struct.ipz_queue* %0, %struct.ipz_queue** %3, align 8
  %5 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %6 = call i8* @ipz_qeit_get(%struct.ipz_queue* %5)
  store i8* %6, i8** %4, align 8
  %7 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %12 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %19 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %24 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %28 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %22, %1
  %32 = load i8*, i8** %4, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ipz_queue*, %struct.ipz_queue** %3, align 8
  %35 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %43

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @ipz_qeit_get(%struct.ipz_queue*) #1

declare dso_local i32 @ehca_gen_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
