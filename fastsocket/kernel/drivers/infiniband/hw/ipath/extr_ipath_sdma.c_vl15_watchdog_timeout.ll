; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_vl15_watchdog_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_vl15_watchdog_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"vl15 watchdog timeout - clearing\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"vl15 watchdog timeout - condition already cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vl15_watchdog_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vl15_watchdog_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ipath_devdata*
  store %struct.ipath_devdata* %5, %struct.ipath_devdata** %3, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 0
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 @ipath_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %13 = call i32 @ipath_cancel_sends(%struct.ipath_devdata* %12, i32 1)
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %15 = call i32 @ipath_hol_down(%struct.ipath_devdata* %14)
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @ipath_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @ipath_cancel_sends(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_hol_down(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
