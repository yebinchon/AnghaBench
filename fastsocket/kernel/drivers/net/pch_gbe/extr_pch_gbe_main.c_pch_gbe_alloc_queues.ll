; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*)* @pch_gbe_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_alloc_queues(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kzalloc(i32 1, i32 %4)
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 1, i32 %16)
  %18 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %15
  %25 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %24, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
