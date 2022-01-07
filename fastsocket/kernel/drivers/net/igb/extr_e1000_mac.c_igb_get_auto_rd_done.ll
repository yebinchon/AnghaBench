; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_get_auto_rd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_get_auto_rd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@AUTO_READ_DONE_TIMEOUT = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_AUTO_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Auto read by HW from NVM has not completed.\0A\00", align 1
@E1000_ERR_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_get_auto_rd_done(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @AUTO_READ_DONE_TIMEOUT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32, i32* @E1000_EECD, align 4
  %11 = call i32 @rd32(i32 %10)
  %12 = load i32, i32* @E1000_EECD_AUTO_RD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %20

16:                                               ; preds = %9
  %17 = call i32 @msleep(i32 1)
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %5

20:                                               ; preds = %15, %5
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @AUTO_READ_DONE_TIMEOUT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @hw_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @E1000_ERR_RESET, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
