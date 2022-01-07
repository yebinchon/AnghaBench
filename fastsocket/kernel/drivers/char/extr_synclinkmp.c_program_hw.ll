; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_program_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, i64, i64, i64, i64, i64, %struct.TYPE_15__, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@CDCD = common dso_local global i32 0, align 4
@CCTS = common dso_local global i32 0, align 4
@IE1 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hw(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = call i32 @rx_stop(%struct.TYPE_19__* %8)
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = call i32 @tx_stop(%struct.TYPE_19__* %10)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 9
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = call i32 @hdlc_mode(%struct.TYPE_19__* %30)
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = call i32 @async_mode(%struct.TYPE_19__* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = call i32 @set_signals(%struct.TYPE_19__* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @CDCD, align 4
  %47 = load i32, i32* @CCTS, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = load i32, i32* @IE1, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @write_reg(%struct.TYPE_19__* %53, i32 %54, i32 %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = call i32 @get_signals(%struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %35
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CREAD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71, %35
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = call i32 @rx_start(%struct.TYPE_19__* %84)
  br label %86

86:                                               ; preds = %83, %71, %65
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rx_stop(%struct.TYPE_19__*) #1

declare dso_local i32 @tx_stop(%struct.TYPE_19__*) #1

declare dso_local i32 @hdlc_mode(%struct.TYPE_19__*) #1

declare dso_local i32 @async_mode(%struct.TYPE_19__*) #1

declare dso_local i32 @set_signals(%struct.TYPE_19__*) #1

declare dso_local i32 @write_reg(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @get_signals(%struct.TYPE_19__*) #1

declare dso_local i32 @rx_start(%struct.TYPE_19__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
