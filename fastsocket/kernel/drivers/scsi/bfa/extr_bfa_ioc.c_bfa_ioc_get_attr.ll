; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, i32, i32 }
%struct.bfa_ioc_attr_s = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_get_attr(%struct.bfa_ioc_s* %0, %struct.bfa_ioc_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfa_ioc_attr_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfa_ioc_attr_s* %1, %struct.bfa_ioc_attr_s** %4, align 8
  %5 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %6 = bitcast %struct.bfa_ioc_attr_s* %5 to i8*
  %7 = call i32 @memset(i8* %6, i32 0, i32 72)
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %9 = call i32 @bfa_ioc_get_state(%struct.bfa_ioc_s* %8)
  %10 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = call i64 @bfa_ioc_portid(%struct.bfa_ioc_s* %12)
  %14 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %14, i32 0, i32 7
  store i64 %13, i64* %15, align 8
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %32 = call i32 @bfa_ioc_get_type(%struct.bfa_ioc_s* %31)
  %33 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %36, i32 0, i32 2
  %38 = call i32 @bfa_ioc_get_adapter_attr(%struct.bfa_ioc_s* %35, i32* %37)
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %40 = call i32 @bfa_ioc_devid(%struct.bfa_ioc_s* %39)
  %41 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %45 = call i64 @bfa_ioc_pcifn(%struct.bfa_ioc_s* %44)
  %46 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %50 = call i64 @bfa_ioc_pcifn(%struct.bfa_ioc_s* %49)
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %52 = call i64 @bfa_ioc_portid(%struct.bfa_ioc_s* %51)
  %53 = icmp eq i64 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %58 = load %struct.bfa_ioc_attr_s*, %struct.bfa_ioc_attr_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfa_ioc_attr_s, %struct.bfa_ioc_attr_s* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc_s* %57, i32 %61)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bfa_ioc_get_state(%struct.bfa_ioc_s*) #1

declare dso_local i64 @bfa_ioc_portid(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_get_type(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_get_adapter_attr(%struct.bfa_ioc_s*, i32*) #1

declare dso_local i32 @bfa_ioc_devid(%struct.bfa_ioc_s*) #1

declare dso_local i64 @bfa_ioc_pcifn(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
