; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_print_pci_topology.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_print_pci_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SALRET_OK = common dso_local global i32 0, align 4
@SALRET_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @print_pci_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pci_topology(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 16, %10
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i64 %15, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %49

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @__pa(i8* %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @ia64_sn_ioif_get_pci_topology(i32 %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SALRET_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SALRET_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SALRET_NOT_IMPLEMENTED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %32
  br label %49

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %8

49:                                               ; preds = %42, %19, %8
  ret void
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ia64_sn_ioif_get_pci_topology(i32, i64) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
