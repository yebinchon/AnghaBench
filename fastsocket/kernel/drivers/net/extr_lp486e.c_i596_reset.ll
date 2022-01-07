; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i596_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i596_reset\00", align 1
@CUC_ABORT = common dso_local global i32 0, align 4
@RX_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"i596_reset(2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.i596_private*, i32)* @i596_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i596_reset(%struct.net_device* %0, %struct.i596_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.i596_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.i596_private* %1, %struct.i596_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %8 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @i596_timeout(%struct.net_device* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 100)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12, %3
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load i32, i32* @CUC_ABORT, align 4
  %21 = load i32, i32* @RX_ABORT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %24 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = call i32 (...) @CA()
  %27 = call i32 (...) @barrier()
  %28 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %29 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i64 @i596_timeout(%struct.net_device* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 400)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %33, %17
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @i596_cleanup_cmd(%struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @i596_rx(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netif_start_queue(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @init_i596(%struct.net_device* %45)
  ret void
}

declare dso_local i64 @i596_timeout(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @CA(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @i596_cleanup_cmd(%struct.net_device*) #1

declare dso_local i32 @i596_rx(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @init_i596(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
