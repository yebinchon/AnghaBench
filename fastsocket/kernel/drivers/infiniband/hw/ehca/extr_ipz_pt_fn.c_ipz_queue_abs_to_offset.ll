; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_abs_to_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_abs_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipz_queue_abs_to_offset(%struct.ipz_queue* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipz_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ipz_queue* %0, %struct.ipz_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %55, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %13 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %16 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %10
  %21 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %22 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @virt_to_abs(i32 %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %20
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %37 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = icmp slt i64 %34, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %48 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %61

54:                                               ; preds = %33, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %10

58:                                               ; preds = %10
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @virt_to_abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
