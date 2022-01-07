; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmb_entry = type { %struct.pmb_entry* }

@pmb_list = common dso_local global %struct.pmb_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmb_entry*)* @pmb_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmb_list_add(%struct.pmb_entry* %0) #0 {
  %2 = alloca %struct.pmb_entry*, align 8
  %3 = alloca %struct.pmb_entry**, align 8
  %4 = alloca %struct.pmb_entry*, align 8
  store %struct.pmb_entry* %0, %struct.pmb_entry** %2, align 8
  store %struct.pmb_entry** @pmb_list, %struct.pmb_entry*** %3, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load %struct.pmb_entry**, %struct.pmb_entry*** %3, align 8
  %7 = load %struct.pmb_entry*, %struct.pmb_entry** %6, align 8
  store %struct.pmb_entry* %7, %struct.pmb_entry** %4, align 8
  %8 = icmp ne %struct.pmb_entry* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %11 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %10, i32 0, i32 0
  store %struct.pmb_entry** %11, %struct.pmb_entry*** %3, align 8
  br label %5

12:                                               ; preds = %5
  %13 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %14 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %15 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %14, i32 0, i32 0
  store %struct.pmb_entry* %13, %struct.pmb_entry** %15, align 8
  %16 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %17 = load %struct.pmb_entry**, %struct.pmb_entry*** %3, align 8
  store %struct.pmb_entry* %16, %struct.pmb_entry** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
