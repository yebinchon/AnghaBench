; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_setl2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_setl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid param: %d is not a valid card id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@sc_adapter = common dso_local global %struct.TYPE_4__** null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Sending GetFrameFormat for channel %d\0A\00", align 1
@CEPID = common dso_local global i32 0, align 4
@ceReqTypeCall = common dso_local global i32 0, align 4
@ceReqClass0 = common dso_local global i32 0, align 4
@ceReqCallGetFrameFormat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @setl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setl2(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @IS_VALID_CARD(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, 255
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @sc_adapter, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %24, i32* %35, align 4
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @sc_adapter, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CEPID, align 4
  %48 = load i32, i32* @ceReqTypeCall, align 4
  %49 = load i32, i32* @ceReqClass0, align 4
  %50 = load i32, i32* @ceReqCallGetFrameFormat, align 4
  %51 = load i32, i32* %8, align 4
  %52 = trunc i32 %51 to i8
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @sendmessage(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i8 zeroext %55, i32 1, i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %17
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %62, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @sendmessage(i32, i32, i32, i32, i32, i8 zeroext, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
