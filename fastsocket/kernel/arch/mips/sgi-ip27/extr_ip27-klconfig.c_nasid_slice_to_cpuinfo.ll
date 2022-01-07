; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-klconfig.c_nasid_slice_to_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-klconfig.c_nasid_slice_to_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KLTYPE_IP27 = common dso_local global i32 0, align 4
@KLSTRUCT_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @nasid_slice_to_cpuinfo(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @KL_CONFIG_INFO(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @KLTYPE_IP27, align 4
  %12 = call i32* @find_lboard(i32* %10, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @KLSTRUCT_CPU, align 4
  %18 = call i64 @find_first_component(i32* %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %42

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %33, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %3, align 8
  br label %42

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = bitcast %struct.TYPE_5__* %35 to i32*
  %37 = load i32, i32* @KLSTRUCT_CPU, align 4
  %38 = call i64 @find_component(i32* %34, i32* %36, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %7, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %23, label %41

41:                                               ; preds = %33
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %42

42:                                               ; preds = %41, %30, %21, %14
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %43
}

declare dso_local i32* @find_lboard(i32*, i32) #1

declare dso_local i64 @KL_CONFIG_INFO(i32) #1

declare dso_local i64 @find_first_component(i32*, i32) #1

declare dso_local i64 @find_component(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
