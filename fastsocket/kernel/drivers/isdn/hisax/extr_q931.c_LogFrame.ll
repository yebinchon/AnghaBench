; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_LogFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_LogFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i8* }

@MAX_DLOG_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LogFrame: \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"warning Frame too big (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogFrame(%struct.IsdnCardState* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %50

11:                                               ; preds = %3
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_DLOG_SPACE, align 4
  %17 = sdiv i32 %16, 3
  %18 = sub nsw i32 %17, 10
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %11
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  store i8 72, i8* %21, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 69, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 88, i8* %25, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  store i8 58, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @QuickHex(i8* %29, i32* %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 10, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  store i8 0, i8* %40, align 1
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %41, i8* null, i8* %44)
  br label %50

46:                                               ; preds = %11
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %10, %46, %20
  ret void
}

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

declare dso_local i32 @HiSax_putstatus(%struct.IsdnCardState*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
