; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c___pmb_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c___pmb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmb_entry = type { i64, %struct.pmb_entry* }

@pmb_map = common dso_local global i32 0, align 4
@PMB_NO_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmb_entry*)* @__pmb_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pmb_unmap(%struct.pmb_entry* %0) #0 {
  %2 = alloca %struct.pmb_entry*, align 8
  %3 = alloca %struct.pmb_entry*, align 8
  store %struct.pmb_entry* %0, %struct.pmb_entry** %2, align 8
  %4 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %5 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @test_bit(i64 %6, i32* @pmb_map)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  store %struct.pmb_entry* %13, %struct.pmb_entry** %3, align 8
  %14 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %15 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PMB_NO_ENTRY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %21 = call i32 @clear_pmb_entry(%struct.pmb_entry* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.pmb_entry*, %struct.pmb_entry** %3, align 8
  %24 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %23, i32 0, i32 1
  %25 = load %struct.pmb_entry*, %struct.pmb_entry** %24, align 8
  store %struct.pmb_entry* %25, %struct.pmb_entry** %2, align 8
  %26 = load %struct.pmb_entry*, %struct.pmb_entry** %3, align 8
  %27 = call i32 @pmb_free(%struct.pmb_entry* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load %struct.pmb_entry*, %struct.pmb_entry** %2, align 8
  %30 = icmp ne %struct.pmb_entry* %29, null
  br i1 %30, label %12, label %31

31:                                               ; preds = %28
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @clear_pmb_entry(%struct.pmb_entry*) #1

declare dso_local i32 @pmb_free(%struct.pmb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
