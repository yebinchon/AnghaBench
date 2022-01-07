; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_str2mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_str2mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to parse mac address '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @str2mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str2mac(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %13 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12)
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 %36, i8* %38, align 1
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %40 = load i32, i32* %39, align 16
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8 %41, i8* %43, align 1
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  store i8 %46, i8* %48, align 1
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
