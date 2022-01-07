; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_omap_mmc_notify_cover_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_omap_mmc_notify_cover_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mmc_omap_host = type { i32, %struct.mmc_omap_slot** }
%struct.mmc_omap_slot = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cover_switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_mmc_notify_cover_event(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_omap_host*, align 8
  %9 = alloca %struct.mmc_omap_slot*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mmc_omap_host* @dev_get_drvdata(%struct.device* %10)
  store %struct.mmc_omap_host* %11, %struct.mmc_omap_host** %8, align 8
  %12 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %8, align 8
  %13 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %12, i32 0, i32 1
  %14 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %14, i64 %16
  %18 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %17, align 8
  store %struct.mmc_omap_slot* %18, %struct.mmc_omap_slot** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %8, align 8
  %21 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %8, align 8
  %27 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %3
  %31 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %8, align 8
  %32 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %31, i32 0, i32 1
  %33 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %33, i64 %35
  %37 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %36, align 8
  %38 = icmp ne %struct.mmc_omap_slot* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30, %3
  br label %62

40:                                               ; preds = %30
  %41 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %9, align 8
  %42 = call i32 @mmc_omap_cover_is_open(%struct.mmc_omap_slot* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %9, align 8
  %45 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %9, align 8
  %51 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %9, align 8
  %53 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_notify(i32* %56, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %48, %40
  %59 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %9, align 8
  %60 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %59, i32 0, i32 1
  %61 = call i32 @tasklet_hi_schedule(i32* %60)
  br label %62

62:                                               ; preds = %58, %39
  ret void
}

declare dso_local %struct.mmc_omap_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_omap_cover_is_open(%struct.mmc_omap_slot*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
