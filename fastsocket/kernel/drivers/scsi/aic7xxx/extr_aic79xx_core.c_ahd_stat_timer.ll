; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stat_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64, i64, i32, i32*, i32 }

@ENINT_COALESCE = common dso_local global i32 0, align 4
@AHD_STAT_BUCKETS = common dso_local global i32 0, align 4
@AHD_STAT_UPDATE_US = common dso_local global i32 0, align 4
@AHD_SHOW_INT_COALESCING = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahd_stat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_stat_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ahd_softc*
  store %struct.ahd_softc* %7, %struct.ahd_softc** %3, align 8
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %9 = call i32 @ahd_lock(%struct.ahd_softc* %8, i32* %4)
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ENINT_COALESCE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @ENINT_COALESCE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @ENINT_COALESCE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %26
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ENINT_COALESCE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ahd_enable_coalescing(%struct.ahd_softc* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @AHD_STAT_BUCKETS, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %85 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %84, i32 0, i32 6
  %86 = load i32, i32* @AHD_STAT_UPDATE_US, align 4
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %88 = call i32 @ahd_timer_reset(i32* %85, i32 %86, void (i8*)* @ahd_stat_timer, %struct.ahd_softc* %87)
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %90 = call i32 @ahd_unlock(%struct.ahd_softc* %89, i32* %4)
  ret void
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i32*) #1

declare dso_local i32 @ahd_enable_coalescing(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_timer_reset(i32*, i32, void (i8*)*, %struct.ahd_softc*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
