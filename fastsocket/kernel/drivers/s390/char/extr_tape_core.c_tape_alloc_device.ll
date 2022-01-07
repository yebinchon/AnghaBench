; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ti:no mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@TS_INIT = common dso_local global i32 0, align 4
@MS_UNKNOWN = common dso_local global i32 0, align 4
@tape_delayed_next_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tape_device* ()* @tape_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tape_device* @tape_alloc_device() #0 {
  %1 = alloca %struct.tape_device*, align 8
  %2 = alloca %struct.tape_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.tape_device* @kzalloc(i32 48, i32 %3)
  store %struct.tape_device* %4, %struct.tape_device** %2, align 8
  %5 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %6 = icmp eq %struct.tape_device* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = call i32 @DBF_EXCEPTION(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.tape_device* @ERR_PTR(i32 %10)
  store %struct.tape_device* %11, %struct.tape_device** %1, align 8
  br label %62

12:                                               ; preds = %0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @GFP_DMA, align 4
  %15 = or i32 %13, %14
  %16 = call i64* @kmalloc(i32 1, i32 %15)
  %17 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 3
  store i64* %16, i64** %18, align 8
  %19 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = call i32 @DBF_EXCEPTION(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %26 = call i32 @kfree(%struct.tape_device* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.tape_device* @ERR_PTR(i32 %28)
  store %struct.tape_device* %29, %struct.tape_device** %1, align 8
  br label %62

30:                                               ; preds = %12
  %31 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %32 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %31, i32 0, i32 9
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %35 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %34, i32 0, i32 8
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %38 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %37, i32 0, i32 7
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %41 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %40, i32 0, i32 6
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load i32, i32* @TS_INIT, align 4
  %44 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %45 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @MS_UNKNOWN, align 4
  %47 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %48 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %50 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %53 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %55 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %54, i32 0, i32 2
  %56 = call i32 @atomic_set(i32* %55, i32 1)
  %57 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %58 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %57, i32 0, i32 1
  %59 = load i32, i32* @tape_delayed_next_request, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  store %struct.tape_device* %61, %struct.tape_device** %1, align 8
  br label %62

62:                                               ; preds = %30, %23, %7
  %63 = load %struct.tape_device*, %struct.tape_device** %1, align 8
  ret %struct.tape_device* %63
}

declare dso_local %struct.tape_device* @kzalloc(i32, i32) #1

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local %struct.tape_device* @ERR_PTR(i32) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.tape_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
