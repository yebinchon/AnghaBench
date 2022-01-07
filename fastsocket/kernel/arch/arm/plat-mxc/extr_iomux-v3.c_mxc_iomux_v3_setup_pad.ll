; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-v3.c_mxc_iomux_v3_setup_pad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-v3.c_mxc_iomux_v3_setup_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pad_desc = type { i32, i32, i32, i32, i64, i64 }

@iomux_v3_pad_alloc_map = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@base = common dso_local global i64 0, align 8
@NO_PAD_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxc_iomux_v3_setup_pad(%struct.pad_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pad_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.pad_desc* %0, %struct.pad_desc** %3, align 8
  %5 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %6 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = lshr i32 %8, 2
  %10 = load i32, i32* @iomux_v3_pad_alloc_map, align 4
  %11 = call i64 @test_and_set_bit(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %18 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %23 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @base, align 8
  %26 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %27 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @__raw_writel(i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %33 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %38 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @base, align 8
  %41 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %42 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @__raw_writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %36, %31
  %47 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %48 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NO_PAD_CTRL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %46
  %54 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %55 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %60 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @base, align 8
  %63 = load %struct.pad_desc*, %struct.pad_desc** %3, align 8
  %64 = getelementptr inbounds %struct.pad_desc, %struct.pad_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = call i32 @__raw_writel(i32 %61, i64 %67)
  br label %69

69:                                               ; preds = %58, %53, %46
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
