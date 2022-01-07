; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_b3_a_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_b3_a_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"connect_b3_a_res(ncci=0x%x)\00", align 1
@IDLE = common dso_local global i64 0, align 8
@INC_DIS_PENDING = common dso_local global i64 0, align 8
@OUTG_DIS_PENDING = common dso_local global i64 0, align 8
@INC_ACT_PENDING = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i8* null, align 8
@INC_CON_CONNECTED_ALERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*)* @connect_b3_a_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_b3_a_res(i32 %0, i64 %1, %struct.TYPE_8__* %2, %struct.TYPE_7__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 16
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @dbug(i32 1, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %82

22:                                               ; preds = %6
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IDLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INC_DIS_PENDING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OUTG_DIS_PENDING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INC_ACT_PENDING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %43
  %53 = load i8*, i8** @CONNECTED, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @INC_CON_CONNECTED_ALERT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i8*, i8** @CONNECTED, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %52
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @channel_request_xon(%struct.TYPE_7__* %71, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = call i32 @channel_xmit_xon(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %70, %43
  br label %82

82:                                               ; preds = %81, %37, %31, %25, %22, %6
  ret i32 0
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @channel_request_xon(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @channel_xmit_xon(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
