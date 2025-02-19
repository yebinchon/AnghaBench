; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_service_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_service_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32 }

@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ixgbe_service_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_service_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %3, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @HZ, align 4
  %16 = sdiv i32 %15, 10
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @jiffies, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @mod_timer(i32* %24, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %33 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %32)
  br label %34

34:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
