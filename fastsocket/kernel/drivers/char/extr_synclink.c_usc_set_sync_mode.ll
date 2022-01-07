; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MGSL_BUS_TYPE_ISA = common dso_local global i64 0, align 8
@PCR = common dso_local global i32 0, align 4
@BIT13 = common dso_local global i32 0, align 4
@BIT12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_sync_mode(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %3 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %4 = call i32 @usc_loopback_frame(%struct.mgsl_struct* %3)
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = call i32 @usc_set_sdlc_mode(%struct.mgsl_struct* %5)
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MGSL_BUS_TYPE_ISA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = load i32, i32* @PCR, align 4
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %16 = load i32, i32* @PCR, align 4
  %17 = call i32 @usc_InReg(%struct.mgsl_struct* %15, i32 %16)
  %18 = load i32, i32* @BIT13, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT12, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @usc_OutReg(%struct.mgsl_struct* %13, i32 %14, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %27 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usc_enable_aux_clock(%struct.mgsl_struct* %25, i32 %29)
  %31 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %38 = call i32 @usc_enable_loopback(%struct.mgsl_struct* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %24
  ret void
}

declare dso_local i32 @usc_loopback_frame(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_sdlc_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_enable_aux_clock(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_enable_loopback(%struct.mgsl_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
