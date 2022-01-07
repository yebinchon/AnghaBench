; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_reset_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_reset_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@CMD_SOFTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @reset_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_card(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  store %struct.airo_info* %9, %struct.airo_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %14 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %13, i32 0, i32 0
  %15 = call i64 @down_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %36

18:                                               ; preds = %12, %2
  %19 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %20 = call i32 @waitbusy(%struct.airo_info* %19)
  %21 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %22 = load i32, i32* @COMMAND, align 4
  %23 = load i32, i32* @CMD_SOFTRESET, align 4
  %24 = call i32 @OUT4500(%struct.airo_info* %21, i32 %22, i32 %23)
  %25 = call i32 @msleep(i32 200)
  %26 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %27 = call i32 @waitbusy(%struct.airo_info* %26)
  %28 = call i32 @msleep(i32 200)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %33 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %32, i32 0, i32 0
  %34 = call i32 @up(i32* %33)
  br label %35

35:                                               ; preds = %31, %18
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @waitbusy(%struct.airo_info*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
