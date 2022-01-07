; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fetch_transinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fetch_transinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_initiator_tinfo = type { i32 }
%struct.ahc_softc = type { %struct.ahc_tmode_tstate** }
%struct.ahc_tmode_tstate = type { %struct.ahc_initiator_tinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %0, i8 signext %1, i32 %2, i32 %3, %struct.ahc_tmode_tstate** %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahc_tmode_tstate**, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ahc_tmode_tstate** %4, %struct.ahc_tmode_tstate*** %10, align 8
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 66
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %14, %5
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 0
  %20 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %20, i64 %22
  %24 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %23, align 8
  %25 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %10, align 8
  store %struct.ahc_tmode_tstate* %24, %struct.ahc_tmode_tstate** %25, align 8
  %26 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %10, align 8
  %27 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %26, align 8
  %28 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %27, i32 0, i32 0
  %29 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %29, i64 %31
  ret %struct.ahc_initiator_tinfo* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
