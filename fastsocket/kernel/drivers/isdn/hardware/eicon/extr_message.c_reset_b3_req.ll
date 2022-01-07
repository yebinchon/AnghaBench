; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_reset_b3_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_reset_b3_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reset_b3_req\00", align 1
@_WRONG_IDENTIFIER = common dso_local global i64 0, align 8
@_WRONG_STATE = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@N_RESET = common dso_local global i32 0, align 4
@GOOD = common dso_local global i64 0, align 8
@reset_b3_command = common dso_local global i32 0, align 4
@_RESET_B3_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32*)* @reset_b3_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_b3_req(i32 %0, i64 %1, %struct.TYPE_9__* %2, %struct.TYPE_8__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @dbug(i32 1, i32 %15)
  %17 = load i64, i64* @_WRONG_IDENTIFIER, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 16
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %6
  %24 = load i64, i64* %14, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i64, i64* @_WRONG_STATE, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %66 [
    i32 130, label %31
    i32 128, label %31
    i32 129, label %50
  ]

31:                                               ; preds = %26, %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CONNECTED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load i32, i32* @N_RESET, align 4
  %43 = load i64, i64* %14, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @nl_req_ncci(%struct.TYPE_8__* %41, i32 %42, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = call i32 @send_req(%struct.TYPE_8__* %46)
  %48 = load i64, i64* @GOOD, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %40, %31
  br label %66

50:                                               ; preds = %26
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CONNECTED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = load i32, i32* @reset_b3_command, align 4
  %63 = call i32 @start_internal_command(i32 %60, %struct.TYPE_8__* %61, i32 %62)
  %64 = load i64, i64* @GOOD, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %59, %50
  br label %66

66:                                               ; preds = %26, %65, %49
  br label %67

67:                                               ; preds = %66, %23, %6
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @_RESET_B3_R, align 4
  %70 = load i32, i32* @CONFIRM, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @sendf(i32* %68, i32 %71, i32 %72, i64 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  ret i32 0
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @send_req(%struct.TYPE_8__*) #1

declare dso_local i32 @start_internal_command(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sendf(i32*, i32, i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
