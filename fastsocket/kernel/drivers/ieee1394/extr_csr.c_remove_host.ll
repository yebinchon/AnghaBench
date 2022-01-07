; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_remove_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CSR_BUS_INFO_SIZE = common dso_local global i32 0, align 4
@IEEE1394_BUSID_MAGIC = common dso_local global i32 0, align 4
@CSR_IRMC_SHIFT = common dso_local global i32 0, align 4
@CSR_CMC_SHIFT = common dso_local global i32 0, align 4
@CSR_ISC_SHIFT = common dso_local global i32 0, align 4
@CSR_BMC_SHIFT = common dso_local global i32 0, align 4
@CSR_PMC_SHIFT = common dso_local global i32 0, align 4
@CSR_CYC_CLK_ACC_SHIFT = common dso_local global i32 0, align 4
@CSR_MAX_REC_SHIFT = common dso_local global i32 0, align 4
@CSR_MAX_ROM_SHIFT = common dso_local global i32 0, align 4
@CSR_GENERATION_SHIFT = common dso_local global i32 0, align 4
@node_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @remove_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load i32, i32* @CSR_BUS_INFO_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @IEEE1394_BUSID_MAGIC, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @CSR_IRMC_SHIFT, align 4
  %12 = shl i32 0, %11
  %13 = load i32, i32* @CSR_CMC_SHIFT, align 4
  %14 = shl i32 0, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @CSR_ISC_SHIFT, align 4
  %17 = shl i32 0, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @CSR_BMC_SHIFT, align 4
  %20 = shl i32 0, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @CSR_PMC_SHIFT, align 4
  %23 = shl i32 0, %22
  %24 = or i32 %21, %23
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %26 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CSR_CYC_CLK_ACC_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %24, %30
  %32 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %33 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CSR_MAX_REC_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %31, %37
  %39 = load i32, i32* @CSR_MAX_ROM_SHIFT, align 4
  %40 = shl i32 0, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @CSR_GENERATION_SHIFT, align 4
  %43 = shl i32 0, %42
  %44 = or i32 %41, %43
  %45 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %46 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %44, %48
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %53 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_be32(i32 %55)
  %57 = getelementptr inbounds i32, i32* %8, i64 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %59 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = getelementptr inbounds i32, i32* %8, i64 4
  store i32 %62, i32* %63, align 16
  %64 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %65 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @node_cap, align 4
  %71 = call i32 @csr1212_detach_keyval_from_directory(i32 %69, i32 %70)
  %72 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %73 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @csr1212_init_local_csr(%struct.TYPE_4__* %75, i32* %8, i32 0)
  %77 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %78 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @csr1212_detach_keyval_from_directory(i32, i32) #2

declare dso_local i32 @csr1212_init_local_csr(%struct.TYPE_4__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
