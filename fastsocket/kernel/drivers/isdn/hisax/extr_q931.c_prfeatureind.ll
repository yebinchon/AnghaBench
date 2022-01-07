; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prfeatureind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prfeatureind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"    octet 3  \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"    octet 4  \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"    Status:  \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Prompt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Pending\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"(Reserved)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @prfeatureind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prfeatureind(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  store i32* %8, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @prbits(i8* %14, i32 %16, i32 8, i32 8)
  %18 = load i8*, i8** %5, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  store i8 10, i8* %21, align 1
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  %25 = load i32, i32* %23, align 4
  %26 = and i32 %25, 80
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i32 @prbits(i8* %34, i32 %37, i32 8, i32 8)
  %39 = load i8*, i8** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 10, i8* %42, align 1
  br label %44

44:                                               ; preds = %28, %2
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %76 [
    i32 0, label %52
    i32 1, label %58
    i32 2, label %64
    i32 3, label %70
  ]

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %5, align 8
  br label %82

58:                                               ; preds = %44
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %5, align 8
  br label %82

64:                                               ; preds = %44
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  br label %82

70:                                               ; preds = %44
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i8*, i8** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %5, align 8
  br label %82

76:                                               ; preds = %44
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i8*, i8** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %76, %70, %64, %58, %52
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  store i8 10, i8* %83, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  ret i32 %90
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @prbits(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
