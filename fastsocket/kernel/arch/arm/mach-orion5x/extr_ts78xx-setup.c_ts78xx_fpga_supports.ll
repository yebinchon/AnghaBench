; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_supports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_supports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ts78xx_fpga = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ts78xx_fpga_supports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts78xx_fpga_supports() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0), align 4
  switch i32 %1, label %3 [
    i32 132, label %2
    i32 131, label %2
    i32 130, label %2
    i32 129, label %2
    i32 128, label %2
  ]

2:                                                ; preds = %0, %0, %0, %0, %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 2, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 1, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 0, i32 0), align 4
  br label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 2, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 1, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 1, i32 0, i32 0), align 4
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
