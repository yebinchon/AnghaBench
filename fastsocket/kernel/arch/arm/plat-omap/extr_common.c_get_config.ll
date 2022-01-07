; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_common.c_get_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_common.c_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_board_config_kernel = type { i64, i8* }

@omap_board_config_size = common dso_local global i32 0, align 4
@omap_board_config = common dso_local global %struct.omap_board_config_kernel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32, i64*)* @get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_config(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.omap_board_config_kernel*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store %struct.omap_board_config_kernel* null, %struct.omap_board_config_kernel** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @omap_board_config_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.omap_board_config_kernel*, %struct.omap_board_config_kernel** @omap_board_config, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.omap_board_config_kernel, %struct.omap_board_config_kernel* %17, i64 %19
  %21 = getelementptr inbounds %struct.omap_board_config_kernel, %struct.omap_board_config_kernel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.omap_board_config_kernel*, %struct.omap_board_config_kernel** @omap_board_config, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.omap_board_config_kernel, %struct.omap_board_config_kernel* %29, i64 %31
  store %struct.omap_board_config_kernel* %32, %struct.omap_board_config_kernel** %10, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %12

41:                                               ; preds = %28, %12
  %42 = load %struct.omap_board_config_kernel*, %struct.omap_board_config_kernel** %10, align 8
  %43 = icmp eq %struct.omap_board_config_kernel* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %49

45:                                               ; preds = %41
  %46 = load %struct.omap_board_config_kernel*, %struct.omap_board_config_kernel** %10, align 8
  %47 = getelementptr inbounds %struct.omap_board_config_kernel, %struct.omap_board_config_kernel* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
