; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_release_simq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_release_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_linux_release_simq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_release_simq(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = call i32 @ahc_lock(%struct.ahc_softc* %5, i32* %3)
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %30 = call i32 @ahc_unlock(%struct.ahc_softc* %29, i32* %3)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @scsi_unblock_requests(i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
