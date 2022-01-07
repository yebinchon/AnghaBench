; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_alloc_ldt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_alloc_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@LDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_struct*, i32)* @xen_alloc_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_alloc_ldt(%struct.desc_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.desc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.desc_struct* %0, %struct.desc_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %9 = udiv i32 %7, %8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.desc_struct*, %struct.desc_struct** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %15, i64 %17
  %19 = load i32, i32* @PAGE_KERNEL_RO, align 4
  %20 = call i32 @set_aliased_prot(%struct.desc_struct* %18, i32 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %10

25:                                               ; preds = %10
  ret void
}

declare dso_local i32 @set_aliased_prot(%struct.desc_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
