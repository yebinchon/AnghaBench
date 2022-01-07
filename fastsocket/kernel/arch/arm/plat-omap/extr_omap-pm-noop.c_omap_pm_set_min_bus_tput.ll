; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap-pm-noop.c_omap_pm_set_min_bus_tput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap-pm-noop.c_omap_pm_set_min_bus_tput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@OCP_INITIATOR_AGENT = common dso_local global i64 0, align 8
@OCP_TARGET_AGENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"OMAP PM: remove min bus tput constraint: dev %s for agent_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"OMAP PM: add min bus tput constraint: dev %s for agent_id %d: rate %ld KiB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_pm_set_min_bus_tput(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @OCP_INITIATOR_AGENT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @OCP_TARGET_AGENT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = call i32 @WARN_ON(i32 1)
  br label %33

19:                                               ; preds = %13, %9
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_name(%struct.device* %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %17, %27, %22
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
