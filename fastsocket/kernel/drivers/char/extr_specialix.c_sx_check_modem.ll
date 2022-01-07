; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_check_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_check_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32 }
%struct.specialix_port = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@SX_DEBUG_SIGNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Modem intr. \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Modem\00", align 1
@CD186x_MCR = common dso_local global i32 0, align 4
@MCR_CDCHG = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CD just changed... \00", align 1
@CD186x_MSVR = common dso_local global i32 0, align 4
@MSVR_CD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Waking up guys in open.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Sending HUP.\0A\00", align 1
@CD186x_IER = common dso_local global i32 0, align 4
@IER_TXRDY = common dso_local global i32 0, align 4
@MCR_CTSCHG = common dso_local global i8 0, align 1
@MCR_DSSXHG = common dso_local global i8 0, align 1
@MSVR_CTS = common dso_local global i32 0, align 4
@MSVR_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.specialix_board*)* @sx_check_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_check_modem(%struct.specialix_board* %0) #0 {
  %2 = alloca %struct.specialix_board*, align 8
  %3 = alloca %struct.specialix_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.specialix_board* %0, %struct.specialix_board** %2, align 8
  %7 = load i32, i32* @SX_DEBUG_SIGNALS, align 4
  %8 = call i32 @dprintk(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %10 = call %struct.specialix_port* @sx_get_port(%struct.specialix_board* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.specialix_port* %10, %struct.specialix_port** %3, align 8
  %11 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %12 = icmp eq %struct.specialix_port* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %16 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %4, align 8
  %19 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %20 = load i32, i32* @CD186x_MCR, align 4
  %21 = call i32 @sx_in(%struct.specialix_board* %19, i32 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @MCR_CDCHG, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %14
  %30 = load i32, i32* @SX_DEBUG_SIGNALS, align 4
  %31 = call i32 @dprintk(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %33 = load i32, i32* @CD186x_MSVR, align 4
  %34 = call i32 @sx_in(%struct.specialix_board* %32, i32 %33)
  %35 = load i32, i32* @MSVR_CD, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32, i32* @SX_DEBUG_SIGNALS, align 4
  %41 = call i32 @dprintk(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %43 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @wake_up_interruptible(i32* %44)
  br label %51

46:                                               ; preds = %29
  %47 = load i32, i32* @SX_DEBUG_SIGNALS, align 4
  %48 = call i32 @dprintk(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = call i32 @tty_hangup(%struct.tty_struct* %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %14
  %53 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %54 = load i32, i32* @CD186x_MCR, align 4
  %55 = call i32 @sx_out(%struct.specialix_board* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %13
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local %struct.specialix_port* @sx_get_port(%struct.specialix_board*, i8*) #1

declare dso_local i32 @sx_in(%struct.specialix_board*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
