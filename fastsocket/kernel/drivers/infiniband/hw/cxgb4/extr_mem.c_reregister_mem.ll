; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_reregister_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_mem.c_reregister_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_pd = type { i32 }
%struct.c4iw_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FW_RI_STAG_NSMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.c4iw_pd*, %struct.c4iw_mr*, i32, i32)* @reregister_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reregister_mem(%struct.c4iw_dev* %0, %struct.c4iw_pd* %1, %struct.c4iw_mr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_dev*, align 8
  %8 = alloca %struct.c4iw_pd*, align 8
  %9 = alloca %struct.c4iw_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %7, align 8
  store %struct.c4iw_pd* %1, %struct.c4iw_pd** %8, align 8
  store %struct.c4iw_mr* %2, %struct.c4iw_mr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %16 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %94

23:                                               ; preds = %5
  %24 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %25 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %29 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %28, i32 0, i32 0
  %30 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %31 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FW_RI_STAG_NSMR, align 4
  %35 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %36 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %40 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %44 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %48 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %52 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 12
  %57 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %58 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %62 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_tpt_entry(i32* %29, i32 0, i32* %12, i32 1, i32 %33, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %56, i32 %60, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %23
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %94

70:                                               ; preds = %23
  %71 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @finish_mem_reg(%struct.c4iw_mr* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %78 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %77, i32 0, i32 0
  %79 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %80 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %84 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.c4iw_mr*, %struct.c4iw_mr** %9, align 8
  %88 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dereg_mem(i32* %78, i32 %82, i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %76, %70
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %68, %20
  %95 = load i32, i32* %6, align 4
  ret i32 %95
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
