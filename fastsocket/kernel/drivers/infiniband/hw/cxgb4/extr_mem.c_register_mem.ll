; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_register_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_register_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_pd = type { i32 }
%struct.c4iw_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@T4_STAG_UNSET = common dso_local global i32 0, align 4
@FW_RI_STAG_NSMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.c4iw_pd*, %struct.c4iw_mr*, i32)* @register_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_mem(%struct.c4iw_dev* %0, %struct.c4iw_pd* %1, %struct.c4iw_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_dev*, align 8
  %7 = alloca %struct.c4iw_pd*, align 8
  %8 = alloca %struct.c4iw_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %6, align 8
  store %struct.c4iw_pd* %1, %struct.c4iw_pd** %7, align 8
  store %struct.c4iw_mr* %2, %struct.c4iw_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @T4_STAG_UNSET, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %14 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %13, i32 0, i32 0
  %15 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %16 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FW_RI_STAG_NSMR, align 4
  %20 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %21 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %25 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %29 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %33 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %37 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 12
  %42 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %43 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %47 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write_tpt_entry(i32* %14, i32 0, i32* %10, i32 1, i32 %18, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35, i32 %39, i32 %41, i32 %45, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %79

55:                                               ; preds = %4
  %56 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @finish_mem_reg(%struct.c4iw_mr* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %63 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %62, i32 0, i32 0
  %64 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %65 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %69 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %73 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dereg_mem(i32* %63, i32 %67, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %61, %55
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %53
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @write_tpt_entry(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @finish_mem_reg(%struct.c4iw_mr*, i32) #1

declare dso_local i32 @dereg_mem(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
