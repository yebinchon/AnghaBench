; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_budget_av_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_budget_av_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.budget_av = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"dev: %p\0A\00", align 1
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @budget_av_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_av_detach(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.budget_av*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %5 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.budget_av*
  store %struct.budget_av* %8, %struct.budget_av** %3, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %10 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %9)
  %11 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %12 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 1, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %17 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %18 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %16, i32 0, i32 %17)
  %19 = call i32 @msleep(i32 200)
  %20 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %21 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %20, i32 0, i32 2
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %23 = call i32 @saa7146_unregister_device(i32* %21, %struct.saa7146_dev* %22)
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %25 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %24)
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %28 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %34 = call i32 @ciintf_deinit(%struct.budget_av* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %37 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %43 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @dvb_unregister_frontend(i32* %45)
  %47 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %48 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dvb_frontend_detach(i32* %50)
  br label %52

52:                                               ; preds = %41, %35
  %53 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %54 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %53, i32 0, i32 1
  %55 = call i32 @ttpci_budget_deinit(%struct.TYPE_2__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.budget_av*, %struct.budget_av** %3, align 8
  %57 = call i32 @kfree(%struct.budget_av* %56)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa7146_unregister_device(i32*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

declare dso_local i32 @ciintf_deinit(%struct.budget_av*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @ttpci_budget_deinit(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.budget_av*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
