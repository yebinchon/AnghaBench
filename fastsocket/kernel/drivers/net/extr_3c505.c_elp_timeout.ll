; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_elp_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_elp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: transmit timed out, lost %s?\0A\00", align 1
@ACRF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@elp_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: status %#02x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @elp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elp_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @inb_status(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ACRF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %16)
  %18 = load i32, i32* @elp_debug, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @netif_wake_queue(%struct.net_device* %35)
  ret void
}

declare dso_local i32 @inb_status(i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
