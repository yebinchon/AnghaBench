; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_SET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_MBX_ASYNC_EVENT = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_handle_aen(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qlcnic_adapter*
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %22 = call i32 @QLCRDX(%struct.TYPE_3__* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @QLCNIC_SET_OWNER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @QLCNIC_MBX_FW(%struct.TYPE_3__* %31, i32 0)
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @QLCNIC_MBX_ASYNC_EVENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %40 = call i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %39)
  br label %41

41:                                               ; preds = %38, %28
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* @QLCNIC_DEF_INT_MASK, align 4
  %47 = call i32 @QLCRDX(%struct.TYPE_3__* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @writel(i32 0, i32 %54)
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
