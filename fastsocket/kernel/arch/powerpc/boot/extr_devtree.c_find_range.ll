; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_devtree.c_find_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_devtree.c_find_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ADDR_CELLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32)* @find_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_range(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %67, %6
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %14, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %13, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load i32, i32* @MAX_ADDR_CELLS, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %16, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  %36 = load i32, i32* @MAX_ADDR_CELLS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @copy_val(i32* %35, i32* %42, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @copy_val(i32* %38, i32* %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @compare_reg(i32* %57, i32* %35, i32* %38)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %31
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %63

62:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %19, align 4
  switch i32 %65, label %74 [
    i32 0, label %66
    i32 1, label %72
  ]

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %15, align 4
  br label %25

71:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i32, i32* %7, align 4
  ret i32 %73

74:                                               ; preds = %63
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copy_val(i32*, i32*, i32) #2

declare dso_local i64 @compare_reg(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
