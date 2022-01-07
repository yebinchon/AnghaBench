; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cb710_slot = type { i32 }
%struct.cb710_mmc_reader = type { i32, %struct.mmc_request* }

@CB710_MMC_IE_TEST_MASK = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @cb710_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.cb710_slot*, align 8
  %6 = alloca %struct.cb710_mmc_reader*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %7)
  store %struct.cb710_slot* %8, %struct.cb710_slot** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %9)
  store %struct.cb710_mmc_reader* %10, %struct.cb710_mmc_reader** %6, align 8
  %11 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %12 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %11, i32 0, i32 1
  %13 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  %14 = icmp ne %struct.mmc_request* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %19 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %18, i32 0, i32 1
  store %struct.mmc_request* %17, %struct.mmc_request** %19, align 8
  %20 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %21 = load i32, i32* @CB710_MMC_IE_TEST_MASK, align 4
  %22 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %20, i32 %21, i32 0)
  %23 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %24 = call i64 @cb710_mmc_is_card_inserted(%struct.cb710_slot* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @cb710_mmc_command(%struct.mmc_host* %27, %struct.TYPE_2__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @cb710_mmc_command(%struct.mmc_host* %39, %struct.TYPE_2__* %42)
  br label %44

44:                                               ; preds = %38, %33, %26
  %45 = call i32 @mdelay(i32 1)
  br label %53

46:                                               ; preds = %2
  %47 = load i32, i32* @ENOMEDIUM, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %44
  %54 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %55 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %54, i32 0, i32 0
  %56 = call i32 @tasklet_schedule(i32* %55)
  ret void
}

declare dso_local %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

declare dso_local i64 @cb710_mmc_is_card_inserted(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_mmc_command(%struct.mmc_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
