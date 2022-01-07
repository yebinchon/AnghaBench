; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_disarm_piobufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_disarm_piobufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"disarm %u PIObufs first=%u\0A\00", align 1
@INFINIPATH_S_DISARM = common dso_local global i32 0, align 4
@INFINIPATH_S_DISARMPIOBUF_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_disarm_piobufs(%struct.ipath_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @PKT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ipath_cdbg(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %54, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %23, i32 0, i32 1
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @INFINIPATH_S_DISARM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INFINIPATH_S_DISARMPIOBUF_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %27, i32 %32, i32 %41)
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %43, i32 %48)
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 1
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %22
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %59 = call i32 @ipath_force_pio_avail_update(%struct.ipath_devdata* %58)
  ret void
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_force_pio_avail_update(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
