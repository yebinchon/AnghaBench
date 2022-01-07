; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rio_linux.c_my_hd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rio_linux.c_my_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIO_DEBUG_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%08lx \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%02x %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @my_hd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_hd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load i32, i32* @RIO_DEBUG_PARAM, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* @RIO_DEBUG_PARAM, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 7
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @RIO_DEBUG_PARAM, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %68

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 127
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 46, %63 ], [ %65, %64 ]
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi i32 [ 46, %59 ], [ %67, %66 ]
  %70 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load i32, i32* @RIO_DEBUG_PARAM, align 4
  %76 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 16
  store i32 %79, i32* %5, align 4
  br label %10

80:                                               ; preds = %10
  ret void
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
