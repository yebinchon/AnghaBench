; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_read_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac_inj.c_amd64_inject_read_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@F10_NB_ARRAY_DRAM_ECC = common dso_local global i32 0, align 4
@F10_NB_ARRAY_ADDR = common dso_local global i32 0, align 4
@F10_NB_ARRAY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"section=0x%x word_bits=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i8*, i64)* @amd64_inject_read_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amd64_inject_read_store(%struct.mem_ctl_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amd64_pvt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %14, align 8
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strict_strtoul(i8* %16, i32 10, i64* %9)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %3
  %23 = load i32, i32* @F10_NB_ARRAY_DRAM_ECC, align 4
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SET_NB_ARRAY_ADDRESS(i32 %27)
  %29 = or i32 %23, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %31 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @F10_NB_ARRAY_ADDR, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @amd64_write_pci_cfg(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %41 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SET_NB_DRAM_INJECTION_READ(i32 %39, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %46 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @F10_NB_ARRAY_DATA, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @amd64_write_pci_cfg(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @debugf0(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %4, align 8
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %55, %22
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @SET_NB_ARRAY_ADDRESS(i32) #1

declare dso_local i32 @amd64_write_pci_cfg(i32, i32, i32) #1

declare dso_local i32 @SET_NB_DRAM_INJECTION_READ(i32, i32) #1

declare dso_local i32 @debugf0(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
