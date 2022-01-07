; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_reset_b3_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_reset_b3_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reset_b3_res\00", align 1
@INC_RES_PENDING = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@N_RESET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32*)* @reset_b3_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_b3_res(i32 %0, i64 %1, %struct.TYPE_7__* %2, %struct.TYPE_6__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @dbug(i32 1, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 16
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %14, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %6
  %23 = load i64, i64* %14, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %51 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INC_RES_PENDING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load i32, i32* @CONNECTED, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = load i32, i32* @N_RESET_ACK, align 4
  %47 = load i64, i64* %14, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @nl_req_ncci(%struct.TYPE_6__* %45, i32 %46, i32 %48)
  store i32 1, i32* %7, align 4
  br label %53

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %25, %50
  br label %52

52:                                               ; preds = %51, %22, %6
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
