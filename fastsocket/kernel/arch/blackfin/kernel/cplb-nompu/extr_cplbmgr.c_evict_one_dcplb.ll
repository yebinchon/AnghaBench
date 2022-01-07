; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-nompu/extr_cplbmgr.c_evict_one_dcplb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/cplb-nompu/extr_cplbmgr.c_evict_one_dcplb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_switched_dcplb = common dso_local global i32 0, align 4
@dcplb_rr_index = common dso_local global i32* null, align 8
@MAX_CPLBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @evict_one_dcplb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evict_one_dcplb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @first_switched_dcplb, align 4
  %5 = load i32*, i32** @dcplb_rr_index, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %4, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_CPLBS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX_CPLBS, align 4
  %16 = load i32, i32* @first_switched_dcplb, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @MAX_CPLBS, align 4
  %21 = load i32, i32* @first_switched_dcplb, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32*, i32** @dcplb_rr_index, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, %22
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %14, %1
  %30 = load i32*, i32** @dcplb_rr_index, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
