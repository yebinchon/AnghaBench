; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_log_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_log_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@HSO_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Application\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GPS\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"GPS control\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Application2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PCSC\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Diagnostic\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Diagnostic2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Modem\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Network\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/dev/%s%d\00", align 1
@tty_filename = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"HSO: Found %s port %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_device*)* @hso_log_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_log_port(%struct.hso_device* %0) #0 {
  %2 = alloca %struct.hso_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  store %struct.hso_device* %0, %struct.hso_device** %2, align 8
  %5 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %6 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HSO_PORT_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %20 [
    i32 135, label %10
    i32 137, label %11
    i32 132, label %12
    i32 131, label %13
    i32 136, label %14
    i32 128, label %15
    i32 134, label %16
    i32 133, label %17
    i32 130, label %18
    i32 129, label %19
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %21

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %21

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %21

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %22 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %23 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HSO_PORT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %30 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %31 = call %struct.TYPE_8__* @dev2net(%struct.hso_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %35)
  br label %45

37:                                               ; preds = %21
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %39 = load i8*, i8** @tty_filename, align 8
  %40 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %41 = call %struct.TYPE_7__* @dev2ser(%struct.hso_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %39, i32 %43)
  br label %45

45:                                               ; preds = %37, %28
  %46 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %47 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %52 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %50, i8* %51)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @dev2net(%struct.hso_device*) #1

declare dso_local %struct.TYPE_7__* @dev2ser(%struct.hso_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
