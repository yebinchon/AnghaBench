; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_update_neg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_update_neg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@AHC_NEG_ALWAYS = common dso_local global i64 0, align 8
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_WIDTH_UNKNOWN = common dso_local global i64 0, align 8
@AHC_PERIOD_UNKNOWN = common dso_local global i64 0, align 8
@AHC_OFFSET_UNKNOWN = common dso_local global i64 0, align 8
@AHC_NEG_IF_NON_ASYNC = common dso_local global i64 0, align 8
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_update_neg_request(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, %struct.ahc_tmode_tstate* %2, %struct.ahc_initiator_tinfo* %3, i64 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_devinfo*, align 8
  %8 = alloca %struct.ahc_tmode_tstate*, align 8
  %9 = alloca %struct.ahc_initiator_tinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %7, align 8
  store %struct.ahc_tmode_tstate* %2, %struct.ahc_tmode_tstate** %8, align 8
  store %struct.ahc_initiator_tinfo* %3, %struct.ahc_initiator_tinfo** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %13 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @AHC_NEG_ALWAYS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %5
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AHC_WIDE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i64, i64* @AHC_WIDTH_UNKNOWN, align 8
  %27 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %28 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i64, i64* @AHC_PERIOD_UNKNOWN, align 8
  %32 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %33 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* @AHC_OFFSET_UNKNOWN, align 8
  %36 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %37 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %5
  %40 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %41 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %45 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %102, label %49

49:                                               ; preds = %39
  %50 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %51 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %55 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %102, label %59

59:                                               ; preds = %49
  %60 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %61 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %65 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %102, label %69

69:                                               ; preds = %59
  %70 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %71 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %75 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %102, label %79

79:                                               ; preds = %69
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @AHC_NEG_IF_NON_ASYNC, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %85 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %83
  %90 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %91 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %9, align 8
  %98 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96, %89, %83, %69, %59, %49, %39
  %103 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %104 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %107 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %119

110:                                              ; preds = %96, %79
  %111 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %112 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %116 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %110, %102
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %122 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  %125 = zext i1 %124 to i32
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
