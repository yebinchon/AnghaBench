; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, %struct.TYPE_2__*, %struct.i2400m }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { %struct.wimax_dev }
%struct.wimax_dev = type { i32 }

@i2400mu_rxd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-rx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RX: cannot start thread: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400mu_rx_setup(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wimax_dev*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %8 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %7, i32 0, i32 2
  store %struct.i2400m* %8, %struct.i2400m** %4, align 8
  %9 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %10 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  store %struct.wimax_dev* %14, %struct.wimax_dev** %6, align 8
  %15 = load i32, i32* @i2400mu_rxd, align 4
  %16 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %17 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %18 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kthread_run(i32 %15, %struct.i2400mu* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %22 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %24 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %30 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @kthread_run(i32, %struct.i2400mu*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
