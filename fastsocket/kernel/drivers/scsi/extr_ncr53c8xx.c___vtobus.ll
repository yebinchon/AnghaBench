; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c___vtobus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ncr53c8xx.c___vtobus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i64 }

@MEMO_CLUSTER_MASK = common dso_local global i64 0, align 8
@ncr53c8xx_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @__vtobus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__vtobus(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @VTOB_HASH_CODE(i8* %10)
  store i32 %11, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i64, i64* @MEMO_CLUSTER_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @spin_lock_irqsave(i32* @ncr53c8xx_lock, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.TYPE_5__* @___get_dma_pool(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %8, align 8
  br label %31

31:                                               ; preds = %42, %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %8, align 8
  br label %31

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @spin_unlock_irqrestore(i32* @ncr53c8xx_lock, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %57, %58
  %60 = add nsw i64 %55, %59
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %52
  %63 = phi i64 [ %60, %52 ], [ 0, %61 ]
  ret i64 %63
}

declare dso_local i32 @VTOB_HASH_CODE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @___get_dma_pool(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
