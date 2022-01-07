; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_set_recvptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_set_recvptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@FM_RPR1 = common dso_local global i32 0, align 4
@FM_SWPR1 = common dso_local global i32 0, align 4
@FM_WPR1 = common dso_local global i32 0, align 4
@FM_EARV1 = common dso_local global i32 0, align 4
@FM_RPR2 = common dso_local global i32 0, align 4
@FM_SWPR2 = common dso_local global i32 0, align 4
@FM_WPR2 = common dso_local global i32 0, align 4
@FM_EARV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @set_recvptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_recvptr(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_RPR1, align 4
  %4 = call i32 @FM_A(i32 %3)
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @outpw(i32 %4, i64 %10)
  %12 = load i32, i32* @FM_SWPR1, align 4
  %13 = call i32 @FM_A(i32 %12)
  %14 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @outpw(i32 %13, i64 %19)
  %21 = load i32, i32* @FM_WPR1, align 4
  %22 = call i32 @FM_A(i32 %21)
  %23 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @outpw(i32 %22, i64 %28)
  %30 = load i32, i32* @FM_EARV1, align 4
  %31 = call i32 @FM_A(i32 %30)
  %32 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %33 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @outpw(i32 %31, i64 %38)
  %40 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %41 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %1
  %48 = load i32, i32* @FM_RPR2, align 4
  %49 = call i32 @FM_A(i32 %48)
  %50 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %51 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @outpw(i32 %49, i64 %55)
  %57 = load i32, i32* @FM_SWPR2, align 4
  %58 = call i32 @FM_A(i32 %57)
  %59 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %60 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @outpw(i32 %58, i64 %64)
  %66 = load i32, i32* @FM_WPR2, align 4
  %67 = call i32 @FM_A(i32 %66)
  %68 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %69 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @outpw(i32 %67, i64 %73)
  %75 = load i32, i32* @FM_EARV2, align 4
  %76 = call i32 @FM_A(i32 %75)
  %77 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %78 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @outpw(i32 %76, i64 %83)
  br label %126

85:                                               ; preds = %1
  %86 = load i32, i32* @FM_RPR2, align 4
  %87 = call i32 @FM_A(i32 %86)
  %88 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %89 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 1
  %95 = call i32 @outpw(i32 %87, i64 %94)
  %96 = load i32, i32* @FM_SWPR2, align 4
  %97 = call i32 @FM_A(i32 %96)
  %98 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %99 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @outpw(i32 %97, i64 %104)
  %106 = load i32, i32* @FM_WPR2, align 4
  %107 = call i32 @FM_A(i32 %106)
  %108 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %109 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, 1
  %115 = call i32 @outpw(i32 %107, i64 %114)
  %116 = load i32, i32* @FM_EARV2, align 4
  %117 = call i32 @FM_A(i32 %116)
  %118 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %119 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 1
  %125 = call i32 @outpw(i32 %117, i64 %124)
  br label %126

126:                                              ; preds = %85, %47
  ret void
}

declare dso_local i32 @outpw(i32, i64) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
