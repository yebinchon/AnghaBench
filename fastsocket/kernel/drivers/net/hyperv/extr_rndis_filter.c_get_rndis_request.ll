; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_get_rndis_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_get_rndis_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_request = type { i32, %struct.rndis_message, i32 }
%struct.rndis_message = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { %struct.rndis_set_request }
%struct.rndis_set_request = type { i32 }
%struct.rndis_device = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rndis_request* (%struct.rndis_device*, i8*, i8*)* @get_rndis_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rndis_request* @get_rndis_request(%struct.rndis_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rndis_request*, align 8
  %5 = alloca %struct.rndis_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rndis_request*, align 8
  %9 = alloca %struct.rndis_message*, align 8
  %10 = alloca %struct.rndis_set_request*, align 8
  %11 = alloca i64, align 8
  store %struct.rndis_device* %0, %struct.rndis_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.rndis_request* @kzalloc(i32 40, i32 %12)
  store %struct.rndis_request* %13, %struct.rndis_request** %8, align 8
  %14 = load %struct.rndis_request*, %struct.rndis_request** %8, align 8
  %15 = icmp ne %struct.rndis_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.rndis_request* null, %struct.rndis_request** %4, align 8
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.rndis_request*, %struct.rndis_request** %8, align 8
  %19 = getelementptr inbounds %struct.rndis_request, %struct.rndis_request* %18, i32 0, i32 2
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.rndis_request*, %struct.rndis_request** %8, align 8
  %22 = getelementptr inbounds %struct.rndis_request, %struct.rndis_request* %21, i32 0, i32 1
  store %struct.rndis_message* %22, %struct.rndis_message** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.rndis_message*, %struct.rndis_message** %9, align 8
  %25 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.rndis_message*, %struct.rndis_message** %9, align 8
  %28 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rndis_message*, %struct.rndis_message** %9, align 8
  %30 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.rndis_set_request* %31, %struct.rndis_set_request** %10, align 8
  %32 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %33 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %32, i32 0, i32 2
  %34 = call i32 @atomic_inc_return(i32* %33)
  %35 = load %struct.rndis_set_request*, %struct.rndis_set_request** %10, align 8
  %36 = getelementptr inbounds %struct.rndis_set_request, %struct.rndis_set_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %38 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.rndis_request*, %struct.rndis_request** %8, align 8
  %42 = getelementptr inbounds %struct.rndis_request, %struct.rndis_request* %41, i32 0, i32 0
  %43 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %44 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %43, i32 0, i32 1
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %47 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.rndis_request*, %struct.rndis_request** %8, align 8
  store %struct.rndis_request* %50, %struct.rndis_request** %4, align 8
  br label %51

51:                                               ; preds = %17, %16
  %52 = load %struct.rndis_request*, %struct.rndis_request** %4, align 8
  ret %struct.rndis_request* %52
}

declare dso_local %struct.rndis_request* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
