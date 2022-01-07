; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_consumer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_consumer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.aac_queue = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@HostNormCmdNotFull = common dso_local global i32 0, align 4
@HostNormRespNotFull = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_consumer_free(%struct.aac_dev* %0, %struct.aac_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca %struct.aac_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store %struct.aac_queue* %1, %struct.aac_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %10 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  %15 = add nsw i64 %14, 1
  %16 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %17 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %26 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %32 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = call i32 @cpu_to_le32(i32 1)
  %37 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %38 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32 %36, i32* %40, align 4
  br label %47

41:                                               ; preds = %24
  %42 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %43 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @le32_add_cpu(i32* %45, i32 1)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %54
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @HostNormCmdNotFull, align 4
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @HostNormRespNotFull, align 4
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %50
  %57 = call i32 (...) @BUG()
  br label %62

58:                                               ; preds = %54, %52
  %59 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @aac_adapter_notify(%struct.aac_dev* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %58, %47
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @aac_adapter_notify(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
