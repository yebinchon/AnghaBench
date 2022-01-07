; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_init_jpeg_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_init_jpeg_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i32*, %struct.TYPE_4__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BUZ_STATE_USER = common dso_local global i32 0, align 4
@BUZ_NUM_STAT_COM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*)* @init_jpeg_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_jpeg_queue(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  %3 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %4 = load %struct.zoran*, %struct.zoran** %2, align 8
  %5 = getelementptr inbounds %struct.zoran, %struct.zoran* %4, i32 0, i32 11
  store i64 0, i64* %5, align 8
  %6 = load %struct.zoran*, %struct.zoran** %2, align 8
  %7 = getelementptr inbounds %struct.zoran, %struct.zoran* %6, i32 0, i32 10
  store i64 0, i64* %7, align 8
  %8 = load %struct.zoran*, %struct.zoran** %2, align 8
  %9 = getelementptr inbounds %struct.zoran, %struct.zoran* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.zoran*, %struct.zoran** %2, align 8
  %11 = getelementptr inbounds %struct.zoran, %struct.zoran* %10, i32 0, i32 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.zoran*, %struct.zoran** %2, align 8
  %13 = getelementptr inbounds %struct.zoran, %struct.zoran* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.zoran*, %struct.zoran** %2, align 8
  %15 = getelementptr inbounds %struct.zoran, %struct.zoran* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.zoran*, %struct.zoran** %2, align 8
  %17 = getelementptr inbounds %struct.zoran, %struct.zoran* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.zoran*, %struct.zoran** %2, align 8
  %19 = getelementptr inbounds %struct.zoran, %struct.zoran* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.zoran*, %struct.zoran** %2, align 8
  %21 = getelementptr inbounds %struct.zoran, %struct.zoran* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.zoran*, %struct.zoran** %2, align 8
  %23 = getelementptr inbounds %struct.zoran, %struct.zoran* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %41, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.zoran*, %struct.zoran** %2, align 8
  %27 = getelementptr inbounds %struct.zoran, %struct.zoran* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* @BUZ_STATE_USER, align 4
  %33 = load %struct.zoran*, %struct.zoran** %2, align 8
  %34 = getelementptr inbounds %struct.zoran, %struct.zoran* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %32, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %24

44:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @BUZ_NUM_STAT_COM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = call i32 @cpu_to_le32(i32 1)
  %51 = load %struct.zoran*, %struct.zoran** %2, align 8
  %52 = getelementptr inbounds %struct.zoran, %struct.zoran* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %45

60:                                               ; preds = %45
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
