; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_mem.c_iwch_reregister_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_mem.c_iwch_reregister_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_dev = type { i32 }
%struct.iwch_pd = type { i32 }
%struct.iwch_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwch_reregister_mem(%struct.iwch_dev* %0, %struct.iwch_pd* %1, %struct.iwch_mr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwch_dev*, align 8
  %8 = alloca %struct.iwch_pd*, align 8
  %9 = alloca %struct.iwch_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %7, align 8
  store %struct.iwch_pd* %1, %struct.iwch_pd** %8, align 8
  store %struct.iwch_mr* %2, %struct.iwch_mr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %16 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %89

23:                                               ; preds = %5
  %24 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %25 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.iwch_dev*, %struct.iwch_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %28, i32 0, i32 0
  %30 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %31 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %35 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %39 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %43 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %47 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 12
  %52 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %53 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %57 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @cxio_reregister_phys_mem(i32* %29, i32* %12, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %51, i32 %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %23
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %89

65:                                               ; preds = %23
  %66 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @iwch_finish_mem_reg(%struct.iwch_mr* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.iwch_dev*, %struct.iwch_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %72, i32 0, i32 0
  %74 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %75 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %79 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iwch_mr*, %struct.iwch_mr** %9, align 8
  %83 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cxio_dereg_mem(i32* %73, i32 %77, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %71, %65
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %62, %20
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @cxio_reregister_phys_mem(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwch_finish_mem_reg(%struct.iwch_mr*, i32) #1

declare dso_local i32 @cxio_dereg_mem(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
