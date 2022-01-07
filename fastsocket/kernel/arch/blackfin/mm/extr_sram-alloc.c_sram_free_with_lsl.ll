; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c_sram_free_with_lsl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_sram-alloc.c_sram_free_with_lsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sram_list_struct* }
%struct.sram_list_struct = type { i8*, %struct.sram_list_struct* }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sram_free_with_lsl(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sram_list_struct*, align 8
  %5 = alloca %struct.sram_list_struct**, align 8
  %6 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %6, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.sram_list_struct** %12, %struct.sram_list_struct*** %5, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load %struct.sram_list_struct**, %struct.sram_list_struct*** %5, align 8
  %15 = load %struct.sram_list_struct*, %struct.sram_list_struct** %14, align 8
  %16 = icmp ne %struct.sram_list_struct* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.sram_list_struct**, %struct.sram_list_struct*** %5, align 8
  %19 = load %struct.sram_list_struct*, %struct.sram_list_struct** %18, align 8
  %20 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.sram_list_struct**, %struct.sram_list_struct*** %5, align 8
  %28 = load %struct.sram_list_struct*, %struct.sram_list_struct** %27, align 8
  %29 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %28, i32 0, i32 1
  store %struct.sram_list_struct** %29, %struct.sram_list_struct*** %5, align 8
  br label %13

30:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.sram_list_struct**, %struct.sram_list_struct*** %5, align 8
  %33 = load %struct.sram_list_struct*, %struct.sram_list_struct** %32, align 8
  store %struct.sram_list_struct* %33, %struct.sram_list_struct** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @sram_free(i8* %34)
  %36 = load %struct.sram_list_struct*, %struct.sram_list_struct** %4, align 8
  %37 = getelementptr inbounds %struct.sram_list_struct, %struct.sram_list_struct* %36, i32 0, i32 1
  %38 = load %struct.sram_list_struct*, %struct.sram_list_struct** %37, align 8
  %39 = load %struct.sram_list_struct**, %struct.sram_list_struct*** %5, align 8
  store %struct.sram_list_struct* %38, %struct.sram_list_struct** %39, align 8
  %40 = load %struct.sram_list_struct*, %struct.sram_list_struct** %4, align 8
  %41 = call i32 @kfree(%struct.sram_list_struct* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @sram_free(i8*) #1

declare dso_local i32 @kfree(%struct.sram_list_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
