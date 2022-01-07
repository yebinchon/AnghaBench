; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_i965_g33_setup_chipset_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_i965_g33_setup_chipset_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I965_IFPADDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_i965_g33_setup_chipset_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_i965_g33_setup_chipset_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %6 = load i64, i64* @I965_IFPADDR, align 8
  %7 = add nsw i64 %6, 4
  %8 = call i32 @pci_read_config_dword(i32 %5, i64 %7, i32* %1)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %10 = load i64, i64* @I965_IFPADDR, align 8
  %11 = call i32 @pci_read_config_dword(i32 %9, i64 %10, i32* %2)
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %0
  %16 = call i32 (...) @intel_alloc_chipset_flush_resource()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %18 = load i64, i64* @I965_IFPADDR, align 8
  %19 = add nsw i64 %18, 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 0), align 8
  %21 = call i32 @upper_32_bits(i32 %20)
  %22 = call i32 @pci_write_config_dword(i32 %17, i64 %19, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %24 = load i64, i64* @I965_IFPADDR, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 0), align 8
  %26 = or i32 %25, 1
  %27 = call i32 @pci_write_config_dword(i32 %23, i64 %24, i32 %26)
  br label %45

28:                                               ; preds = %0
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, -2
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %1, align 4
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 0), align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 1), align 8
  %40 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1))
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %15
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @intel_alloc_chipset_flush_resource(...) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @request_resource(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
