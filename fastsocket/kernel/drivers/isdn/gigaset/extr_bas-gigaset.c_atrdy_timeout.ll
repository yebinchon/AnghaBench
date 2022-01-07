; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atrdy_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atrdy_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"timeout waiting for HD_READY_SEND_ATDATA\0A\00", align 1
@BS_ATREADY = common dso_local global i32 0, align 4
@BS_ATTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atrdy_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atrdy_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bas_cardstate*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.cardstate*
  store %struct.cardstate* %6, %struct.cardstate** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.bas_cardstate*, %struct.bas_cardstate** %9, align 8
  store %struct.bas_cardstate* %10, %struct.bas_cardstate** %4, align 8
  %11 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_warn(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %16 = load i32, i32* @BS_ATREADY, align 4
  %17 = load i32, i32* @BS_ATTIMER, align 4
  %18 = call i32 @update_basstate(%struct.bas_cardstate* %15, i32 %16, i32 %17)
  %19 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %20 = call i32 @start_cbsend(%struct.cardstate* %19)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @update_basstate(%struct.bas_cardstate*, i32, i32) #1

declare dso_local i32 @start_cbsend(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
