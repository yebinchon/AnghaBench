; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_proc.c_pnx8550_timers_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_proc.c_pnx8550_timers_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Timer:       count,  compare, tc, status\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"    1: %11i, %8i,  %1i, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"    2: %11i, %8i,  %1i, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"    3: %11i, %8i,  %1i, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64, i32, i32*, i8*)* @pnx8550_timers_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx8550_timers_read(i8* %0, i8** %1, i64 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = call i32 (...) @read_c0_config7()
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %6
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = call i64 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 (...) @read_c0_count()
  %33 = call i32 (...) @read_c0_compare()
  %34 = load i32, i32* %14, align 4
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 1
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 3
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %43 = call i64 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %36, i8* %42)
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 (...) @read_c0_count2()
  %53 = call i32 (...) @read_c0_compare2()
  %54 = load i32, i32* %14, align 4
  %55 = ashr i32 %54, 7
  %56 = and i32 %55, 1
  %57 = load i32, i32* %14, align 4
  %58 = ashr i32 %57, 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i64 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32 %53, i32 %56, i8* %62)
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i32 (...) @read_c0_count3()
  %73 = call i32 (...) @read_c0_compare3()
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 1
  %77 = load i32, i32* %14, align 4
  %78 = ashr i32 %77, 5
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %83 = call i64 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73, i32 %76, i8* %82)
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %18, %6
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @read_c0_compare(...) #1

declare dso_local i32 @read_c0_count2(...) #1

declare dso_local i32 @read_c0_compare2(...) #1

declare dso_local i32 @read_c0_count3(...) #1

declare dso_local i32 @read_c0_compare3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
