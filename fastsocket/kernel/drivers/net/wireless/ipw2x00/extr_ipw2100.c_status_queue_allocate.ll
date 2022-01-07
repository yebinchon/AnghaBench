; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_status_queue_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_status_queue_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.ipw2100_status_queue }
%struct.ipw2100_status_queue = type { i32, %struct.ipw2100_status*, i32 }
%struct.ipw2100_status = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can not allocate status queue.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @status_queue_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_queue_allocate(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw2100_status_queue*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 1
  store %struct.ipw2100_status_queue* %8, %struct.ipw2100_status_queue** %6, align 8
  %9 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %15 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %20 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %23 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %22, i32 0, i32 2
  %24 = call i64 @pci_alloc_consistent(i32 %18, i32 %21, i32* %23)
  %25 = inttoptr i64 %24 to %struct.ipw2100_status*
  %26 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %27 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %26, i32 0, i32 1
  store %struct.ipw2100_status* %25, %struct.ipw2100_status** %27, align 8
  %28 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %29 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %28, i32 0, i32 1
  %30 = load %struct.ipw2100_status*, %struct.ipw2100_status** %29, align 8
  %31 = icmp ne %struct.ipw2100_status* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @IPW_DEBUG_WARNING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %2
  %37 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %38 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %37, i32 0, i32 1
  %39 = load %struct.ipw2100_status*, %struct.ipw2100_status** %38, align 8
  %40 = load %struct.ipw2100_status_queue*, %struct.ipw2100_status_queue** %6, align 8
  %41 = getelementptr inbounds %struct.ipw2100_status_queue, %struct.ipw2100_status_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(%struct.ipw2100_status* %39, i32 0, i32 %42)
  %44 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i64 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @IPW_DEBUG_WARNING(i8*) #1

declare dso_local i32 @memset(%struct.ipw2100_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
