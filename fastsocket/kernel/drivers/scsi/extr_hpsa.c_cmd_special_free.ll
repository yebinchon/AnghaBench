; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_special_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_special_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { i32, %struct.CommandList*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%union.u64bit = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@DIRECT_LOOKUP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @cmd_special_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_special_free(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %union.u64bit, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %7 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.u64bit* %5 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %14 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = bitcast %union.u64bit* %5 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %24 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %23, i32 0, i32 1
  %25 = load %struct.CommandList*, %struct.CommandList** %24, align 8
  %26 = bitcast %union.u64bit* %5 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @pci_free_consistent(i32 %22, i32 24, %struct.CommandList* %25, i32 %28)
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %34 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %35 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DIRECT_LOOKUP_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @pci_free_consistent(i32 %32, i32 24, %struct.CommandList* %33, i32 %38)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.CommandList*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
