; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_tlbflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i32, i64, i32 }
%struct.agp_memory = type { i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@IOC_PCOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @parisc_agp_tlbflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parisc_agp_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca %struct._parisc_agp_info*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %3, align 8
  %4 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %5 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %8 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ilog2(i32 %9)
  %11 = or i32 %6, %10
  %12 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %13 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IOC_PCOM, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeq(i32 %11, i64 %16)
  %18 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %19 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IOC_PCOM, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readq(i64 %22)
  ret void
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
