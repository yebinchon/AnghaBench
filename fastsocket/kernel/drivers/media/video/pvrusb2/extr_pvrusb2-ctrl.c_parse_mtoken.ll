; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_parse_mtoken.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_parse_mtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8**, i32)* @parse_mtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mtoken(i8* %0, i32 %1, i32* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca [33 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %18

18:                                               ; preds = %64, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %18
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %64

27:                                               ; preds = %21
  %28 = load i32, i32* %16, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %10, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %64

39:                                               ; preds = %27
  %40 = load i8**, i8*** %10, align 8
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %64

50:                                               ; preds = %39
  %51 = load i8**, i8*** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @memcmp(i8* %55, i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %6, align 4
  br label %94

64:                                               ; preds = %60, %49, %38, %26
  %65 = load i32, i32* %14, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %18

69:                                               ; preds = %18
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp uge i64 %71, 33
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %94

76:                                               ; preds = %69
  %77 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  %84 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %85 = call i32 @simple_strtol(i8* %84, i8** %15, i32 0)
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %94

93:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %90, %73, %61
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
