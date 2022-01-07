; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_program_cycle_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_program_cycle_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@ide_pci_clk = common dso_local global i32 0, align 4
@program_cycle_times.recovery_values = internal constant [17 x i32] [i32 15, i32 15, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 0], align 16
@program_cycle_times.drwtim_regs = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@.str = private unnamed_addr constant [53 x i8] c"program_cycle_times parameters: total=%d, active=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Final counts: total=%d, active=%d, recovery=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Write 0x%02x to reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @program_cycle_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_cycle_times(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load i32, i32* @ide_pci_clk, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ide_pci_clk, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 33, %23 ]
  %26 = sdiv i32 1000, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, i32, ...) @cmdprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @quantize_timing(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @quantize_timing(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 16
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 16
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  store i32 16, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 16
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 16, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i8*, i32, i32, ...) @cmdprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [17 x i32], [17 x i32]* @program_cycle_times.recovery_values, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* @program_cycle_times.drwtim_regs, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @pci_write_config_byte(%struct.pci_dev* %65, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* @program_cycle_times.drwtim_regs, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, i32, ...) @cmdprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %78)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @cmdprintk(i8*, i32, i32, ...) #1

declare dso_local i32 @quantize_timing(i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
