; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_io-unit.c_iounit_release_scsi_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_io-unit.c_iounit_release_scsi_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iounit_struct* }
%struct.iounit_struct = type { i32, i32 }
%struct.scatterlist = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IOUNIT_DMA_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"iounit_release %08lx-%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32)* @iounit_release_scsi_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iounit_release_scsi_sgl(%struct.device* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iounit_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.iounit_struct*, %struct.iounit_struct** %13, align 8
  store %struct.iounit_struct* %14, %struct.iounit_struct** %7, align 8
  %15 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %16 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %71, %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IOUNIT_DMA_BASE, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @IOD(i8* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %68, %22
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %65 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clear_bit(i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %58

71:                                               ; preds = %58
  %72 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %73 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %72)
  store %struct.scatterlist* %73, %struct.scatterlist** %5, align 8
  br label %19

74:                                               ; preds = %19
  %75 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %76 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IOD(i8*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
