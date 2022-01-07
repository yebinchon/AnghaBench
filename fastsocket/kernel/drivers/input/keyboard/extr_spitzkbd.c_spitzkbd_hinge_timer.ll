; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_hinge_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_hinge_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spitzkbd = type { i32, i32, i32 }

@SPITZ_GPIO_SWA = common dso_local global i32 0, align 4
@SPITZ_GPIO_SWB = common dso_local global i32 0, align 4
@SPITZ_GPIO_AK_INT = common dso_local global i32 0, align 4
@sharpsl_hinge_state = common dso_local global i64 0, align 8
@hinge_count = common dso_local global i64 0, align 8
@HINGE_STABLE_COUNT = common dso_local global i64 0, align 8
@SW_LID = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@SW_HEADPHONE_INSERT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HINGE_SCAN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @spitzkbd_hinge_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitzkbd_hinge_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.spitzkbd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.spitzkbd*
  store %struct.spitzkbd* %7, %struct.spitzkbd** %3, align 8
  %8 = load i32, i32* @SPITZ_GPIO_SWA, align 4
  %9 = call i64 @GPLR(i32 %8)
  %10 = load i32, i32* @SPITZ_GPIO_SWA, align 4
  %11 = call i64 @GPIO_bit(i32 %10)
  %12 = load i32, i32* @SPITZ_GPIO_SWB, align 4
  %13 = call i64 @GPIO_bit(i32 %12)
  %14 = or i64 %11, %13
  %15 = and i64 %9, %14
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @SPITZ_GPIO_AK_INT, align 4
  %17 = call i64 @GPLR(i32 %16)
  %18 = load i32, i32* @SPITZ_GPIO_AK_INT, align 4
  %19 = call i64 @GPIO_bit(i32 %18)
  %20 = and i64 %17, %19
  %21 = load i64, i64* %4, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @sharpsl_hinge_state, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  store i64 0, i64* @hinge_count, align 8
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* @sharpsl_hinge_state, align 8
  br label %36

28:                                               ; preds = %1
  %29 = load i64, i64* @hinge_count, align 8
  %30 = load i64, i64* @HINGE_STABLE_COUNT, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @hinge_count, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @hinge_count, align 8
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i64, i64* @hinge_count, align 8
  %38 = load i64, i64* @HINGE_STABLE_COUNT, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %42 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %46 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SW_LID, align 4
  %49 = load i32, i32* @SPITZ_GPIO_SWA, align 4
  %50 = call i64 @GPLR(i32 %49)
  %51 = load i32, i32* @SPITZ_GPIO_SWA, align 4
  %52 = call i64 @GPIO_bit(i32 %51)
  %53 = and i64 %50, %52
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @input_report_switch(i32 %47, i32 %48, i32 %55)
  %57 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %58 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SW_TABLET_MODE, align 4
  %61 = load i32, i32* @SPITZ_GPIO_SWB, align 4
  %62 = call i64 @GPLR(i32 %61)
  %63 = load i32, i32* @SPITZ_GPIO_SWB, align 4
  %64 = call i64 @GPIO_bit(i32 %63)
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @input_report_switch(i32 %59, i32 %60, i32 %67)
  %69 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %70 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SW_HEADPHONE_INSERT, align 4
  %73 = load i32, i32* @SPITZ_GPIO_AK_INT, align 4
  %74 = call i64 @GPLR(i32 %73)
  %75 = load i32, i32* @SPITZ_GPIO_AK_INT, align 4
  %76 = call i64 @GPIO_bit(i32 %75)
  %77 = and i64 %74, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @input_report_switch(i32 %71, i32 %72, i32 %79)
  %81 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %82 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @input_sync(i32 %83)
  %85 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %86 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %85, i32 0, i32 1
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %97

89:                                               ; preds = %36
  %90 = load %struct.spitzkbd*, %struct.spitzkbd** %3, align 8
  %91 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %90, i32 0, i32 0
  %92 = load i64, i64* @jiffies, align 8
  %93 = load i32, i32* @HINGE_SCAN_INTERVAL, align 4
  %94 = call i64 @msecs_to_jiffies(i32 %93)
  %95 = add nsw i64 %92, %94
  %96 = call i32 @mod_timer(i32* %91, i64 %95)
  br label %97

97:                                               ; preds = %89, %40
  ret void
}

declare dso_local i64 @GPLR(i32) #1

declare dso_local i64 @GPIO_bit(i32) #1

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
