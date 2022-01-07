; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_has_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_has_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MaxSector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*)* @has_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_failed(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %5 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %6 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MaxSector, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %25 = call i32 @calc_degraded(%struct.r5conf* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @calc_degraded(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
