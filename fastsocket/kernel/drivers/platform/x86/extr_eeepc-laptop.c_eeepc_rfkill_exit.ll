; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P5\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P6\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P7\00", align 1
@ehotk = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @eeepc_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_rfkill_exit() #0 {
  %1 = call i32 @eeepc_unregister_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @eeepc_unregister_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @eeepc_unregister_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @rfkill_unregister(i32* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @rfkill_destroy(i32* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %8, %0
  %20 = call i32 (...) @eeepc_rfkill_hotplug()
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pci_hp_deregister(i64 %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @rfkill_unregister(i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @rfkill_destroy(i32* %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rfkill_unregister(i32* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @rfkill_destroy(i32* %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %51, %46
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rfkill_unregister(i32* %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @rfkill_destroy(i32* %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @eeepc_unregister_rfkill_notifier(i8*) #1

declare dso_local i32 @rfkill_unregister(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i32 @eeepc_rfkill_hotplug(...) #1

declare dso_local i32 @pci_hp_deregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
