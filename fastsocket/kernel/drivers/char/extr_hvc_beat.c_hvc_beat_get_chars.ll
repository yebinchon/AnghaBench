; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_beat.c_hvc_beat_get_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_beat.c_hvc_beat_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hvc_beat_get_chars.q = internal global [16 x i8] zeroinitializer, align 8
@hvc_beat_get_chars.qlen = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @hvc_beat_get_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_beat_get_chars(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %3
  %11 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @memcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @hvc_beat_get_chars.q, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* @hvc_beat_get_chars.qlen, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @hvc_beat_get_chars.q, i64 0, i64 0), i64 %25
  %27 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  %28 = call i32 @memmove(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @hvc_beat_get_chars.q, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %13
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  %33 = call i32 @memcpy(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @hvc_beat_get_chars.q, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @hvc_beat_get_chars.qlen, align 4
  store i32 %34, i32* %9, align 4
  store i32 0, i32* @hvc_beat_get_chars.qlen, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %10
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @beat_get_term_char(i32 %37, i32* %8, i32* bitcast ([16 x i8]* @hvc_beat_get_chars.q to i32*), i32* getelementptr inbounds (i32, i32* bitcast ([16 x i8]* @hvc_beat_get_chars.q to i32*), i64 1))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* @hvc_beat_get_chars.qlen, align 4
  br label %10

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %30, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @beat_get_term_char(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
