; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c___do_tlb_refill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c___do_tlb_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.tlb_info, %struct.tlb_info }
%struct.tlb_info = type { i64, i64, i64 }

@MMU_VPN_MASK = common dso_local global i64 0, align 8
@PTEH_ASID_SHIFT = common dso_local global i64 0, align 8
@PTEH_VALID = common dso_local global i64 0, align 8
@TLB_STEP = common dso_local global i64 0, align 8
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
