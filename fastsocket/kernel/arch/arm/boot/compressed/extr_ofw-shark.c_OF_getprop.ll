; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_ofw-shark.c_OF_getprop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_ofw-shark.c_OF_getprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_getprop(i32 (i32*)* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i8], align 1
  store i32 (i32*)* %0, i32 (i32*)** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  store i8 103, i8* %14, align 1
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 1
  store i8 101, i8* %15, align 1
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 2
  store i8 116, i8* %16, align 1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 3
  store i8 112, i8* %17, align 1
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  store i8 114, i8* %18, align 1
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 5
  store i8 111, i8* %19, align 1
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 6
  store i8 112, i8* %20, align 1
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 7
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %23 = ptrtoint i8* %22 to i32
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  store i32 4, i32* %25, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = load i8*, i8** %10, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  store i32 %35, i32* %36, align 8
  %37 = load i32 (i32*)*, i32 (i32*)** %7, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %39 = call i32 %37(i32* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %45

42:                                               ; preds = %5
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
