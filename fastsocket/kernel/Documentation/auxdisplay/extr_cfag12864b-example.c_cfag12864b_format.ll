; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFAG12864B_HEIGHT = common dso_local global i8 0, align 1
@CFAG12864B_WIDTH = common dso_local global i8 0, align 1
@CFAG12864B_BPB = common dso_local global i8 0, align 1
@cfag12864b_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cfag12864b_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfag12864b_format(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  br label %6

6:                                                ; preds = %91, %1
  %7 = load i8, i8* %3, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @CFAG12864B_HEIGHT, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %94

12:                                               ; preds = %6
  store i8 0, i8* %4, align 1
  br label %13

13:                                               ; preds = %87, %12
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @CFAG12864B_WIDTH, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @CFAG12864B_BPB, align 1
  %19 = zext i8 %18 to i32
  %20 = sdiv i32 %17, %19
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %13
  %23 = load i32*, i32** @cfag12864b_buffer, align 8
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @CFAG12864B_WIDTH, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nsw i32 %25, %27
  %29 = load i8, i8* @CFAG12864B_BPB, align 1
  %30 = zext i8 %29 to i32
  %31 = sdiv i32 %28, %30
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %23, i64 %35
  store i32 0, i32* %36, align 4
  store i8 0, i8* %5, align 1
  br label %37

37:                                               ; preds = %83, %22
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @CFAG12864B_BPB, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = load i8*, i8** %2, align 8
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @CFAG12864B_WIDTH, align 1
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 %46, %48
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CFAG12864B_BPB, align 1
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %49, %54
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %44, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %43
  %64 = load i8, i8* %5, align 1
  %65 = call i32 @CFAG12864B_BIT(i8 zeroext %64)
  %66 = load i32*, i32** @cfag12864b_buffer, align 8
  %67 = load i8, i8* %3, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @CFAG12864B_WIDTH, align 1
  %70 = zext i8 %69 to i32
  %71 = mul nsw i32 %68, %70
  %72 = load i8, i8* @CFAG12864B_BPB, align 1
  %73 = zext i8 %72 to i32
  %74 = sdiv i32 %71, %73
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %66, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %65
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %63, %43
  br label %83

83:                                               ; preds = %82
  %84 = load i8, i8* %5, align 1
  %85 = add i8 %84, 1
  store i8 %85, i8* %5, align 1
  br label %37

86:                                               ; preds = %37
  br label %87

87:                                               ; preds = %86
  %88 = load i8, i8* %4, align 1
  %89 = add i8 %88, 1
  store i8 %89, i8* %4, align 1
  br label %13

90:                                               ; preds = %13
  br label %91

91:                                               ; preds = %90
  %92 = load i8, i8* %3, align 1
  %93 = add i8 %92, 1
  store i8 %93, i8* %3, align 1
  br label %6

94:                                               ; preds = %6
  ret void
}

declare dso_local i32 @CFAG12864B_BIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
