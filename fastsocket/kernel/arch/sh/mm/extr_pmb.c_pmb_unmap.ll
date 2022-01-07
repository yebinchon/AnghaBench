; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmb_entry = type { i64, %struct.pmb_entry* }

@pmb_list = common dso_local global %struct.pmb_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmb_unmap(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pmb_entry**, align 8
  %4 = alloca %struct.pmb_entry*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.pmb_entry** @pmb_list, %struct.pmb_entry*** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.pmb_entry**, %struct.pmb_entry*** %3, align 8
  %7 = load %struct.pmb_entry*, %struct.pmb_entry** %6, align 8
  store %struct.pmb_entry* %7, %struct.pmb_entry** %4, align 8
  %8 = icmp ne %struct.pmb_entry* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %11 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %20

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %19 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %18, i32 0, i32 1
  store %struct.pmb_entry** %19, %struct.pmb_entry*** %3, align 8
  br label %5

20:                                               ; preds = %15, %5
  %21 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %22 = icmp ne %struct.pmb_entry* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.pmb_entry*, %struct.pmb_entry** %4, align 8
  %30 = call i32 @__pmb_unmap(%struct.pmb_entry* %29)
  br label %31

31:                                               ; preds = %28, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__pmb_unmap(%struct.pmb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
