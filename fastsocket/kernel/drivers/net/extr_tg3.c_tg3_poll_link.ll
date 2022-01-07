; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_poll_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tg3_hw_status* }
%struct.tg3_hw_status = type { i32 }

@USE_LINKCHG_REG = common dso_local global i32 0, align 4
@POLL_SERDES = common dso_local global i32 0, align 4
@SD_STATUS_LINK_CHG = common dso_local global i32 0, align 4
@SD_STATUS_UPDATED = common dso_local global i32 0, align 4
@USE_PHYLIB = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_SYNC_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_CFG_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_MI_COMPLETION = common dso_local global i32 0, align 4
@MAC_STATUS_LNKSTATE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_poll_link(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca %struct.tg3_hw_status*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @USE_LINKCHG_REG, align 4
  %6 = call i64 @tg3_flag(%struct.tg3* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %1
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = load i32, i32* @POLL_SERDES, align 4
  %11 = call i64 @tg3_flag(%struct.tg3* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %8
  %14 = load %struct.tg3*, %struct.tg3** %2, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %18, align 8
  store %struct.tg3_hw_status* %19, %struct.tg3_hw_status** %3, align 8
  %20 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %3, align 8
  %21 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SD_STATUS_LINK_CHG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %13
  %27 = load i32, i32* @SD_STATUS_UPDATED, align 4
  %28 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %3, align 8
  %29 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SD_STATUS_LINK_CHG, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = or i32 %27, %33
  %35 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %3, align 8
  %36 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tg3*, %struct.tg3** %2, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.tg3*, %struct.tg3** %2, align 8
  %41 = load i32, i32* @USE_PHYLIB, align 4
  %42 = call i64 @tg3_flag(%struct.tg3* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %26
  %45 = load i32, i32* @MAC_STATUS, align 4
  %46 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %47 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MAC_STATUS_MI_COMPLETION, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MAC_STATUS_LNKSTATE_CHANGED, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @tw32_f(i32 %45, i32 %52)
  %54 = call i32 @udelay(i32 40)
  br label %58

55:                                               ; preds = %26
  %56 = load %struct.tg3*, %struct.tg3** %2, align 8
  %57 = call i32 @tg3_setup_phy(%struct.tg3* %56, i32 0)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.tg3*, %struct.tg3** %2, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %13
  br label %63

63:                                               ; preds = %62, %8, %1
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_setup_phy(%struct.tg3*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
