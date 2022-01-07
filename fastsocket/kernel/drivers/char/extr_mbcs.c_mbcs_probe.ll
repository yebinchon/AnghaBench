; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx_dev = type { i32, %struct.mbcs_soft*, %struct.TYPE_2__ }
%struct.mbcs_soft = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx_dev*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cx_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soft_list = common dso_local global i32 0, align 4
@dev_attr_algo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx_dev*, %struct.cx_device_id*)* @mbcs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_probe(%struct.cx_dev* %0, %struct.cx_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx_dev*, align 8
  %5 = alloca %struct.cx_device_id*, align 8
  %6 = alloca %struct.mbcs_soft*, align 8
  store %struct.cx_dev* %0, %struct.cx_dev** %4, align 8
  store %struct.cx_device_id* %1, %struct.cx_device_id** %5, align 8
  %7 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %8 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %7, i32 0, i32 1
  store %struct.mbcs_soft* null, %struct.mbcs_soft** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mbcs_soft* @kzalloc(i32 64, i32 %9)
  store %struct.mbcs_soft* %10, %struct.mbcs_soft** %6, align 8
  %11 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %12 = icmp eq %struct.mbcs_soft* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %22 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %24 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %23, i32 0, i32 11
  %25 = call i32 @list_add(i32* %24, i32* @soft_list)
  %26 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @tiocx_swin_base(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %33 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %35 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %35, i32 0, i32 1
  store %struct.mbcs_soft* %34, %struct.mbcs_soft** %36, align 8
  %37 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %38 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %39 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %38, i32 0, i32 9
  store %struct.cx_dev* %37, %struct.cx_dev** %39, align 8
  %40 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %41 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %40, i32 0, i32 8
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %44 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %43, i32 0, i32 7
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %47 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %46, i32 0, i32 6
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %50 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %49, i32 0, i32 5
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %53 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %52, i32 0, i32 4
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %56 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %55, i32 0, i32 3
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %59 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %58, i32 0, i32 2
  %60 = call i32 @mbcs_getdma_init(i32* %59)
  %61 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %62 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %61, i32 0, i32 1
  %63 = call i32 @mbcs_putdma_init(i32* %62)
  %64 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %65 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %64, i32 0, i32 0
  %66 = call i32 @mbcs_algo_init(i32* %65)
  %67 = load %struct.mbcs_soft*, %struct.mbcs_soft** %6, align 8
  %68 = call i32 @mbcs_hw_init(%struct.mbcs_soft* %67)
  %69 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %70 = call i32 @mbcs_intr_alloc(%struct.cx_dev* %69)
  %71 = load %struct.cx_dev*, %struct.cx_dev** %4, align 8
  %72 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %71, i32 0, i32 0
  %73 = call i32 @device_create_file(i32* %72, i32* @dev_attr_algo)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %16, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.mbcs_soft* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @tiocx_swin_base(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mbcs_getdma_init(i32*) #1

declare dso_local i32 @mbcs_putdma_init(i32*) #1

declare dso_local i32 @mbcs_algo_init(i32*) #1

declare dso_local i32 @mbcs_hw_init(%struct.mbcs_soft*) #1

declare dso_local i32 @mbcs_intr_alloc(%struct.cx_dev*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
