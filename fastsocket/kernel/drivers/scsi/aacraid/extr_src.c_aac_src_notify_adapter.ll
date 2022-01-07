; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_aac_src_notify_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_aac_src_notify_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aac_dev = type { i32 }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INBOUNDDOORBELL_1 = common dso_local global i32 0, align 4
@SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_4 = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_2 = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_3 = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_6 = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, i32)* @aac_src_notify_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_src_notify_adapter(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %48 [
    i32 133, label %6
    i32 128, label %13
    i32 132, label %20
    i32 129, label %27
    i32 130, label %34
    i32 131, label %41
  ]

6:                                                ; preds = %2
  %7 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %9 = load i32, i32* @INBOUNDDOORBELL_1, align 4
  %10 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = call i32 @src_writel(%struct.aac_dev* %7, i32 %8, i32 %11)
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %16 = load i32, i32* @INBOUNDDOORBELL_4, align 4
  %17 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @src_writel(%struct.aac_dev* %14, i32 %15, i32 %18)
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %23 = load i32, i32* @INBOUNDDOORBELL_2, align 4
  %24 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = call i32 @src_writel(%struct.aac_dev* %21, i32 %22, i32 %25)
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %30 = load i32, i32* @INBOUNDDOORBELL_3, align 4
  %31 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @src_writel(%struct.aac_dev* %28, i32 %29, i32 %32)
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %37 = load i32, i32* @INBOUNDDOORBELL_6, align 4
  %38 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @src_writel(%struct.aac_dev* %35, i32 %36, i32 %39)
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %44 = load i32, i32* @INBOUNDDOORBELL_5, align 4
  %45 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = call i32 @src_writel(%struct.aac_dev* %42, i32 %43, i32 %46)
  br label %50

48:                                               ; preds = %2
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48, %41, %34, %27, %20, %13, %6
  ret void
}

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
