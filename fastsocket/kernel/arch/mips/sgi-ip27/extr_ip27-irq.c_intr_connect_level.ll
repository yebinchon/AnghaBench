; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_intr_connect_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_intr_connect_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.slice_data* }
%struct.slice_data = type { i32* }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@PI_INT_MASK0_A = common dso_local global i32 0, align 4
@PI_INT_MASK1_A = common dso_local global i32 0, align 4
@PI_INT_MASK0_B = common dso_local global i32 0, align 4
@PI_INT_MASK1_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @intr_connect_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr_connect_level(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.slice_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_to_node(i32 %7)
  %9 = call i32 @COMPACT_TO_NASID_NODEID(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.slice_data*, %struct.slice_data** %14, align 8
  store %struct.slice_data* %15, %struct.slice_data** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %18 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @set_bit(i32 %16, i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @cputoslice(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PI_INT_MASK0_A, align 4
  %27 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %28 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REMOTE_HUB_S(i32 %25, i32 %26, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PI_INT_MASK1_A, align 4
  %35 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %36 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REMOTE_HUB_S(i32 %33, i32 %34, i32 %39)
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PI_INT_MASK0_B, align 4
  %44 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %45 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REMOTE_HUB_S(i32 %42, i32 %43, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PI_INT_MASK1_B, align 4
  %52 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %53 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REMOTE_HUB_S(i32 %50, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %41, %24
  ret i32 0
}

declare dso_local i32 @COMPACT_TO_NASID_NODEID(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cputoslice(i32) #1

declare dso_local i32 @REMOTE_HUB_S(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
