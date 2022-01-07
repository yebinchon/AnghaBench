; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_lan_init_done_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_lan_init_done_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ICH8_LAN_INIT_TIMEOUT = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LAN_INIT_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"LAN_INIT_DONE not set, increase timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_lan_init_done_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_lan_init_done_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i64, i64* @E1000_ICH8_LAN_INIT_TIMEOUT, align 8
  store i64 %5, i64* %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* @STATUS, align 4
  %8 = call i64 @er32(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* @E1000_STATUS_LAN_INIT_DONE, align 8
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = call i32 @usleep_range(i32 100, i32 200)
  br label %13

13:                                               ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %6, label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @STATUS, align 4
  %29 = call i64 @er32(i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* @E1000_STATUS_LAN_INIT_DONE, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %3, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* @STATUS, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @ew32(i32 %34, i64 %35)
  ret void
}

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
