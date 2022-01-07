; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_geo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_geo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_range = type { i64 }
%struct.lbtf_private = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@channel_ranges = common dso_local global %struct.channel_range* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*)* @lbtf_geo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_geo_init(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.channel_range*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  %6 = load %struct.channel_range*, %struct.channel_range** @channel_ranges, align 8
  store %struct.channel_range* %6, %struct.channel_range** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.channel_range*, %struct.channel_range** @channel_ranges, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.channel_range* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load %struct.channel_range*, %struct.channel_range** @channel_ranges, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.channel_range, %struct.channel_range* %13, i64 %15
  %17 = getelementptr inbounds %struct.channel_range, %struct.channel_range* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %20 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.channel_range*, %struct.channel_range** @channel_ranges, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.channel_range, %struct.channel_range* %24, i64 %26
  store %struct.channel_range* %27, %struct.channel_range** %3, align 8
  br label %32

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7

32:                                               ; preds = %23, %7
  %33 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %34 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %52, %32
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %40 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @CHAN_TO_IDX(i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %37

55:                                               ; preds = %37
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.channel_range*) #1

declare dso_local i64 @CHAN_TO_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
