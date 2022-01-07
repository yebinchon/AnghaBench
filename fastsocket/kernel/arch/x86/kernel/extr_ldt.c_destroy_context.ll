; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_destroy_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @paravirt_free_ldt(i32 %12, i32 %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vfree(i32 %30)
  br label %39

32:                                               ; preds = %8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @virt_to_page(i32 %36)
  %38 = call i32 @put_page(i32 %37)
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @paravirt_free_ldt(i32, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
