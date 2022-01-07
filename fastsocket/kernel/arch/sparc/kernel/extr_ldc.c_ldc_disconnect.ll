; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@LDC_MODE_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LDC_FLAG_ALLOCED_QUEUES = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LDC_STATE_BOUND = common dso_local global i32 0, align 4
@LDC_HS_OPEN = common dso_local global i32 0, align 4
@LDC_FLAG_RESET = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_IRQS = common dso_local global i32 0, align 4
@LDC_STATE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_disconnect(%struct.ldc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  %7 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LDC_MODE_RAW, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %136

33:                                               ; preds = %23
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @sun4v_ldc_tx_qconf(i32 %42, i32 0, i32 0)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %99

47:                                               ; preds = %33
  %48 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %55 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @sun4v_ldc_tx_qconf(i32 %50, i32 %53, i32 %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %99

61:                                               ; preds = %47
  %62 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @sun4v_ldc_rx_qconf(i32 %64, i32 0, i32 0)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %99

69:                                               ; preds = %61
  %70 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %71 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %74 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %77 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @sun4v_ldc_rx_qconf(i32 %72, i32 %75, i32 %78)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %99

83:                                               ; preds = %69
  %84 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %85 = load i32, i32* @LDC_STATE_BOUND, align 4
  %86 = call i32 @ldc_set_state(%struct.ldc_channel* %84, i32 %85)
  %87 = load i32, i32* @LDC_HS_OPEN, align 4
  %88 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %89 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @LDC_FLAG_RESET, align 4
  %91 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %96 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %95, i32 0, i32 1
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 0, i32* %2, align 4
  br label %136

99:                                               ; preds = %82, %68, %60, %46
  %100 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %101 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @sun4v_ldc_tx_qconf(i32 %102, i32 0, i32 0)
  %104 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @sun4v_ldc_rx_qconf(i32 %106, i32 0, i32 0)
  %108 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %109 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %113 = call i32 @free_irq(i32 %111, %struct.ldc_channel* %112)
  %114 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %115 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %119 = call i32 @free_irq(i32 %117, %struct.ldc_channel* %118)
  %120 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %121 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %125 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %129 = load i32, i32* @LDC_STATE_INIT, align 4
  %130 = call i32 @ldc_set_state(%struct.ldc_channel* %128, i32 %129)
  %131 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %132 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %131, i32 0, i32 1
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %99, %83, %30, %13
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sun4v_ldc_tx_qconf(i32, i32, i32) #1

declare dso_local i64 @sun4v_ldc_rx_qconf(i32, i32, i32) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
