; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_stop_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Disable interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: Disable RX MAC\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: Disable IPP\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: Stop TX channels\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: Stop RX channels\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: Reset TX channels\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: Reset RX channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_stop_hw(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %3 = load i32, i32* @IFDOWN, align 4
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @niudbg(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.niu*, %struct.niu** %2, align 8
  %11 = call i32 @niu_enable_interrupts(%struct.niu* %10, i32 0)
  %12 = load i32, i32* @IFDOWN, align 4
  %13 = load %struct.niu*, %struct.niu** %2, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @niudbg(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.niu*, %struct.niu** %2, align 8
  %20 = call i32 @niu_enable_rx_mac(%struct.niu* %19, i32 0)
  %21 = load i32, i32* @IFDOWN, align 4
  %22 = load %struct.niu*, %struct.niu** %2, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @niudbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.niu*, %struct.niu** %2, align 8
  %29 = call i32 @niu_disable_ipp(%struct.niu* %28)
  %30 = load i32, i32* @IFDOWN, align 4
  %31 = load %struct.niu*, %struct.niu** %2, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @niudbg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.niu*, %struct.niu** %2, align 8
  %38 = call i32 @niu_stop_tx_channels(%struct.niu* %37)
  %39 = load i32, i32* @IFDOWN, align 4
  %40 = load %struct.niu*, %struct.niu** %2, align 8
  %41 = getelementptr inbounds %struct.niu, %struct.niu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @niudbg(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.niu*, %struct.niu** %2, align 8
  %47 = call i32 @niu_stop_rx_channels(%struct.niu* %46)
  %48 = load i32, i32* @IFDOWN, align 4
  %49 = load %struct.niu*, %struct.niu** %2, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @niudbg(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.niu*, %struct.niu** %2, align 8
  %56 = call i32 @niu_reset_tx_channels(%struct.niu* %55)
  %57 = load i32, i32* @IFDOWN, align 4
  %58 = load %struct.niu*, %struct.niu** %2, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @niudbg(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load %struct.niu*, %struct.niu** %2, align 8
  %65 = call i32 @niu_reset_rx_channels(%struct.niu* %64)
  ret void
}

declare dso_local i32 @niudbg(i32, i8*, i32) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @niu_enable_rx_mac(%struct.niu*, i32) #1

declare dso_local i32 @niu_disable_ipp(%struct.niu*) #1

declare dso_local i32 @niu_stop_tx_channels(%struct.niu*) #1

declare dso_local i32 @niu_stop_rx_channels(%struct.niu*) #1

declare dso_local i32 @niu_reset_tx_channels(%struct.niu*) #1

declare dso_local i32 @niu_reset_rx_channels(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
