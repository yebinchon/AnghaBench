; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_freecshw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_freecshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @gigaset_freecshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_freecshw(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %3 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %4 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %3, i32 0, i32 1
  %5 = call i32 @tasklet_kill(i32* %4)
  %6 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %7 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @dev_set_drvdata(i32* %18, i32* null)
  %20 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @platform_device_unregister(%struct.TYPE_5__* %24)
  %26 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %27 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @kfree(%struct.TYPE_6__* %29)
  %31 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %33, align 8
  br label %34

34:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
