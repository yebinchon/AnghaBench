; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_corgikbd.c_corgikbd_hinge_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_corgikbd.c_corgikbd_hinge_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.corgikbd = type { i32, i32, i32 }

@corgiscoop_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SCOOP_GPRR = common dso_local global i32 0, align 4
@CORGI_SCP_SWA = common dso_local global i64 0, align 8
@CORGI_SCP_SWB = common dso_local global i64 0, align 8
@CORGI_GPIO_AK_INT = common dso_local global i32 0, align 4
@sharpsl_hinge_state = common dso_local global i64 0, align 8
@hinge_count = common dso_local global i64 0, align 8
@HINGE_STABLE_COUNT = common dso_local global i64 0, align 8
@SW_LID = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@SW_HEADPHONE_INSERT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HINGE_SCAN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @corgikbd_hinge_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgikbd_hinge_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.corgikbd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.corgikbd*
  store %struct.corgikbd* %7, %struct.corgikbd** %3, align 8
  %8 = load i32, i32* @SCOOP_GPRR, align 4
  %9 = call i64 @read_scoop_reg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @corgiscoop_device, i32 0, i32 0), i32 %8)
  %10 = load i64, i64* @CORGI_SCP_SWA, align 8
  %11 = load i64, i64* @CORGI_SCP_SWB, align 8
  %12 = or i64 %10, %11
  %13 = and i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @CORGI_GPIO_AK_INT, align 4
  %15 = call i64 @READ_GPIO_BIT(i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @sharpsl_hinge_state, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  store i64 0, i64* @hinge_count, align 8
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* @sharpsl_hinge_state, align 8
  br label %80

26:                                               ; preds = %1
  %27 = load i64, i64* @hinge_count, align 8
  %28 = load i64, i64* @HINGE_STABLE_COUNT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load i64, i64* @hinge_count, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @hinge_count, align 8
  %33 = load i64, i64* @hinge_count, align 8
  %34 = load i64, i64* @HINGE_STABLE_COUNT, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %30
  %37 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %38 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %42 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SW_LID, align 4
  %45 = load i64, i64* @sharpsl_hinge_state, align 8
  %46 = load i64, i64* @CORGI_SCP_SWA, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @input_report_switch(i32 %43, i32 %44, i32 %49)
  %51 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %52 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SW_TABLET_MODE, align 4
  %55 = load i64, i64* @sharpsl_hinge_state, align 8
  %56 = load i64, i64* @CORGI_SCP_SWB, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @input_report_switch(i32 %53, i32 %54, i32 %59)
  %61 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %62 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SW_HEADPHONE_INSERT, align 4
  %65 = load i32, i32* @CORGI_GPIO_AK_INT, align 4
  %66 = call i64 @READ_GPIO_BIT(i32 %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @input_report_switch(i32 %63, i32 %64, i32 %68)
  %70 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %71 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @input_sync(i32 %72)
  %74 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %75 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %74, i32 0, i32 1
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %36, %30
  br label %79

79:                                               ; preds = %78, %26
  br label %80

80:                                               ; preds = %79, %24
  %81 = load %struct.corgikbd*, %struct.corgikbd** %3, align 8
  %82 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %81, i32 0, i32 0
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i32, i32* @HINGE_SCAN_INTERVAL, align 4
  %85 = call i64 @msecs_to_jiffies(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @mod_timer(i32* %82, i64 %86)
  ret void
}

declare dso_local i64 @read_scoop_reg(i32*, i32) #1

declare dso_local i64 @READ_GPIO_BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
