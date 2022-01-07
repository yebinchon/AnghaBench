; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_dial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_command.c_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid param: %d is not a valid card id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CEPID = common dso_local global i32 0, align 4
@ceReqTypePhy = common dso_local global i32 0, align 4
@ceReqClass1 = common dso_local global i32 0, align 4
@ceReqPhyConnect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: Dialing %s on channel %lu\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @dial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dial(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [48 x i8], align 16
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @IS_VALID_CARD(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i8* %20, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CEPID, align 4
  %26 = load i32, i32* @ceReqTypePhy, align 4
  %27 = load i32, i32* @ceReqClass1, align 4
  %28 = load i32, i32* @ceReqPhyConnect, align 4
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @sendmessage(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i8 zeroext %33, i32 %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sc_adapter, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 0
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46, i64 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %19, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @sendmessage(i32, i32, i32, i32, i32, i8 zeroext, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
