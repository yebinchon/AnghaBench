; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_hwblk.c_hwblk_area_mod_cnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_hwblk.c_hwblk_area_mod_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwblk_info = type { %struct.hwblk_area* }
%struct.hwblk_area = type { i32*, i32, i32 }

@HWBLK_AREA_FLAG_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwblk_info*, i32, i32, i32, i32)* @hwblk_area_mod_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwblk_area_mod_cnt(%struct.hwblk_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hwblk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hwblk_area*, align 8
  store %struct.hwblk_info* %0, %struct.hwblk_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.hwblk_info*, %struct.hwblk_info** %6, align 8
  %13 = getelementptr inbounds %struct.hwblk_info, %struct.hwblk_info* %12, i32 0, i32 0
  %14 = load %struct.hwblk_area*, %struct.hwblk_area** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hwblk_area, %struct.hwblk_area* %14, i64 %16
  store %struct.hwblk_area* %17, %struct.hwblk_area** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.hwblk_area*, %struct.hwblk_area** %11, align 8
  %20 = getelementptr inbounds %struct.hwblk_area, %struct.hwblk_area* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %18
  store i32 %26, i32* %24, align 4
  %27 = load %struct.hwblk_area*, %struct.hwblk_area** %11, align 8
  %28 = getelementptr inbounds %struct.hwblk_area, %struct.hwblk_area* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %52

37:                                               ; preds = %5
  %38 = load %struct.hwblk_area*, %struct.hwblk_area** %11, align 8
  %39 = getelementptr inbounds %struct.hwblk_area, %struct.hwblk_area* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HWBLK_AREA_FLAG_PARENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.hwblk_info*, %struct.hwblk_info** %6, align 8
  %46 = load %struct.hwblk_area*, %struct.hwblk_area** %11, align 8
  %47 = getelementptr inbounds %struct.hwblk_area, %struct.hwblk_area* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  call void @hwblk_area_mod_cnt(%struct.hwblk_info* %45, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %52

52:                                               ; preds = %36, %44, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
