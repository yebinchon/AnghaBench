; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_set_performant_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_set_performant_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32*, i32, i32 }
%struct.CommandList = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CFGTBL_Trans_Performant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @set_performant_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_performant_mode(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %5 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %6 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CFGTBL_Trans_Performant, align 4
  %9 = and i32 %7, %8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %17 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = or i32 1, %22
  %24 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %25 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %12
  %34 = call i32 (...) @smp_processor_id()
  %35 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %36 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %34, %37
  %39 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %40 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %33, %12
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
