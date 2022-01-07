; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_align_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_align_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @edac_align_ptr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ugt i64 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ugt i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 8, i32* %6, align 4
  br label %31

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 4, i32* %6, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 2, i32* %6, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %3, align 8
  br label %50

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %3, align 8
  br label %50

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = sub i64 %45, %47
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %40, %38, %27
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
