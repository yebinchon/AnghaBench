; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_memcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_string.c_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call { i32, i64, i64, i64, i64 } asm sideeffect "0: clcle $1,$3,0\0A   jo    0b\0A   ipm   $0\0A   srl   $0,28", "=&{dx},={cx},={bx},={si},={di},1,2,3,4,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i64 %19, i64 %20, i64 %21) #1, !srcloc !2
  %23 = extractvalue { i32, i64, i64, i64, i64 } %22, 0
  %24 = extractvalue { i32, i64, i64, i64, i64 } %22, 1
  %25 = extractvalue { i32, i64, i64, i64, i64 } %22, 2
  %26 = extractvalue { i32, i64, i64, i64, i64 } %22, 3
  %27 = extractvalue { i32, i64, i64, i64, i64 } %22, 4
  store i32 %23, i32* %11, align 4
  store i64 %24, i64* %7, align 8
  store i64 %25, i64* %8, align 8
  store i64 %26, i64* %9, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i64, i64* %9, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %34, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %30, %3
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 444, i32 474, i32 498, i32 522}
