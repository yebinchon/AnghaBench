; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_build_q_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_build_q_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCRDMA_MAX_Q_PAGE_SIZE_CNT = common dso_local global i32 0, align 4
@OCRDMA_Q_PAGE_BASE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_MAX_Q_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ocrdma_build_q_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_build_q_conf(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @roundup_pow_of_two(i32 %13)
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %32, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @OCRDMA_MAX_Q_PAGE_SIZE_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @OCRDMA_Q_PAGE_BASE_SIZE, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %26, %27
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %20

35:                                               ; preds = %30, %20
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @OCRDMA_MAX_Q_PAGE_SIZE_CNT, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @OCRDMA_Q_PAGE_BASE_SIZE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @OCRDMA_MAX_Q_PAGES, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i32 @roundup(i32 %43, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @OCRDMA_Q_PAGE_BASE_SIZE, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @OCRDMA_MAX_Q_PAGES, align 4
  %55 = sdiv i32 %53, %54
  %56 = sdiv i32 %50, %55
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @OCRDMA_Q_PAGE_BASE_SIZE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @OCRDMA_MAX_Q_PAGES, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %42, %39
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
