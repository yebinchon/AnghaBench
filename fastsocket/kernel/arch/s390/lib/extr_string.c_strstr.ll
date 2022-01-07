; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_strstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strstr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @__strend(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %3, align 8
  br label %64

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @__strend(i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %60, %24
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call { i32, i64, i64, i64, i64 } asm sideeffect "0: clcle $1,$3,0\0A   jo    0b\0A   ipm   $0\0A   srl   $0,28", "=&{dx},={cx},={bx},={si},={di},1,2,3,4,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %46, i64 %47, i64 %48, i64 %49) #2, !srcloc !2
  %51 = extractvalue { i32, i64, i64, i64, i64 } %50, 0
  %52 = extractvalue { i32, i64, i64, i64, i64 } %50, 1
  %53 = extractvalue { i32, i64, i64, i64, i64 } %50, 2
  %54 = extractvalue { i32, i64, i64, i64, i64 } %50, 3
  %55 = extractvalue { i32, i64, i64, i64, i64 } %50, 4
  store i32 %51, i32* %12, align 4
  store i64 %52, i64* %8, align 8
  store i64 %53, i64* %9, align 8
  store i64 %54, i64* %10, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %37
  %59 = load i8*, i8** %4, align 8
  store i8* %59, i8** %3, align 8
  br label %64

60:                                               ; preds = %37
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  br label %32

63:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %64

64:                                               ; preds = %63, %58, %22
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i8* @__strend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 602, i32 633, i32 658, i32 683}
