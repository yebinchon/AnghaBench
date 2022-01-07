; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_alloc_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_alloc_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.slice_data* }
%struct.slice_data = type { i32* }
%struct.hub_data = type { i32 }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@LEVELS_PER_SLICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cpu %d flooded with devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @alloc_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_level(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hub_data*, align 8
  %6 = alloca %struct.slice_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cpu_to_node(i32 %8)
  %10 = call %struct.hub_data* @hub_data(i32 %9)
  store %struct.hub_data* %10, %struct.hub_data** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.slice_data*, %struct.slice_data** %15, align 8
  store %struct.slice_data* %16, %struct.slice_data** %6, align 8
  %17 = load %struct.hub_data*, %struct.hub_data** %5, align 8
  %18 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LEVELS_PER_SLICE, align 4
  %21 = call i32 @find_first_zero_bit(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LEVELS_PER_SLICE, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hub_data*, %struct.hub_data** %5, align 8
  %31 = getelementptr inbounds %struct.hub_data, %struct.hub_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %36 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.hub_data* @hub_data(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
