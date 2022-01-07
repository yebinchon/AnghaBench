; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_enable_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_enable_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IOCR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@CMCR = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@TC0R = common dso_local global i32 0, align 4
@HCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@CCAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*, i32)* @usc_enable_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_enable_loopback(%struct.mgsl_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.mgsl_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %85

7:                                                ; preds = %2
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %9 = load i32, i32* @IOCR, align 4
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %11 = load i32, i32* @IOCR, align 4
  %12 = call i32 @usc_InReg(%struct.mgsl_struct* %10, i32 %11)
  %13 = load i32, i32* @BIT7, align 4
  %14 = load i32, i32* @BIT6, align 4
  %15 = add nsw i32 %13, %14
  %16 = or i32 %12, %15
  %17 = call i32 @usc_OutReg(%struct.mgsl_struct* %8, i32 %9, i32 %16)
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %19 = load i32, i32* @CMCR, align 4
  %20 = call i32 @usc_OutReg(%struct.mgsl_struct* %18, i32 %19, i32 3940)
  %21 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %22 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %7
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %28 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %34 = load i32, i32* @TC0R, align 4
  %35 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %36 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 11059200, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @usc_OutReg(%struct.mgsl_struct* %33, i32 %34, i32 %40)
  br label %52

42:                                               ; preds = %26
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %44 = load i32, i32* @TC0R, align 4
  %45 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %46 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 14745600, %48
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @usc_OutReg(%struct.mgsl_struct* %43, i32 %44, i32 %50)
  br label %52

52:                                               ; preds = %42, %32
  br label %57

53:                                               ; preds = %7
  %54 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %55 = load i32, i32* @TC0R, align 4
  %56 = call i32 @usc_OutReg(%struct.mgsl_struct* %54, i32 %55, i32 8)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %59 = load i32, i32* @HCR, align 4
  %60 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %61 = load i32, i32* @HCR, align 4
  %62 = call i32 @usc_InReg(%struct.mgsl_struct* %60, i32 %61)
  %63 = load i32, i32* @BIT1, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* @BIT0, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @usc_OutReg(%struct.mgsl_struct* %58, i32 %59, i32 %67)
  %69 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %70 = load i32, i32* @IOCR, align 4
  %71 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %72 = load i32, i32* @IOCR, align 4
  %73 = call i32 @usc_InReg(%struct.mgsl_struct* %71, i32 %72)
  %74 = and i32 %73, 65528
  %75 = or i32 %74, 4
  %76 = call i32 @usc_OutReg(%struct.mgsl_struct* %69, i32 %70, i32 %75)
  %77 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %78 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %77, i32 0, i32 1
  store i32 768, i32* %78, align 8
  %79 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %80 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CCAR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outw(i32 768, i64 %83)
  br label %105

85:                                               ; preds = %2
  %86 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %87 = load i32, i32* @IOCR, align 4
  %88 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %89 = load i32, i32* @IOCR, align 4
  %90 = call i32 @usc_InReg(%struct.mgsl_struct* %88, i32 %89)
  %91 = load i32, i32* @BIT7, align 4
  %92 = load i32, i32* @BIT6, align 4
  %93 = add nsw i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %90, %94
  %96 = call i32 @usc_OutReg(%struct.mgsl_struct* %86, i32 %87, i32 %95)
  %97 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %98 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  %99 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %100 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CCAR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outw(i32 0, i64 %103)
  br label %105

105:                                              ; preds = %85, %57
  ret void
}

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
