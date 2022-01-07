; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_print_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_print_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i32, i32, i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CM Core  -- (core = %p )\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"State         : %u \0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Listen Nodes  : %u \0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Active Nodes  : %u \0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"core          : %p \0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"-------------- end core ---------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_core*)* @print_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_core(%struct.nes_cm_core* %0) #0 {
  %2 = alloca %struct.nes_cm_core*, align 8
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %2, align 8
  %3 = load i32, i32* @NES_DBG_CM, align 4
  %4 = call i32 (i32, i8*, ...) @nes_debug(i32 %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @NES_DBG_CM, align 4
  %6 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %7 = call i32 (i32, i8*, ...) @nes_debug(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.nes_cm_core* %6)
  %8 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %9 = icmp ne %struct.nes_cm_core* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @NES_DBG_CM, align 4
  %13 = call i32 (i32, i8*, ...) @nes_debug(i32 %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @NES_DBG_CM, align 4
  %15 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %16 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @nes_debug(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @NES_DBG_CM, align 4
  %20 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %21 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %20, i32 0, i32 1
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 (i32, i8*, ...) @nes_debug(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @NES_DBG_CM, align 4
  %25 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %26 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i32 (i32, i8*, ...) @nes_debug(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @NES_DBG_CM, align 4
  %30 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %31 = call i32 (i32, i8*, ...) @nes_debug(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.nes_cm_core* %30)
  %32 = load i32, i32* @NES_DBG_CM, align 4
  %33 = call i32 (i32, i8*, ...) @nes_debug(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
