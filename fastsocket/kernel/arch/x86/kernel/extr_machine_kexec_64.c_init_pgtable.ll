; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_pgtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@max_pfn = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i64)* @init_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pgtable(%struct.kimage* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @__va(i64 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load %struct.kimage*, %struct.kimage** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @max_pfn, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @init_level4_page(%struct.kimage* %11, i32* %12, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.kimage*, %struct.kimage** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.kimage*, %struct.kimage** %4, align 8
  %25 = getelementptr inbounds %struct.kimage, %struct.kimage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @init_one_level2_page(%struct.kimage* %22, i32* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.kimage*, %struct.kimage** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @init_transition_pgtable(%struct.kimage* %33, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %30, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @init_level4_page(%struct.kimage*, i32*, i32, i32) #1

declare dso_local i32 @init_one_level2_page(%struct.kimage*, i32*, i32) #1

declare dso_local i32 @init_transition_pgtable(%struct.kimage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
