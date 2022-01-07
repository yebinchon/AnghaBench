; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_io-unit.c_iounit_release_scsi_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_io-unit.c_iounit_release_scsi_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iounit_struct* }
%struct.iounit_struct = type { i32, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@IOUNIT_DMA_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"iounit_release %08lx-%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64)* @iounit_release_scsi_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iounit_release_scsi_one(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iounit_struct*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.iounit_struct*, %struct.iounit_struct** %11, align 8
  store %struct.iounit_struct* %12, %struct.iounit_struct** %7, align 8
  %13 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %14 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = add i64 %22, %25
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @IOUNIT_DMA_BASE, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @IOD(i8* %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %53, %3
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %50 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clear_bit(i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %43

56:                                               ; preds = %43
  %57 = load %struct.iounit_struct*, %struct.iounit_struct** %7, align 8
  %58 = getelementptr inbounds %struct.iounit_struct, %struct.iounit_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IOD(i8*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
