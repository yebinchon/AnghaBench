; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_rbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_rbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FM_RPXA1 = common dso_local global i32 0, align 4
@FM_WPXA1 = common dso_local global i32 0, align 4
@FM_SWPXA1 = common dso_local global i32 0, align 4
@FM_EAA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @init_rbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rbc(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i64, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, 1
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @FM_RPXA1, align 4
  %12 = call i32 @FM_A(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @outpw(i32 %12, i64 %13)
  %15 = load i32, i32* @FM_WPXA1, align 4
  %16 = call i32 @FM_A(i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @outpw(i32 %16, i64 %17)
  %19 = load i32, i32* @FM_SWPXA1, align 4
  %20 = call i32 @FM_A(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @outpw(i32 %20, i64 %21)
  %23 = load i32, i32* @FM_EAA1, align 4
  %24 = call i32 @FM_A(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @outpw(i32 %24, i64 %25)
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = call i32 @set_recvptr(%struct.s_smc* %27)
  %29 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %30 = call i32 @set_txptr(%struct.s_smc* %29)
  ret void
}

declare dso_local i32 @outpw(i32, i64) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @set_recvptr(%struct.s_smc*) #1

declare dso_local i32 @set_txptr(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
