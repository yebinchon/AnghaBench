; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_get_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_diag_client = type { i32, i32, %struct.qib_devdata*, %struct.qib_diag_client* }
%struct.qib_devdata = type { i32 }
%struct.TYPE_2__ = type { i32 }

@client_pool = common dso_local global %struct.qib_diag_client* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qib_diag_client* (%struct.qib_devdata*)* @get_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qib_diag_client* @get_client(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_diag_client*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_diag_client*, %struct.qib_diag_client** @client_pool, align 8
  store %struct.qib_diag_client* %4, %struct.qib_diag_client** %3, align 8
  %5 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %6 = icmp ne %struct.qib_diag_client* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %9 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %8, i32 0, i32 3
  %10 = load %struct.qib_diag_client*, %struct.qib_diag_client** %9, align 8
  store %struct.qib_diag_client* %10, %struct.qib_diag_client** @client_pool, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qib_diag_client* @kmalloc(i32 24, i32 %12)
  store %struct.qib_diag_client* %13, %struct.qib_diag_client** %3, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %16 = icmp ne %struct.qib_diag_client* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %19 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %18, i32 0, i32 3
  store %struct.qib_diag_client* null, %struct.qib_diag_client** %19, align 8
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %22 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %21, i32 0, i32 2
  store %struct.qib_devdata* %20, %struct.qib_devdata** %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %27 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @OPENED, align 4
  %29 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %30 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %17, %14
  %32 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  ret %struct.qib_diag_client* %32
}

declare dso_local %struct.qib_diag_client* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
