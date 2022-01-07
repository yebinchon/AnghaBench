; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_consumer_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_consumer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.aac_queue = type { i64, %struct.aac_entry*, %struct.TYPE_2__ }
%struct.aac_entry = type { i32 }
%struct.TYPE_2__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_consumer_get(%struct.aac_dev* %0, %struct.aac_queue* %1, %struct.aac_entry** %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca %struct.aac_queue*, align 8
  %6 = alloca %struct.aac_entry**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store %struct.aac_queue* %1, %struct.aac_queue** %5, align 8
  store %struct.aac_entry** %2, %struct.aac_entry*** %6, align 8
  %9 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %10 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  %15 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %16 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32_to_cpu(i32 %19)
  %21 = icmp eq i64 %14, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %25 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %31 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %43

35:                                               ; preds = %23
  %36 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %37 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %34
  %44 = load %struct.aac_queue*, %struct.aac_queue** %5, align 8
  %45 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %44, i32 0, i32 1
  %46 = load %struct.aac_entry*, %struct.aac_entry** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %46, i64 %48
  %50 = load %struct.aac_entry**, %struct.aac_entry*** %6, align 8
  store %struct.aac_entry* %49, %struct.aac_entry** %50, align 8
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %22
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
