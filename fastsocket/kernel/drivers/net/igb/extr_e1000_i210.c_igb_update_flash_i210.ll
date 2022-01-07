; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_update_flash_i210.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_update_flash_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Flash update time out\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_FLUPD_I210 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Flash update complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_update_flash_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @E1000_ERR_NVM, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_EECD, align 4
  %16 = call i32 @rd32(i32 %15)
  %17 = load i32, i32* @E1000_EECD_FLUPD_I210, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @E1000_EECD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wr32(i32 %19, i32 %20)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = call i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @E1000_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %31

29:                                               ; preds = %14
  %30 = call i32 @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
