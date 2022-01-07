; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_acquire_nvm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_acquire_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@E1000_NVM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@E1000_EECD_GNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not acquire NVM grant\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_acquire_nvm(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_EECD, align 4
  %7 = call i32 @rd32(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @E1000_NVM_GRANT_ATTEMPTS, align 8
  store i64 %8, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* @E1000_EECD, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @E1000_EECD_REQ, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @wr32(i32 %9, i32 %12)
  %14 = load i32, i32* @E1000_EECD, align 4
  %15 = call i32 @rd32(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @E1000_EECD_GNT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  %26 = call i32 @udelay(i32 5)
  %27 = load i32, i32* @E1000_EECD, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %4, align 8
  br label %16

31:                                               ; preds = %24, %16
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @E1000_EECD_REQ, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @E1000_EECD, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @wr32(i32 %39, i32 %40)
  %42 = call i32 @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* @E1000_ERR_NVM, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
