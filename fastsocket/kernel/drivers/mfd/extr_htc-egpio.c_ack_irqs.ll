; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_htc-egpio.c_ack_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_htc-egpio.c_ack_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.egpio_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"EGPIO ack - write %x to base+%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.egpio_info*)* @ack_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_irqs(%struct.egpio_info* %0) #0 {
  %2 = alloca %struct.egpio_info*, align 8
  store %struct.egpio_info* %0, %struct.egpio_info** %2, align 8
  %3 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %4 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %7 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %8 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @egpio_writew(i32 %5, %struct.egpio_info* %6, i32 %9)
  %11 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %12 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %15 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %18 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %16, %19
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %20)
  ret void
}

declare dso_local i32 @egpio_writew(i32, %struct.egpio_info*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
