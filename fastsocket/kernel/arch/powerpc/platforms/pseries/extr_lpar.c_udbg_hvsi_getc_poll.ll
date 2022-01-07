; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_hvsi_getc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_hvsi_getc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hvsi_udbg_buf_len = common dso_local global i32 0, align 4
@vtermno = common dso_local global i32 0, align 4
@hvsi_udbg_buf = common dso_local global i32* null, align 8
@H_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_hvsi_getc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_hvsi_getc_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %0
  %8 = load i32, i32* @vtermno, align 4
  %9 = load i32*, i32** @hvsi_udbg_buf, align 8
  %10 = call i32 @plpar_get_term_char(i32 %8, i32* @hvsi_udbg_buf_len, i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @H_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load i32*, i32** @hvsi_udbg_buf, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %7
  store i32 0, i32* @hvsi_udbg_buf_len, align 4
  br label %42

20:                                               ; preds = %14
  store i32 4, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** @hvsi_udbg_buf, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @hvsi_udbg_buf, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %41 = sub nsw i32 %40, 4
  store i32 %41, i32* @hvsi_udbg_buf_len, align 4
  br label %42

42:                                               ; preds = %39, %19
  br label %43

43:                                               ; preds = %42, %0
  %44 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i32 0, i32* @hvsi_udbg_buf_len, align 4
  store i32 -1, i32* %1, align 4
  br label %78

50:                                               ; preds = %46
  %51 = load i32*, i32** @hvsi_udbg_buf, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %2, align 1
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %70, %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32*, i32** @hvsi_udbg_buf, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @hvsi_udbg_buf, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i32, i32* @hvsi_udbg_buf_len, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* @hvsi_udbg_buf_len, align 4
  %76 = load i8, i8* %2, align 1
  %77 = zext i8 %76 to i32
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %73, %49
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i32 @plpar_get_term_char(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
