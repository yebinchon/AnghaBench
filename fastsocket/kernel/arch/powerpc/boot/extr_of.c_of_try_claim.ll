; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_of.c_of_try_claim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_of.c_of_try_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@claim_base = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@ONE_MB = common dso_local global i64 0, align 8
@RAM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @of_try_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @of_try_claim(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* @claim_base, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* @_end, align 8
  %9 = load i64, i64* @ONE_MB, align 8
  %10 = call i64 @_ALIGN_UP(i64 %8, i64 %9)
  store i64 %10, i64* @claim_base, align 8
  br label %11

11:                                               ; preds = %7, %1
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i64, i64* @claim_base, align 8
  %14 = load i64, i64* @RAM_END, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i64, i64* @claim_base, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @of_claim(i64 %17, i64 %18, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = icmp ne i8* %21, inttoptr (i64 -1 to i8*)
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* @ONE_MB, align 8
  %27 = load i64, i64* @claim_base, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* @claim_base, align 8
  br label %12

29:                                               ; preds = %23, %12
  %30 = load i64, i64* %4, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %40

33:                                               ; preds = %29
  %34 = load i64, i64* @claim_base, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @PAGE_ALIGN(i64 %36)
  store i64 %37, i64* @claim_base, align 8
  %38 = load i64, i64* %4, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i64 @_ALIGN_UP(i64, i64) #1

declare dso_local i64 @of_claim(i64, i64, i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
