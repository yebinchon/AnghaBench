; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_io.c_insb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_io.c_insb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insb(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %70

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @inb(i64 %22)
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  br label %10

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %32, %28
  %30 = load i64, i64* %6, align 8
  %31 = icmp uge i64 %30, 4
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 4
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @inb(i64 %35)
  %37 = shl i32 %36, 24
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @inb(i64 %38)
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @inb(i64 %43)
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @inb(i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  store i8* %56, i8** %7, align 8
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %61, %57
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @inb(i64 %64)
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  br label %58

70:                                               ; preds = %18, %58
  ret void
}

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
