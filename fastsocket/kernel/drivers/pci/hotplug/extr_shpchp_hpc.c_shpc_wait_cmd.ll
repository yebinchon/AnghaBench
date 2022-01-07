; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@shpchp_poll_mode = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Command not completed in 1000 msec\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Command was interrupted by a signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @shpc_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpc_wait_cmd(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i64 @msecs_to_jiffies(i32 1000)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @shpchp_poll_mode, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.controller*, %struct.controller** %2, align 8
  %11 = call i32 @shpc_poll_ctrl_busy(%struct.controller* %10)
  store i32 %11, i32* %5, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.controller*, %struct.controller** %2, align 8
  %14 = getelementptr inbounds %struct.controller, %struct.controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.controller*, %struct.controller** %2, align 8
  %17 = call i64 @is_ctrl_busy(%struct.controller* %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @wait_event_interruptible_timeout(i32 %15, i32 %20, i64 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.controller*, %struct.controller** %2, align 8
  %28 = call i64 @is_ctrl_busy(%struct.controller* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.controller*, %struct.controller** %2, align 8
  %34 = call i32 @ctrl_err(%struct.controller* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %44

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.controller*, %struct.controller** %2, align 8
  %42 = call i32 @ctrl_info(%struct.controller* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @shpc_poll_ctrl_busy(%struct.controller*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @is_ctrl_busy(%struct.controller*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
