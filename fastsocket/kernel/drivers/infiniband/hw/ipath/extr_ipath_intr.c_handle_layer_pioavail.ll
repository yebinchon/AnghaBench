; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_layer_pioavail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_layer_pioavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@INFINIPATH_S_PIOINTBUFAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @handle_layer_pioavail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_layer_pioavail(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ipath_ib_piobufavail(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %13

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %11
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @INFINIPATH_S_PIOINTBUFAVAIL, align 4
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %23, i32 %28, i32 %31)
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %33, i32 %38)
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 0
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ipath_ib_piobufavail(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
