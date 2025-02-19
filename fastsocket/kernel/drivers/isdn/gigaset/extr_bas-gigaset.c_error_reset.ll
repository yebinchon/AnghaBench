; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_error_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_error_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BS_RESETTING = common dso_local global i32 0, align 4
@HD_RESET_INTERRUPT_PIPE = common dso_local global i32 0, align 4
@BAS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @error_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_reset(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %3 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %4 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BS_RESETTING, align 4
  %8 = call i32 @update_basstate(i32 %6, i32 %7, i32 0)
  %9 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HD_RESET_INTERRUPT_PIPE, align 4
  %13 = load i32, i32* @BAS_TIMEOUT, align 4
  %14 = call i32 @req_submit(i32 %11, i32 %12, i32 0, i32 %13)
  ret void
}

declare dso_local i32 @update_basstate(i32, i32, i32) #1

declare dso_local i32 @req_submit(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
