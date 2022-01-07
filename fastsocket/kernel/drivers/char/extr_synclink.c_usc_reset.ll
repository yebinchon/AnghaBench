; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i64, i64, i64, i64, i32, i64 }

@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@BIT30 = common dso_local global i32 0, align 4
@SDPIN = common dso_local global i64 0, align 8
@CCAR = common dso_local global i64 0, align 8
@RTCmd_SelectLittleEndian = common dso_local global i32 0, align 4
@PCR = common dso_local global i32 0, align 4
@IOCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_reset(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 80
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 40
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* @BIT30, align 4
  %24 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %25 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %29 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  store volatile i32 %30, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %38, %12
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load volatile i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %32

41:                                               ; preds = %32
  %42 = load i32, i32* @BIT30, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %45 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %49 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  store volatile i32 %50, i32* %51, align 4
  %52 = call i32 @BUS_DESCRIPTOR(i32 1, i32 2, i32 2, i32 0, i32 4, i32 0, i32 0, i32 5)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %60

54:                                               ; preds = %1
  %55 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %56 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 8
  %59 = call i32 @outb(i32 0, i64 %58)
  br label %60

60:                                               ; preds = %54, %41
  %61 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %62 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %64 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %66 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %68 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SDPIN, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 12, i64 %71)
  %73 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %74 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @outw(i32 0, i64 %75)
  %77 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %78 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CCAR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outw(i32 0, i64 %81)
  %83 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %84 = load i32, i32* @RTCmd_SelectLittleEndian, align 4
  %85 = call i32 @usc_RTCmd(%struct.mgsl_struct* %83, i32 %84)
  %86 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %87 = load i32, i32* @PCR, align 4
  %88 = call i32 @usc_OutReg(%struct.mgsl_struct* %86, i32 %87, i32 61685)
  %89 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %90 = load i32, i32* @IOCR, align 4
  %91 = call i32 @usc_OutReg(%struct.mgsl_struct* %89, i32 %90, i32 4)
  ret void
}

declare dso_local i32 @BUS_DESCRIPTOR(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @usc_RTCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
