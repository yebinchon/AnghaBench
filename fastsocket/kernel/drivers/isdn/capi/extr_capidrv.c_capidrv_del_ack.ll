; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_capidrv_del_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_capidrv_del_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capidrv_ncci = type { %struct.ncci_datahandle_queue* }
%struct.ncci_datahandle_queue = type { i64, i32, %struct.ncci_datahandle_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capidrv_ncci*, i64)* @capidrv_del_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capidrv_del_ack(%struct.capidrv_ncci* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.capidrv_ncci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ncci_datahandle_queue**, align 8
  %7 = alloca %struct.ncci_datahandle_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.capidrv_ncci* %0, %struct.capidrv_ncci** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %4, align 8
  %10 = getelementptr inbounds %struct.capidrv_ncci, %struct.capidrv_ncci* %9, i32 0, i32 0
  store %struct.ncci_datahandle_queue** %10, %struct.ncci_datahandle_queue*** %6, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  %13 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %12, align 8
  %14 = icmp ne %struct.ncci_datahandle_queue* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  %17 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %16, align 8
  %18 = getelementptr inbounds %struct.ncci_datahandle_queue, %struct.ncci_datahandle_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  %24 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %23, align 8
  store %struct.ncci_datahandle_queue* %24, %struct.ncci_datahandle_queue** %7, align 8
  %25 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %7, align 8
  %26 = getelementptr inbounds %struct.ncci_datahandle_queue, %struct.ncci_datahandle_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  %29 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %28, align 8
  %30 = getelementptr inbounds %struct.ncci_datahandle_queue, %struct.ncci_datahandle_queue* %29, i32 0, i32 2
  %31 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %30, align 8
  %32 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  store %struct.ncci_datahandle_queue* %31, %struct.ncci_datahandle_queue** %32, align 8
  %33 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %7, align 8
  %34 = call i32 @kfree(%struct.ncci_datahandle_queue* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ncci_datahandle_queue**, %struct.ncci_datahandle_queue*** %6, align 8
  %39 = load %struct.ncci_datahandle_queue*, %struct.ncci_datahandle_queue** %38, align 8
  %40 = getelementptr inbounds %struct.ncci_datahandle_queue, %struct.ncci_datahandle_queue* %39, i32 0, i32 2
  store %struct.ncci_datahandle_queue** %40, %struct.ncci_datahandle_queue*** %6, align 8
  br label %11

41:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @kfree(%struct.ncci_datahandle_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
