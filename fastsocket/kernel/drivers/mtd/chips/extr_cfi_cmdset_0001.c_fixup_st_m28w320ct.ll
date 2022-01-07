; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_fixup_st_m28w320ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_fixup_st_m28w320ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i8*)* @fixup_st_m28w320ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_st_m28w320ct(%struct.mtd_info* %0, i8* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.map_info*, %struct.map_info** %8, align 8
  store %struct.map_info* %9, %struct.map_info** %5, align 8
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 0
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %6, align 8
  %13 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %18 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
