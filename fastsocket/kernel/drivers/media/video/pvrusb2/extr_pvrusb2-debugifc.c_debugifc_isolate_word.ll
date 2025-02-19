; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-debugifc.c_debugifc_isolate_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-debugifc.c_debugifc_isolate_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i32*)* @debugifc_isolate_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugifc_isolate_word(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @debugifc_count_whitespace(i8* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %49

29:                                               ; preds = %4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @debugifc_count_nonwhitespace(i8* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %49

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %36, %35, %28
  %50 = load i8*, i8** %9, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @debugifc_count_whitespace(i8*, i32) #1

declare dso_local i32 @debugifc_count_nonwhitespace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
