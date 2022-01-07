; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_handle_delayed_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_handle_delayed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i64, i64, %struct.TYPE_5__, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_event = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nes_handle_delayed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_handle_delayed_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nes_vnic*, align 8
  %4 = alloca %struct.ib_event, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.nes_vnic*
  store %struct.nes_vnic* %7, %struct.nes_vnic** %3, align 8
  %8 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %9 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %12 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %38

25:                                               ; preds = %15
  %26 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %27 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %31 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = call i32 @ib_dispatch_event(%struct.ib_event* %4)
  br label %37

37:                                               ; preds = %25, %1
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %40 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  ret void
}

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
