; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_udbg.c_udbg_getc_poll_beat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_udbg.c_udbg_getc_poll_beat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inbuf = common dso_local global i64 0, align 8
@inbuflen = common dso_local global i32 0, align 4
@celleb_vtermno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_getc_poll_beat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_getc_poll_beat() #0 {
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
  br i1 %9, label %10, label %21

10:                                               ; preds = %0
  store i32 0, i32* @inbuflen, align 4
  %11 = load i32, i32* @celleb_vtermno, align 4
  %12 = load i64, i64* @inbuf, align 8
  %13 = add nsw i64 %12, 0
  %14 = load i64, i64* @inbuf, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i64 @beat_get_term_char(i32 %11, i32* @inbuflen, i64 %13, i64 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 0, i32* @inbuflen, align 4
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* @inbuflen, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @inbuflen, align 4
  %26 = icmp sgt i32 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 0, i32* @inbuflen, align 4
  store i32 -1, i32* %1, align 4
  br label %55

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %2, align 1
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %47, %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @inbuflen, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 %41, i8* %46, align 1
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i32, i32* @inbuflen, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @inbuflen, align 4
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %50, %27
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i64 @beat_get_term_char(i32, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
