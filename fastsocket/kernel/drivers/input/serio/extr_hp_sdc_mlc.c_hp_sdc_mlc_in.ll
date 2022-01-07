; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i64, i32, %struct.TYPE_4__, %struct.hp_sdc_mlc_priv_s* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.hp_sdc_mlc_priv_s = type { i64 }
%struct.timeval = type { i64, i32 }

@HIL_ERR_INT = common dso_local global i32 0, align 4
@HIL_PKT_CMD = common dso_local global i32 0, align 4
@HIL_PKT_ADDR_MASK = common dso_local global i32 0, align 4
@HIL_PKT_DATA_MASK = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @hp_sdc_mlc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_mlc_in(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hp_sdc_mlc_priv_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  %10 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %9, align 8
  store %struct.hp_sdc_mlc_priv_s* %10, %struct.hp_sdc_mlc_priv_s** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = call i64 @down_trylock(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %2
  %16 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %5, align 8
  %17 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* @HIL_ERR_INT, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HIL_PKT_CMD, align 4
  %26 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HIL_PKT_DATA_MASK, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = or i32 %21, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 14, i32* %37, align 4
  br label %70

38:                                               ; preds = %15
  %39 = call i32 @do_gettimeofday(%struct.timeval* %7)
  %40 = load i32, i32* @USEC_PER_SEC, align 4
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %42, %46
  %48 = mul nsw i32 %40, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = call i32 @up(i32* %66)
  br label %68

68:                                               ; preds = %64, %38
  br label %74

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %69, %20
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = call i32 @up(i32* %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %68
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
