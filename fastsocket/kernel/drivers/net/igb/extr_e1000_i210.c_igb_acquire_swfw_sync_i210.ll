; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_acquire_swfw_sync_i210.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_acquire_swfw_sync_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@E1000_SW_FW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_acquire_swfw_sync_i210(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 16
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 200, i64* %10, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i64 @igb_get_hw_semaphore_i210(%struct.e1000_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %8, align 8
  br label %59

26:                                               ; preds = %19
  %27 = load i32, i32* @E1000_SW_FW_SYNC, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = call i32 @igb_put_hw_semaphore(%struct.e1000_hw* %37)
  %39 = call i32 @mdelay(i32 5)
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %15

42:                                               ; preds = %35, %15
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 @hw_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %8, align 8
  br label %59

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @E1000_SW_FW_SYNC, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = call i32 @igb_put_hw_semaphore(%struct.e1000_hw* %57)
  br label %59

59:                                               ; preds = %50, %46, %23
  %60 = load i64, i64* %8, align 8
  ret i64 %60
}

declare dso_local i64 @igb_get_hw_semaphore_i210(%struct.e1000_hw*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_put_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
