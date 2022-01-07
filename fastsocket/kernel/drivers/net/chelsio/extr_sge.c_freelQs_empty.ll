; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_freelQs_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_freelQs_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, i32, %struct.TYPE_2__*, %struct.adapter* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.adapter = type { i64 }

@A_SG_INT_ENABLE = common dso_local global i64 0, align 8
@F_FL_EXHAUSTED = common dso_local global i32 0, align 4
@A_SG_INTRTIMER = common dso_local global i64 0, align 8
@F_FL0_ENABLE = common dso_local global i32 0, align 4
@F_FL1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*)* @freelQs_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freelQs_empty(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %2, align 8
  %6 = load %struct.sge*, %struct.sge** %2, align 8
  %7 = getelementptr inbounds %struct.sge, %struct.sge* %6, i32 0, i32 3
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @A_SG_INT_ENABLE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sge*, %struct.sge** %2, align 8
  %16 = load %struct.sge*, %struct.sge** %2, align 8
  %17 = getelementptr inbounds %struct.sge, %struct.sge* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = call i32 @refill_free_list(%struct.sge* %15, %struct.TYPE_2__* %19)
  %21 = load %struct.sge*, %struct.sge** %2, align 8
  %22 = load %struct.sge*, %struct.sge** %2, align 8
  %23 = getelementptr inbounds %struct.sge, %struct.sge* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 1
  %26 = call i32 @refill_free_list(%struct.sge* %21, %struct.TYPE_2__* %25)
  %27 = load %struct.sge*, %struct.sge** %2, align 8
  %28 = getelementptr inbounds %struct.sge, %struct.sge* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sge*, %struct.sge** %2, align 8
  %34 = getelementptr inbounds %struct.sge, %struct.sge* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 2
  %40 = icmp sgt i32 %32, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %1
  %42 = load %struct.sge*, %struct.sge** %2, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sge*, %struct.sge** %2, align 8
  %49 = getelementptr inbounds %struct.sge, %struct.sge* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 2
  %55 = icmp sgt i32 %47, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load i32, i32* @F_FL_EXHAUSTED, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.sge*, %struct.sge** %2, align 8
  %61 = getelementptr inbounds %struct.sge, %struct.sge* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %71

63:                                               ; preds = %41, %1
  %64 = load i32, i32* @F_FL_EXHAUSTED, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.sge*, %struct.sge** %2, align 8
  %69 = getelementptr inbounds %struct.sge, %struct.sge* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %56
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @A_SG_INTRTIMER, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @A_SG_INT_ENABLE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = load i32, i32* @F_FL0_ENABLE, align 4
  %88 = load i32, i32* @F_FL1_ENABLE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @doorbell_pio(%struct.adapter* %86, i32 %89)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @refill_free_list(%struct.sge*, %struct.TYPE_2__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @doorbell_pio(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
