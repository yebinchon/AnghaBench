; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_dbusy_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_dbusy_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i64, i32, %struct.w6692_hw* }
%struct.w6692_hw = type { i32, i32 }

@FLG_BUSY_TIMER = common dso_local global i32 0, align 4
@W_D_RBCH = common dso_local global i32 0, align 4
@W_D_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", align 1
@W_D_STAR_XBZ = common dso_local global i32 0, align 4
@FLG_L1_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: W6692 D-Channel Busy no tx_idx\0A\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_XRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dchannel*)* @dbusy_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbusy_timer_handler(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %7 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %8 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %7, i32 0, i32 2
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %8, align 8
  store %struct.w6692_hw* %9, %struct.w6692_hw** %3, align 8
  %10 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %11 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %12 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %1
  %16 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %17 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @spin_lock_irqsave(i32* %17, i32 %18)
  %20 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %21 = load i32, i32* @W_D_RBCH, align 4
  %22 = call i32 @ReadW6692(%struct.w6692_hw* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %24 = load i32, i32* @W_D_STAR, align 4
  %25 = call i32 @ReadW6692(%struct.w6692_hw* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %27 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @W_D_STAR_XBZ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %15
  %37 = load i32, i32* @FLG_L1_BUSY, align 4
  %38 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %39 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %38, i32 0, i32 1
  %40 = call i32 @test_and_set_bit(i32 %37, i32* %39)
  br label %63

41:                                               ; preds = %15
  %42 = load i32, i32* @FLG_BUSY_TIMER, align 4
  %43 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %44 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %43, i32 0, i32 1
  %45 = call i32 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %47 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %52 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %58

53:                                               ; preds = %41
  %54 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %55 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %60 = load i32, i32* @W_D_CMDR, align 4
  %61 = load i32, i32* @W_D_CMDR_XRST, align 4
  %62 = call i32 @WriteW6692(%struct.w6692_hw* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %65 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
