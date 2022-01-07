; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@clkdm_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"clockdomain: unregistered %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_unregister(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %4 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %5 = icmp ne %struct.clockdomain* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %11 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %15 = call i32 @pwrdm_del_clkdm(i32 %13, %struct.clockdomain* %14)
  %16 = call i32 @mutex_lock(i32* @clkdm_mutex)
  %17 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %18 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = call i32 @mutex_unlock(i32* @clkdm_mutex)
  %21 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %22 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %9, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pwrdm_del_clkdm(i32, %struct.clockdomain*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
