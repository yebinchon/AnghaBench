; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio.c_rio_request_outb_dbell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio.c_rio_request_outb_dbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rio_dev = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RIO_DOORBELL_RESOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @rio_request_outb_dbell(%struct.rio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.rio_dev* %0, %struct.rio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.resource* @kmalloc(i32 4, i32 %8)
  store %struct.resource* %9, %struct.resource** %7, align 8
  %10 = load %struct.resource*, %struct.resource** %7, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rio_init_dbell_res(%struct.resource* %13, i32 %14, i32 %15)
  %17 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @RIO_DOORBELL_RESOURCE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = call i64 @request_resource(i32* %21, %struct.resource* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = call i32 @kfree(%struct.resource* %26)
  store %struct.resource* null, %struct.resource** %7, align 8
  br label %28

28:                                               ; preds = %25, %12
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  ret %struct.resource* %30
}

declare dso_local %struct.resource* @kmalloc(i32, i32) #1

declare dso_local i32 @rio_init_dbell_res(%struct.resource*, i32, i32) #1

declare dso_local i64 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
