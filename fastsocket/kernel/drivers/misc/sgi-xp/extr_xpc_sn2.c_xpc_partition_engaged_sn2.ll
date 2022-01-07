; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_partition_engaged_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_partition_engaged_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.amo* }
%struct.amo = type { i32 }

@xpc_vars_sn2 = common dso_local global %struct.TYPE_2__* null, align 8
@XPC_ENGAGED_PARTITIONS_AMO_SN2 = common dso_local global i32 0, align 4
@FETCHOP_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @xpc_partition_engaged_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_partition_engaged_sn2(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.amo*, align 8
  store i16 %0, i16* %2, align 2
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xpc_vars_sn2, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.amo*, %struct.amo** %5, align 8
  %7 = load i32, i32* @XPC_ENGAGED_PARTITIONS_AMO_SN2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.amo, %struct.amo* %6, i64 %8
  store %struct.amo* %9, %struct.amo** %3, align 8
  %10 = load %struct.amo*, %struct.amo** %3, align 8
  %11 = getelementptr inbounds %struct.amo, %struct.amo* %10, i32 0, i32 0
  %12 = ptrtoint i32* %11 to i32
  %13 = call i32 @TO_AMO(i32 %12)
  %14 = load i32, i32* @FETCHOP_LOAD, align 4
  %15 = call i32 @FETCHOP_LOAD_OP(i32 %13, i32 %14)
  %16 = load i16, i16* %2, align 2
  %17 = call i32 @BIT(i16 signext %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @FETCHOP_LOAD_OP(i32, i32) #1

declare dso_local i32 @TO_AMO(i32) #1

declare dso_local i32 @BIT(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
