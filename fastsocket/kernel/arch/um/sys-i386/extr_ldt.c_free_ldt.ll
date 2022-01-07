; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_ldt.c_free_ldt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_ldt.c_free_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@ptrace_ldt = common dso_local global i32 0, align 4
@LDT_DIRECT_ENTRIES = common dso_local global i32 0, align 4
@LDT_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ldt(%struct.mm_context* %0) #0 {
  %2 = alloca %struct.mm_context*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_context* %0, %struct.mm_context** %2, align 8
  %4 = load i32, i32* @ptrace_ldt, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = load %struct.mm_context*, %struct.mm_context** %2, align 8
  %8 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LDT_DIRECT_ENTRIES, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load %struct.mm_context*, %struct.mm_context** %2, align 8
  %15 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LDT_ENTRIES_PER_PAGE, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %24, %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.mm_context*, %struct.mm_context** %2, align 8
  %26 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @free_page(i64 %33)
  br label %20

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %6, %1
  %37 = load %struct.mm_context*, %struct.mm_context** %2, align 8
  %38 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  ret void
}

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
