; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_terminate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WAIT_TIME_END = common dso_local global i32 0, align 4
@DEV_ZCORE_REIPL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@REIPL = common dso_local global i32 0, align 4
@LINUX_REBOOT_CMD_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WAIT_TIME_END, align 4
  %3 = call i32 @sleep(i32 %2)
  %4 = load i32, i32* @DEV_ZCORE_REIPL, align 4
  %5 = load i32, i32* @O_WRONLY, align 4
  %6 = call i32 @open(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @REIPL, align 4
  %13 = call i32 @write(i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @close(i32 %14)
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* @LINUX_REBOOT_CMD_POWER_OFF, align 4
  %18 = call i32 @reboot(i32 %17)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @reboot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
