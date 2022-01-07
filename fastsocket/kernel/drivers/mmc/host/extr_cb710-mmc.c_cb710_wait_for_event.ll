; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_DUMP_REGS_MMC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, i32)* @cb710_wait_for_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_wait_for_event(%struct.cb710_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 2000000, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cb710_check_event(%struct.cb710_slot* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %19 = call i32 @cb710_slot_to_chip(%struct.cb710_slot* %18)
  %20 = load i32, i32* @CB710_DUMP_REGS_MMC, align 4
  %21 = call i32 @cb710_dump_regs(i32 %19, i32 %20)
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %13
  %25 = call i32 @udelay(i32 1)
  br label %7

26:                                               ; preds = %17, %7
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  ret i32 %33
}

declare dso_local i32 @cb710_check_event(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_dump_regs(i32, i32) #1

declare dso_local i32 @cb710_slot_to_chip(%struct.cb710_slot*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
