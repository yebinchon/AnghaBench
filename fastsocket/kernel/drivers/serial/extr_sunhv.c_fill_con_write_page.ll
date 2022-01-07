; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_fill_con_write_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_fill_con_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@con_write_page = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*)* @fill_con_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_con_write_page(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** @con_write_page, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %44

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8 13, i8* %27, align 1
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %44

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8, i8* %37, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %9, align 4
  br label %13

44:                                               ; preds = %34, %25, %13
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** @con_write_page, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
