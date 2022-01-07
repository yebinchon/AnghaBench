; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_quiet_serdes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_quiet_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INFINIPATH_SERDC0_TXIDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Setting TxIdleEn on serdes (config0 = %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_ht_quiet_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_ht_quiet_serdes(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %4, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @INFINIPATH_SERDC0_TXIDLE, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ipath_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %16, i32 %21, i64 %22)
  ret void
}

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
