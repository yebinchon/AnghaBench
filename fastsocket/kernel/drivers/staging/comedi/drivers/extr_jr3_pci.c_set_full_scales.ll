; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_set_full_scales.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_set_full_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jr3_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.six_axis_t = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jr3_channel*, %struct.six_axis_t*)* @set_full_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_full_scales(%struct.jr3_channel* %0, %struct.six_axis_t* byval(%struct.six_axis_t) align 8 %1) #0 {
  %3 = alloca %struct.jr3_channel*, align 8
  store %struct.jr3_channel* %0, %struct.jr3_channel** %3, align 8
  %4 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %15)
  %17 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %18 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @set_s16(i32* %19, i32 %21)
  %23 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %24 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_s16(i32* %25, i32 %27)
  %29 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %30 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @set_s16(i32* %31, i32 %33)
  %35 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %36 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_s16(i32* %37, i32 %39)
  %41 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %42 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @set_s16(i32* %43, i32 %45)
  %47 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %48 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %1, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_s16(i32* %49, i32 %51)
  %53 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %54 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %53, i32 0, i32 0
  %55 = call i32 @set_s16(i32* %54, i32 2560)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_s16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
