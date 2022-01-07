; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_hw_qpageit_get_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_hw_qpageit_get_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_queue = type { i64, i64, i64 }

@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"not on pageboundary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hw_queue*)* @hw_qpageit_get_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hw_qpageit_get_inc(%struct.hw_queue* %0) #0 {
  %2 = alloca %struct.hw_queue*, align 8
  %3 = alloca i8*, align 8
  store %struct.hw_queue* %0, %struct.hw_queue** %2, align 8
  %4 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %5 = call i8* @hw_qeit_get(%struct.hw_queue* %4)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %7 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %10 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, %8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %14 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %17 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %22 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %25 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  store i8* null, i8** %3, align 8
  br label %38

28:                                               ; preds = %1
  %29 = load i8*, i8** %3, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32, i32* @EHEA_PAGESIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @ehea_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %37

37:                                               ; preds = %35, %28
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @hw_qeit_get(%struct.hw_queue*) #1

declare dso_local i32 @ehea_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
