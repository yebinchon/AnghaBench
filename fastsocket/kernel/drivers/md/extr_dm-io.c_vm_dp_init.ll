; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_vm_dp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_vm_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { i64, i8*, i32, i32 }

@vm_get_page = common dso_local global i32 0, align 4
@vm_next_page = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*, i8*)* @vm_dp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_dp_init(%struct.dpages* %0, i8* %1) #0 {
  %3 = alloca %struct.dpages*, align 8
  %4 = alloca i8*, align 8
  store %struct.dpages* %0, %struct.dpages** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @vm_get_page, align 4
  %6 = load %struct.dpages*, %struct.dpages** %3, align 8
  %7 = getelementptr inbounds %struct.dpages, %struct.dpages* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @vm_next_page, align 4
  %9 = load %struct.dpages*, %struct.dpages** %3, align 8
  %10 = getelementptr inbounds %struct.dpages, %struct.dpages* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = and i64 %12, %15
  %17 = load %struct.dpages*, %struct.dpages** %3, align 8
  %18 = getelementptr inbounds %struct.dpages, %struct.dpages* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.dpages*, %struct.dpages** %3, align 8
  %21 = getelementptr inbounds %struct.dpages, %struct.dpages* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
