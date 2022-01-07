; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_bdevt_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_bdevt_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BDEVT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%03x:%05x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @bdevt_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bdevt_str(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @MAJOR(i32 %7)
  %9 = icmp sle i32 %8, 255
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @MINOR(i32 %11)
  %13 = icmp sle i32 %12, 255
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* @BDEVT_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @BDEVT_SIZE, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @MAJOR(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @MINOR(i32 %22)
  %24 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @BDEVT_SIZE, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %28 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %28)
  br label %37

29:                                               ; preds = %10, %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @BDEVT_SIZE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MINOR(i32 %34)
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %14
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
