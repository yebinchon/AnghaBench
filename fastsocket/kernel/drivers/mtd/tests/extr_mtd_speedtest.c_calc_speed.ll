; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/tests/extr_mtd_speedtest.c_calc_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/tests/extr_mtd_speedtest.c_calc_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@finish = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@start = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@goodebcnt = common dso_local global i32 0, align 4
@mtd = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @calc_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_speed() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @finish, i32 0, i32 0), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start, i32 0, i32 0), align 4
  %6 = sub nsw i32 %4, %5
  %7 = mul nsw i32 %6, 1000
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @finish, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start, i32 0, i32 1), align 4
  %10 = sub nsw i32 %8, %9
  %11 = sdiv i32 %10, 1000
  %12 = add nsw i32 %7, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %1, align 8
  %14 = load i32, i32* @goodebcnt, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = sdiv i32 %18, 1024
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = mul nsw i64 %21, 1000
  %23 = load i64, i64* %1, align 8
  %24 = sdiv i64 %22, %23
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
