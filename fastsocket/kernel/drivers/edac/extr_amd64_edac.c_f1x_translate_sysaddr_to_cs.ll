; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_translate_sysaddr_to_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_translate_sysaddr_to_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRAM_RANGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32*, i32*)* @f1x_translate_sysaddr_to_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_translate_sysaddr_to_cs(%struct.amd64_pvt* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %47, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @DRAM_RANGES, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @dram_rw(%struct.amd64_pvt* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %47

23:                                               ; preds = %17
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @get_dram_base(%struct.amd64_pvt* %24, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @get_dram_limit(%struct.amd64_pvt* %30, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @f1x_match_to_this_node(%struct.amd64_pvt* %36, i32 %37, i64 %38, i32* %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %50

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %29, %23
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %13

50:                                               ; preds = %44, %13
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @dram_rw(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @f1x_match_to_this_node(%struct.amd64_pvt*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
