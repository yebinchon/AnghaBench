; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_get_max_full_scales.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_get_max_full_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.six_axis_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jr3_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.six_axis_t*, %struct.jr3_channel*)* @get_max_full_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_max_full_scales(%struct.six_axis_t* noalias sret %0, %struct.jr3_channel* %1) #0 {
  %3 = alloca %struct.jr3_channel*, align 8
  store %struct.jr3_channel* %1, %struct.jr3_channel** %3, align 8
  %4 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %5 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = call i8* @get_s16(i32* %6)
  %8 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 5
  store i8* %7, i8** %8, align 8
  %9 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %10 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = call i8* @get_s16(i32* %11)
  %13 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %15 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i8* @get_s16(i32* %16)
  %18 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %20 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = call i8* @get_s16(i32* %21)
  %23 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %25 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i8* @get_s16(i32* %26)
  %28 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.jr3_channel*, %struct.jr3_channel** %3, align 8
  %30 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i8* @get_s16(i32* %31)
  %33 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %0, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  ret void
}

declare dso_local i8* @get_s16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
