; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_ssd_from_pmcw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_ssd_from_pmcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_ssd_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pmcw = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_ssd_info*, %struct.pmcw*)* @ssd_from_pmcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssd_from_pmcw(%struct.chsc_ssd_info* %0, %struct.pmcw* %1) #0 {
  %3 = alloca %struct.chsc_ssd_info*, align 8
  %4 = alloca %struct.pmcw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.chsc_ssd_info* %0, %struct.chsc_ssd_info** %3, align 8
  store %struct.pmcw* %1, %struct.pmcw** %4, align 8
  %7 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %3, align 8
  %8 = call i32 @memset(%struct.chsc_ssd_info* %7, i32 0, i32 16)
  %9 = load %struct.pmcw*, %struct.pmcw** %4, align 8
  %10 = getelementptr inbounds %struct.pmcw, %struct.pmcw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %3, align 8
  %13 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %49, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 128, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pmcw*, %struct.pmcw** %4, align 8
  %21 = getelementptr inbounds %struct.pmcw, %struct.pmcw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %3, align 8
  %28 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = call i32 @chp_id_init(%struct.TYPE_2__* %32)
  %34 = load %struct.pmcw*, %struct.pmcw** %4, align 8
  %35 = getelementptr inbounds %struct.pmcw, %struct.pmcw* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %3, align 8
  %42 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %26, %17
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %14
  ret void
}

declare dso_local i32 @memset(%struct.chsc_ssd_info*, i32, i32) #1

declare dso_local i32 @chp_id_init(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
