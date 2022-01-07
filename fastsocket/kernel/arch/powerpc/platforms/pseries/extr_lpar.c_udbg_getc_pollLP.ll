; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_getc_pollLP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_getc_pollLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inbuf = common dso_local global i64 0, align 8
@inbuflen = common dso_local global i32 0, align 4
@vtermno = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_getc_pollLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_getc_pollLP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @inbuf, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @inbuflen, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  store i32 0, i32* @inbuflen, align 4
  %11 = load i32, i32* @vtermno, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @plpar_get_term_char(i32 %11, i32* @inbuflen, i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @H_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* @inbuflen, align 4
  br label %18

18:                                               ; preds = %17, %10
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* @inbuflen, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @inbuflen, align 4
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 0, i32* @inbuflen, align 4
  store i32 -1, i32* %1, align 4
  br label %53

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %2, align 1
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %45, %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @inbuflen, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* @inbuflen, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @inbuflen, align 4
  %51 = load i8, i8* %2, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %48, %25
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @plpar_get_term_char(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
