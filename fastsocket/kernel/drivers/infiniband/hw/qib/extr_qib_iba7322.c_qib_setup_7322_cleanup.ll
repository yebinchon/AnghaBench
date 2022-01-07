; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_setup_7322_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_setup_7322_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QSFP_GPIO_MOD_PRS_N = common dso_local global i32 0, align 4
@QSFP_GPIO_PORT2_SHIFT = common dso_local global i32 0, align 4
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@kr_gpio_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_setup_7322_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_setup_7322_cleanup(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = call i32 @qib_7322_free_irq(%struct.qib_devdata* %6)
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %130, %1
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %133

44:                                               ; preds = %38
  %45 = load i32, i32* @QSFP_GPIO_MOD_PRS_N, align 4
  %46 = load i32, i32* @QSFP_GPIO_MOD_PRS_N, align 4
  %47 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kfree(i32 %59)
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QIB_HAS_QSFP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %44
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i32, i32* %5, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %83 = load i32, i32* @kr_gpio_mask, align 4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @qib_write_kreg(%struct.qib_devdata* %82, i32 %83, i32 %88)
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = call i32 @qib_qsfp_deinit(i32* %104)
  br label %106

106:                                              ; preds = %67, %44
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = icmp ne %struct.TYPE_8__* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %106
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = call i32 @ib_destroy_ah(i32* %127)
  br label %129

129:                                              ; preds = %117, %106
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %38

133:                                              ; preds = %38
  ret void
}

declare dso_local i32 @qib_7322_free_irq(%struct.qib_devdata*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_qsfp_deinit(i32*) #1

declare dso_local i32 @ib_destroy_ah(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
