; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ioapic_mask_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ioapic_mask_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.entry_union = type { i32 }

@__const.ioapic_mask_entry.eu = private unnamed_addr constant { %struct.TYPE_2__ } { %struct.TYPE_2__ { i32 1 } }, align 4
@ioapic_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ioapic_mask_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_mask_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %union.entry_union, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast %union.entry_union* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ({ %struct.TYPE_2__ }* @__const.ioapic_mask_entry.eu to i8*), i64 4, i1 false)
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @ioapic_lock, i64 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 16, %12
  %14 = bitcast %union.entry_union* %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @io_apic_write(i32 %10, i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 17, %19
  %21 = bitcast %union.entry_union* %6 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @io_apic_write(i32 %17, i32 %20, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @ioapic_lock, i64 %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @io_apic_write(i32, i32, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
