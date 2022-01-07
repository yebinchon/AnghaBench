; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_store_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_store_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @store_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_size(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  store i8 0, i8* %6, align 1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 1000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 100000000, i64* %5, align 8
  store i8 71, i8* %6, align 1
  br label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 %12, 1000000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 100000, i64* %5, align 8
  store i8 77, i8* %6, align 1
  br label %20

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = icmp ugt i64 %16, 1000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 100, i64* %5, align 8
  store i8 75, i8* %6, align 1
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = udiv i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i8, i8* %6, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load i8, i8* %6, align 1
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %30, %21
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 1
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -2
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -3
  %56 = call i32 @memmove(i8* %50, i8* %55, i32 4)
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 46, i8* %61, align 1
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %45, %42
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
