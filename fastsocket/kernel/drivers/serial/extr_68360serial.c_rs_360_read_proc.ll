; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_read_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_read_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"serinfo:1.0 driver:%s\0A\00", align 1
@serial_version = common dso_local global i8* null, align 8
@NR_PORTS = common dso_local global i32 0, align 4
@rs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs_360_read_proc(i8* %0, i8** %1, i64 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** @serial_version, align 8
  %19 = call i64 @sprintf(i8* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %70, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @NR_PORTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 4000
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i1 [ false, %24 ], [ %30, %28 ]
  br i1 %32, label %33, label %73

33:                                               ; preds = %31
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32*, i32** @rs_table, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i64 @line_info(i8* %37, i32* %41)
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %16, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %75

57:                                               ; preds = %33
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %16, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %24

73:                                               ; preds = %31
  %74 = load i32*, i32** %12, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %56
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %16, align 8
  %80 = add nsw i64 %78, %79
  %81 = icmp sge i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %112

83:                                               ; preds = %75
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %85, %86
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8**, i8*** %9, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %16, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %95, %96
  %98 = icmp slt i64 %91, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %83
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  br label %109

102:                                              ; preds = %83
  %103 = load i64, i64* %16, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i64, i64* %10, align 8
  %108 = sub nsw i64 %106, %107
  br label %109

109:                                              ; preds = %102, %99
  %110 = phi i64 [ %101, %99 ], [ %108, %102 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %82
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @line_info(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
