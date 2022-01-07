; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_tc515_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_tc515_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@tc515_probe.printed = internal global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @tc515_probe(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.net_device* @corkscrew_scan(i32 %5)
  store %struct.net_device* %6, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.net_device* @ERR_PTR(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load i64, i64* @corkscrew_debug, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @tc515_probe.printed, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  store i32 1, i32* @tc515_probe.printed, align 4
  %20 = load i32, i32* @version, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %16, %13
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %23, %struct.net_device** %2, align 8
  br label %24

24:                                               ; preds = %22, %9
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %25
}

declare dso_local %struct.net_device* @corkscrew_scan(i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
