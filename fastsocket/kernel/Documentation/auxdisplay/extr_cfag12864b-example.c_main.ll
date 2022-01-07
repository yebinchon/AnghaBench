; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Sintax:  %s fbdev\0AUsually: /dev/fb0, /dev/fb1...\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't init %s fbdev\0A\00", align 1
@EXAMPLES = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @cfag12864b_init(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 -2, i32* %3, align 4
  br label %47

25:                                               ; preds = %14
  store i8 1, i8* %6, align 1
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @EXAMPLES, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @example(i8 zeroext %33)
  %35 = call i32 (...) @cfag12864b_blit()
  br label %36

36:                                               ; preds = %40, %32
  %37 = call signext i8 (...) @getchar()
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %36

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load i8, i8* %6, align 1
  %44 = add i8 %43, 1
  store i8 %44, i8* %6, align 1
  br label %26

45:                                               ; preds = %26
  %46 = call i32 (...) @cfag12864b_exit()
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %20, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @cfag12864b_init(i8*) #1

declare dso_local i32 @example(i8 zeroext) #1

declare dso_local i32 @cfag12864b_blit(...) #1

declare dso_local signext i8 @getchar(...) #1

declare dso_local i32 @cfag12864b_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
