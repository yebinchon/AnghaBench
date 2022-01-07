; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_3__, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dasd_device_tasklet = common dso_local global i64 0, align 8
@dasd_device_timeout = common dso_local global i32 0, align 4
@do_kick_device = common dso_local global i32 0, align 4
@do_restore_device = common dso_local global i32 0, align 4
@do_reload_device = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_device* @dasd_alloc_device() #0 {
  %1 = alloca %struct.dasd_device*, align 8
  %2 = alloca %struct.dasd_device*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.dasd_device* @kzalloc(i32 104, i32 %3)
  store %struct.dasd_device* %4, %struct.dasd_device** %2, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %6 = icmp ne %struct.dasd_device* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dasd_device* @ERR_PTR(i32 %9)
  store %struct.dasd_device* %10, %struct.dasd_device** %1, align 8
  br label %122

11:                                               ; preds = %0
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @__get_free_pages(i32 %14, i32 1)
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 14
  store i8* %16, i8** %18, align 8
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 14
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = call i32 @kfree(%struct.dasd_device* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.dasd_device* @ERR_PTR(i32 %27)
  store %struct.dasd_device* %28, %struct.dasd_device** %1, align 8
  br label %122

29:                                               ; preds = %11
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @get_zeroed_page(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 12
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 12
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %29
  %42 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 14
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 @free_pages(i64 %45, i32 1)
  %47 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %48 = call i32 @kfree(%struct.dasd_device* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.dasd_device* @ERR_PTR(i32 %50)
  store %struct.dasd_device* %51, %struct.dasd_device** %1, align 8
  br label %122

52:                                               ; preds = %29
  %53 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 15
  %55 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 14
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %58, 2
  %60 = call i32 @dasd_init_chunklist(i32* %54, i8* %57, i32 %59)
  %61 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 13
  %63 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %64 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %63, i32 0, i32 12
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = call i32 @dasd_init_chunklist(i32* %62, i8* %65, i32 %66)
  %68 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %69 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %68, i32 0, i32 11
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %72 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %71, i32 0, i32 10
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %75 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %74, i32 0, i32 9
  %76 = load i64, i64* @dasd_device_tasklet, align 8
  %77 = inttoptr i64 %76 to void (i64)*
  %78 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %79 = ptrtoint %struct.dasd_device* %78 to i64
  %80 = call i32 @tasklet_init(i32* %75, void (i64)* %77, i64 %79)
  %81 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 8
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %85 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %84, i32 0, i32 7
  %86 = call i32 @init_timer(%struct.TYPE_4__* %85)
  %87 = load i32, i32* @dasd_device_timeout, align 4
  %88 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %92 = ptrtoint %struct.dasd_device* %91 to i64
  %93 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %94 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %97 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %96, i32 0, i32 6
  %98 = load i32, i32* @do_kick_device, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %101 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %100, i32 0, i32 5
  %102 = load i32, i32* @do_restore_device, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %105 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %104, i32 0, i32 4
  %106 = load i32, i32* @do_reload_device, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load i8*, i8** @DASD_STATE_NEW, align 8
  %109 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %110 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @DASD_STATE_NEW, align 8
  %112 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %113 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %115 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %114, i32 0, i32 1
  %116 = call i32 @mutex_init(i32* %115)
  %117 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %118 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  store %struct.dasd_device* %121, %struct.dasd_device** %1, align 8
  br label %122

122:                                              ; preds = %52, %41, %23, %7
  %123 = load %struct.dasd_device*, %struct.dasd_device** %1, align 8
  ret %struct.dasd_device* %123
}

declare dso_local %struct.dasd_device* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_device* @ERR_PTR(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.dasd_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @dasd_init_chunklist(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
