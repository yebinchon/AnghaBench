; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_deplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_deplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32)*, i32 (%struct.mtd_info.2*)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@NAND_CMD_DEPLETE1 = common dso_local global i32 0, align 4
@NAND_CMD_DEPLETE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @deplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deplete(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 2
  %12 = load i32 (%struct.mtd_info.2*)*, i32 (%struct.mtd_info.2*)** %11, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %14 = bitcast %struct.mtd_info* %13 to %struct.mtd_info.2*
  %15 = call i32 %12(%struct.mtd_info.2* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = load i32 (%struct.mtd_info.1*, i32)*, i32 (%struct.mtd_info.1*, i32)** %21, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %24 = bitcast %struct.mtd_info* %23 to %struct.mtd_info.1*
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %22(%struct.mtd_info.1* %24, i32 %25)
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %31 = bitcast %struct.mtd_info* %30 to %struct.mtd_info.0*
  %32 = load i32, i32* @NAND_CMD_DEPLETE1, align 4
  %33 = call i32 %29(%struct.mtd_info.0* %31, i32 %32, i32 0, i32 0)
  %34 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %35, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %38 = bitcast %struct.mtd_info* %37 to %struct.mtd_info.0*
  %39 = load i32, i32* @NAND_CMD_DEPLETE2, align 4
  %40 = call i32 %36(%struct.mtd_info.0* %38, i32 %39, i32 -1, i32 -1)
  %41 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %42, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %45 = bitcast %struct.mtd_info* %44 to %struct.mtd_info.0*
  %46 = load i32, i32* @NAND_CMD_DEPLETE1, align 4
  %47 = call i32 %43(%struct.mtd_info.0* %45, i32 %46, i32 0, i32 4)
  %48 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = load i32 (%struct.mtd_info.0*, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32)** %49, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %52 = bitcast %struct.mtd_info* %51 to %struct.mtd_info.0*
  %53 = load i32, i32* @NAND_CMD_DEPLETE2, align 4
  %54 = call i32 %50(%struct.mtd_info.0* %52, i32 %53, i32 -1, i32 -1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
