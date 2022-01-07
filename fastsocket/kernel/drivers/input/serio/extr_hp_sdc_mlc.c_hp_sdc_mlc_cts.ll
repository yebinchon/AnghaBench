; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_cts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.hp_sdc_mlc_priv_s* }
%struct.hp_sdc_mlc_priv_s = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }

@HP_SDC_USE_LOOP = common dso_local global i32 0, align 4
@HP_SDC_ACT_POSTCMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAIN = common dso_local global i32 0, align 4
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@HP_SDC_CMD_READ_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hp_sdc_mlc_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_mlc_cts(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.hp_sdc_mlc_priv_s*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %6, align 8
  store %struct.hp_sdc_mlc_priv_s* %7, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = call i64 @down_trylock(i32* %9)
  %11 = call i32 @BUG_ON(i64 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = call i64 @down_trylock(i32* %13)
  %15 = call i32 @BUG_ON(i64 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @up(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @up(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i64 @down_trylock(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %28 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = icmp ne i32* %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %48

36:                                               ; preds = %26
  br label %93

37:                                               ; preds = %1
  %38 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %39 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HP_SDC_USE_LOOP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %94

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %52 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* %50, i32** %54, align 8
  %55 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %56 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %59 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %62 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 5, i32* %63, align 4
  %64 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %65 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %70 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @HP_SDC_CMD_READ_USE, align 4
  %74 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %75 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %79 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 1, i32* %81, align 4
  %82 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %83 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %87 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 0, i32* %89, align 4
  %90 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %91 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %90, i32 0, i32 1
  %92 = call i32 @__hp_sdc_enqueue_transaction(%struct.TYPE_7__* %91)
  br label %93

93:                                               ; preds = %48, %36
  store i32 1, i32* %2, align 4
  br label %104

94:                                               ; preds = %46
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %4, align 8
  %98 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32* %96, i32** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @up(i32* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %94, %93
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @__hp_sdc_enqueue_transaction(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
