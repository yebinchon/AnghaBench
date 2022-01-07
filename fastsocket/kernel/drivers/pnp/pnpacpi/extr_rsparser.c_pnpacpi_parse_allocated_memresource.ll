; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_memresource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_memresource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }

@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@ACPI_READ_WRITE_MEMORY = common dso_local global i32 0, align 4
@IORESOURCE_MEM_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i64, i64, i32)* @pnpacpi_parse_allocated_memresource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add nsw i64 %11, %12
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ACPI_READ_WRITE_MEMORY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @IORESOURCE_MEM_WRITEABLE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %30, i64 %31, i64 %32, i32 %33)
  ret void
}

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
