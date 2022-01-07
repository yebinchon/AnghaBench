; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec_64.c_copy_segments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_machine_kexec_64.c_copy_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IND_DONE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@IND_FLAGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @copy_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_segments(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i64* null, i64** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @IND_DONE, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = call i8* @__va(i64 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @IND_FLAGS, align 8
  %21 = and i64 %19, %20
  switch i64 %21, label %35 [
    i64 130, label %22
    i64 129, label %24
    i64 128, label %27
  ]

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %5, align 8
  br label %35

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %4, align 8
  br label %35

27:                                               ; preds = %14
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @copy_page(i8* %28, i8* %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr i8, i8* %32, i64 %33
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %27, %14, %24, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %4, align 8
  %39 = load i64, i64* %37, align 8
  store i64 %39, i64* %3, align 8
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i8* @__va(i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
