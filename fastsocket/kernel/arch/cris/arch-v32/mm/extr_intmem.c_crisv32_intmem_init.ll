; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_intmem.c_crisv32_intmem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mm/extr_intmem.c_crisv32_intmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intmem_allocation = type { i32, i32, i64, i64 }

@crisv32_intmem_init.initiated = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intmem_allocations = common dso_local global i32 0, align 4
@MEM_INTMEM_START = common dso_local global i64 0, align 8
@RESERVED_SIZE = common dso_local global i64 0, align 8
@MEM_INTMEM_SIZE = common dso_local global i64 0, align 8
@intmem_virtual = common dso_local global i32 0, align 4
@STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crisv32_intmem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crisv32_intmem_init() #0 {
  %1 = alloca %struct.intmem_allocation*, align 8
  %2 = load i32, i32* @crisv32_intmem_init.initiated, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i64 @kmalloc(i32 24, i32 %5)
  %7 = inttoptr i64 %6 to %struct.intmem_allocation*
  store %struct.intmem_allocation* %7, %struct.intmem_allocation** %1, align 8
  %8 = call i32 @INIT_LIST_HEAD(i32* @intmem_allocations)
  %9 = load i64, i64* @MEM_INTMEM_START, align 8
  %10 = load i64, i64* @RESERVED_SIZE, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @MEM_INTMEM_SIZE, align 8
  %13 = load i64, i64* @RESERVED_SIZE, align 8
  %14 = sub nsw i64 %12, %13
  %15 = call i32 @ioremap(i64 %11, i64 %14)
  store i32 %15, i32* @intmem_virtual, align 4
  store i32 1, i32* @crisv32_intmem_init.initiated, align 4
  %16 = load i64, i64* @MEM_INTMEM_SIZE, align 8
  %17 = load i64, i64* @RESERVED_SIZE, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load %struct.intmem_allocation*, %struct.intmem_allocation** %1, align 8
  %20 = getelementptr inbounds %struct.intmem_allocation, %struct.intmem_allocation* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load %struct.intmem_allocation*, %struct.intmem_allocation** %1, align 8
  %22 = getelementptr inbounds %struct.intmem_allocation, %struct.intmem_allocation* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @STATUS_FREE, align 4
  %24 = load %struct.intmem_allocation*, %struct.intmem_allocation** %1, align 8
  %25 = getelementptr inbounds %struct.intmem_allocation, %struct.intmem_allocation* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.intmem_allocation*, %struct.intmem_allocation** %1, align 8
  %27 = getelementptr inbounds %struct.intmem_allocation, %struct.intmem_allocation* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %27, i32* @intmem_allocations)
  br label %29

29:                                               ; preds = %4, %0
  ret void
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
