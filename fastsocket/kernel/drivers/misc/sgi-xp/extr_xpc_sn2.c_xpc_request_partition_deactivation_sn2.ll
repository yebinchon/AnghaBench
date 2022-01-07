; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_request_partition_deactivation_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_request_partition_deactivation_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32, i32, i64 }
%struct.amo = type { i32 }

@XPC_DEACTIVATE_REQUEST_AMO_SN2 = common dso_local global i32 0, align 4
@FETCHOP_OR = common dso_local global i32 0, align 4
@sn_partition_id = common dso_local global i32 0, align 4
@xp_nofault_PIOR_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_request_partition_deactivation_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_request_partition_deactivation_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %struct.xpc_partition_sn2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amo*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %7 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.xpc_partition_sn2* %8, %struct.xpc_partition_sn2** %3, align 8
  %9 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @XPC_DEACTIVATE_REQUEST_AMO_SN2, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %11, %14
  %16 = call i64 @__va(i64 %15)
  %17 = inttoptr i64 %16 to %struct.amo*
  store %struct.amo* %17, %struct.amo** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load %struct.amo*, %struct.amo** %5, align 8
  %21 = getelementptr inbounds %struct.amo, %struct.amo* %20, i32 0, i32 0
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @TO_AMO(i32 %22)
  %24 = load i32, i32* @FETCHOP_OR, align 4
  %25 = load i32, i32* @sn_partition_id, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @FETCHOP_STORE_OP(i32 %23, i32 %24, i32 %26)
  %28 = load %struct.amo*, %struct.amo** %5, align 8
  %29 = getelementptr inbounds %struct.amo, %struct.amo* %28, i32 0, i32 0
  %30 = call i32 @NASID_GET(i32* %29)
  %31 = load i32, i32* @xp_nofault_PIOR_target, align 4
  %32 = call i64 @GLOBAL_MMR_ADDR(i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @xp_nofault_PIOR(i32* %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  %37 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @cnodeid_to_nasid(i32 0)
  %41 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %42 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %45 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xpc_send_activate_IRQ_sn2(i64 %39, i32 %40, i32 %43, i32 %46)
  ret void
}

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @FETCHOP_STORE_OP(i32, i32, i32) #1

declare dso_local i32 @TO_AMO(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xp_nofault_PIOR(i32*) #1

declare dso_local i64 @GLOBAL_MMR_ADDR(i32, i32) #1

declare dso_local i32 @NASID_GET(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @xpc_send_activate_IRQ_sn2(i64, i32, i32, i32) #1

declare dso_local i32 @cnodeid_to_nasid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
