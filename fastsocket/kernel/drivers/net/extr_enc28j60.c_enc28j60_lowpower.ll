; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_lowpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_lowpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s power...\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@ECON1 = common dso_local global i32 0, align 4
@ECON1_RXEN = common dso_local global i32 0, align 4
@ESTAT = common dso_local global i32 0, align 4
@ESTAT_RXBUSY = common dso_local global i32 0, align 4
@ECON1_TXRTS = common dso_local global i32 0, align 4
@ECON2 = common dso_local global i32 0, align 4
@ECON2_PWRSV = common dso_local global i32 0, align 4
@ESTAT_CLKRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc28j60_net*, i32)* @enc28j60_lowpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_lowpower(%struct.enc28j60_net* %0, i32 %1) #0 {
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %6 = call i64 @netif_msg_drv(%struct.enc28j60_net* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %10 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %8, %2
  %19 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %20 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %26 = load i32, i32* @ECON1, align 4
  %27 = load i32, i32* @ECON1_RXEN, align 4
  %28 = call i32 @nolock_reg_bfclr(%struct.enc28j60_net* %25, i32 %26, i32 %27)
  %29 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %30 = load i32, i32* @ESTAT, align 4
  %31 = load i32, i32* @ESTAT_RXBUSY, align 4
  %32 = call i32 @poll_ready(%struct.enc28j60_net* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %34 = load i32, i32* @ECON1, align 4
  %35 = load i32, i32* @ECON1_TXRTS, align 4
  %36 = call i32 @poll_ready(%struct.enc28j60_net* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %38 = load i32, i32* @ECON2, align 4
  %39 = load i32, i32* @ECON2_PWRSV, align 4
  %40 = call i32 @nolock_reg_bfset(%struct.enc28j60_net* %37, i32 %38, i32 %39)
  br label %51

41:                                               ; preds = %18
  %42 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %43 = load i32, i32* @ECON2, align 4
  %44 = load i32, i32* @ECON2_PWRSV, align 4
  %45 = call i32 @nolock_reg_bfclr(%struct.enc28j60_net* %42, i32 %43, i32 %44)
  %46 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %47 = load i32, i32* @ESTAT, align 4
  %48 = load i32, i32* @ESTAT_CLKRDY, align 4
  %49 = load i32, i32* @ESTAT_CLKRDY, align 4
  %50 = call i32 @poll_ready(%struct.enc28j60_net* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %24
  %52 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %53 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i64 @netif_msg_drv(%struct.enc28j60_net*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nolock_reg_bfclr(%struct.enc28j60_net*, i32, i32) #1

declare dso_local i32 @poll_ready(%struct.enc28j60_net*, i32, i32, i32) #1

declare dso_local i32 @nolock_reg_bfset(%struct.enc28j60_net*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
