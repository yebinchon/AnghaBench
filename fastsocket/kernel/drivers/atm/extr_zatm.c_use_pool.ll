; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_use_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_use_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { %struct.TYPE_2__*, i32**, i32, i64, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@ZATM_AAL5_POOL_BASE = common dso_local global i32 0, align 4
@uPD98401_RXFP_ALERT_SHIFT = common dso_local global i32 0, align 4
@uPD98401_RXFP_BTSZ_SHIFT = common dso_local global i32 0, align 4
@uPD98401_RXFP_BFSZ_SHIFT = common dso_local global i32 0, align 4
@dummy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"pool %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*, i32)* @use_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_pool(%struct.atm_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zatm_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %9 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %8)
  store %struct.zatm_dev* %9, %struct.zatm_dev** %5, align 8
  %10 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %11 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %2
  %21 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %22 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @skb_queue_head_init(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ZATM_AAL5_POOL_BASE, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 10, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %41 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %45 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %46 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 4
  %54 = load i32, i32* @uPD98401_RXFP_ALERT_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @uPD98401_RXFP_BTSZ_SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @uPD98401_RXFP_BFSZ_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %65 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = call i32 @zpokel(%struct.zatm_dev* %44, i64 %63, i64 %70)
  %72 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %73 = load i64, i64* @dummy, align 8
  %74 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %75 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = add nsw i64 %80, 1
  %82 = call i32 @zpokel(%struct.zatm_dev* %72, i64 %73, i64 %81)
  %83 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %84 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %83, i32 0, i32 2
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %88 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* null, i32** %92, align 8
  %93 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @refill_pool(%struct.atm_dev* %93, i32 %94)
  br label %96

96:                                               ; preds = %39, %2
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %99 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %105)
  ret void
}

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @refill_pool(%struct.atm_dev*, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
