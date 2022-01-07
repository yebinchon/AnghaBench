; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid param: %d is not a valid card id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CEPID = common dso_local global i32 0, align 4
@ceReqTypePhy = common dso_local global i32 0, align 4
@ceReqClass1 = common dso_local global i32 0, align 4
@ceReqPhyDisconnect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Sent HANGUP message to channel %lu\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hangup(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @IS_VALID_CARD(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CEPID, align 4
  %18 = load i32, i32* @ceReqTypePhy, align 4
  %19 = load i32, i32* @ceReqClass1, align 4
  %20 = load i32, i32* @ceReqPhyDisconnect, align 4
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i8
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, 1
  %25 = trunc i32 %24 to i8
  %26 = call i32 @sendmessage(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i8 zeroext %25, i32 0, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  %36 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %15, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
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
