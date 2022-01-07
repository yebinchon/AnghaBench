; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_printframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_printframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"tiger %s(%4d)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tiger %s      \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32*, i32, i8*)* @printframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printframe(%struct.IsdnCardState* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i8*, i8** %10, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %33, %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 16
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 16, i32* %12, align 4
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @QuickHex(i8* %34, i32* %35, i32 %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %40 = call i32 @debugl1(%struct.IsdnCardState* %38, i8* %39)
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %13, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %10, align 8
  br label %24

55:                                               ; preds = %24
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
