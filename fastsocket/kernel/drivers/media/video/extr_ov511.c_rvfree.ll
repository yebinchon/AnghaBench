; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_rvfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_rvfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @rvfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvfree(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %29

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %15, %9
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @vmalloc_to_page(i8* %17)
  %19 = call i32 @ClearPageReserved(i32 %18)
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @vfree(i8* %27)
  br label %29

29:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
