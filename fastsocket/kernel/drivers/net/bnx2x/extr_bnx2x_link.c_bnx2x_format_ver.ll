; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_format_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_format_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @bnx2x_format_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_format_ver(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  store i32 -268435456, i32* %9, align 4
  store i32 32, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %76

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %74, %41, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 4
  store i32 %43, i32* %9, align 4
  br label %25

44:                                               ; preds = %38, %28
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 48
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 10
  %54 = add nsw i32 %53, 97
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32*, i32** %8, align 8
  store i32 46, i32* %68, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %67, %57
  br label %25

75:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
