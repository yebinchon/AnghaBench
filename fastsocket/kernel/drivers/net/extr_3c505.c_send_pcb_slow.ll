; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_pcb_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_pcb_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HCRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"3c505: send_pcb_slow timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @send_pcb_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pcb_slow(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %5, align 1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @outb_command(i8 zeroext %7, i32 %8)
  %10 = load i32, i32* @jiffies, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 5, %11
  %13 = sdiv i32 %12, 100
  %14 = add nsw i32 %10, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* @jiffies, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @time_before(i32 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @inb_status(i32 %22)
  %24 = load i32, i32* @HCRE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %31

28:                                               ; preds = %21
  br label %16

29:                                               ; preds = %16
  %30 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @outb_command(i8 zeroext, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @inb_status(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
