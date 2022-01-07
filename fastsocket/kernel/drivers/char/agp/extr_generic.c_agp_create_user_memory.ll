; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_create_user_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_create_user_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i64, i64, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_memory* (i64)* @agp_create_user_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_memory* @agp_create_user_memory(i64 %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.agp_memory*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = mul i64 %6, 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @INT_MAX, align 4
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.agp_memory* @kzalloc(i32 24, i32 %15)
  store %struct.agp_memory* %16, %struct.agp_memory** %4, align 8
  %17 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %18 = icmp eq %struct.agp_memory* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %50

20:                                               ; preds = %14
  %21 = call i64 (...) @agp_get_key()
  %22 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %23 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %25 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %30 = call i32 @kfree(%struct.agp_memory* %29)
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %50

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %34 = call i32 @agp_alloc_page_array(i64 %32, %struct.agp_memory* %33)
  %35 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %36 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %41 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @agp_free_key(i64 %42)
  %44 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %45 = call i32 @kfree(%struct.agp_memory* %44)
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %48 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  store %struct.agp_memory* %49, %struct.agp_memory** %2, align 8
  br label %50

50:                                               ; preds = %46, %39, %28, %19, %13
  %51 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  ret %struct.agp_memory* %51
}

declare dso_local %struct.agp_memory* @kzalloc(i32, i32) #1

declare dso_local i64 @agp_get_key(...) #1

declare dso_local i32 @kfree(%struct.agp_memory*) #1

declare dso_local i32 @agp_alloc_page_array(i64, %struct.agp_memory*) #1

declare dso_local i32 @agp_free_key(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
