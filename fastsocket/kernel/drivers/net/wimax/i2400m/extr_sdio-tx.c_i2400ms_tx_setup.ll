; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-tx.c_i2400ms_tx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio-tx.c_i2400ms_tx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400ms = type { i32*, i32, i32, %struct.i2400m, %struct.TYPE_3__* }
%struct.i2400m = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400ms %p)\0A\00", align 1
@i2400ms_tx_submit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-tx\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TX: failed to create workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"(i2400ms %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400ms_tx_setup(%struct.i2400ms* %0) #0 {
  %2 = alloca %struct.i2400ms*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2400m*, align 8
  store %struct.i2400ms* %0, %struct.i2400ms** %2, align 8
  %6 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %7 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %11 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %10, i32 0, i32 3
  store %struct.i2400m* %11, %struct.i2400m** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %14 = call i32 @d_fnstart(i32 5, %struct.device* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400ms* %13)
  %15 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %16 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %15, i32 0, i32 2
  %17 = load i32, i32* @i2400ms_tx_submit, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %20 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @snprintf(i32 %21, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %28 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @create_singlethread_workqueue(i32 %29)
  %31 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %32 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %34 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* null, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.i2400ms*, %struct.i2400ms** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @d_fnend(i32 5, %struct.device* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.i2400ms* %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400ms*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400ms*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
