; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_ofw-shark.c_OF_finddevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_ofw-shark.c_OF_finddevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_finddevice(i32 (i32*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i32*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca [12 x i8], align 1
  store i32 (i32*)* %0, i32 (i32*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  store i8 102, i8* %8, align 1
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 1
  store i8 105, i8* %9, align 1
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 2
  store i8 110, i8* %10, align 1
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 3
  store i8 100, i8* %11, align 1
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 4
  store i8 100, i8* %12, align 1
  %13 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 5
  store i8 101, i8* %13, align 1
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 6
  store i8 118, i8* %14, align 1
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 7
  store i8 105, i8* %15, align 1
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 8
  store i8 99, i8* %16, align 1
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 9
  store i8 101, i8* %17, align 1
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 10
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %20 = ptrtoint i8* %19 to i32
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 1, i32* %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32 (i32*)*, i32 (i32*)** %4, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %29 = call i32 %27(i32* %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %34 = load i32, i32* %33, align 16
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
