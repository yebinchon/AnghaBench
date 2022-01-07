; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_alloc_masks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_alloc_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_info = type { i32*, i32 }
%struct.mask_info = type { %struct.mask_info* }

@NR_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_info*, %struct.mask_info*, i32)* @alloc_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_masks(%struct.tl_info* %0, %struct.mask_info* %1, i32 %2) #0 {
  %4 = alloca %struct.tl_info*, align 8
  %5 = alloca %struct.mask_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tl_info* %0, %struct.tl_info** %4, align 8
  store %struct.mask_info* %1, %struct.mask_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tl_info*, %struct.tl_info** %4, align 8
  %10 = getelementptr inbounds %struct.tl_info, %struct.tl_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @NR_MAG, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.tl_info*, %struct.tl_info** %4, align 8
  %21 = getelementptr inbounds %struct.tl_info, %struct.tl_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load %struct.tl_info*, %struct.tl_info** %4, align 8
  %28 = getelementptr inbounds %struct.tl_info, %struct.tl_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @NR_MAG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @max(i32 %45, i32 1)
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %58, %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = call %struct.mask_info* @alloc_bootmem(i32 8)
  %53 = load %struct.mask_info*, %struct.mask_info** %5, align 8
  %54 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %53, i32 0, i32 0
  store %struct.mask_info* %52, %struct.mask_info** %54, align 8
  %55 = load %struct.mask_info*, %struct.mask_info** %5, align 8
  %56 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %55, i32 0, i32 0
  %57 = load %struct.mask_info*, %struct.mask_info** %56, align 8
  store %struct.mask_info* %57, %struct.mask_info** %5, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %47

61:                                               ; preds = %47
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.mask_info* @alloc_bootmem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
