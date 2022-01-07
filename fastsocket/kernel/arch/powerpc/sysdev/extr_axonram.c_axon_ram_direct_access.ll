; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_axonram.c_axon_ram_direct_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_axonram.c_axon_ram_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.axon_ram_bank* }
%struct.axon_ram_bank = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@AXON_RAM_SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Access outside of address space\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i8**, i64*)* @axon_ram_direct_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axon_ram_direct_access(%struct.block_device* %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.axon_ram_bank*, align 8
  %11 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.axon_ram_bank*, %struct.axon_ram_bank** %15, align 8
  store %struct.axon_ram_bank* %16, %struct.axon_ram_bank** %10, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.block_device*, %struct.block_device** %6, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.block_device*, %struct.block_device** %6, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %22, %4
  %33 = load i32, i32* @AXON_RAM_SECTOR_SHIFT, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.axon_ram_bank*, %struct.axon_ram_bank** %10, align 8
  %38 = getelementptr inbounds %struct.axon_ram_bank, %struct.axon_ram_bank* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.axon_ram_bank*, %struct.axon_ram_bank** %10, align 8
  %43 = getelementptr inbounds %struct.axon_ram_bank, %struct.axon_ram_bank* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %32
  %50 = load %struct.axon_ram_bank*, %struct.axon_ram_bank** %10, align 8
  %51 = getelementptr inbounds %struct.axon_ram_bank, %struct.axon_ram_bank* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8**, i8*** %8, align 8
  %59 = call i64 @virt_to_phys(i8** %58)
  %60 = load i64, i64* @PAGE_SHIFT, align 8
  %61 = lshr i64 %59, %60
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %49, %41
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @virt_to_phys(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
