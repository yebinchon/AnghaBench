; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_buffer_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_buffer_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32 (i64, i32, i8*)*, i8*)* @buffer_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_op(i64 %0, i32 %1, i32 %2, i32 (i64, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i64, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i64, i32, i8*)* %3, i32 (i64, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @min(i64 %18, i64 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @do_op_one_page(i64 %23, i32 %24, i32 %25, i32 (i64, i32, i8*)* %26, i8* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %13, align 4
  br label %109

39:                                               ; preds = %5
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %109

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = icmp ult i64 %52, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %51
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @do_op_one_page(i64 %61, i32 %63, i32 %64, i32 (i64, i32, i8*)* %65, i8* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  br label %76

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  store i32 %77, i32* %13, align 4
  br label %109

78:                                               ; preds = %60
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  br label %51

87:                                               ; preds = %51
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %109

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @do_op_one_page(i64 %92, i32 %93, i32 %94, i32 (i64, i32, i8*)* %95, i8* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  br label %106

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  store i32 %107, i32* %13, align 4
  br label %109

108:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %111

109:                                              ; preds = %106, %90, %76, %49, %37
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @do_op_one_page(i64, i32, i32, i32 (i64, i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
