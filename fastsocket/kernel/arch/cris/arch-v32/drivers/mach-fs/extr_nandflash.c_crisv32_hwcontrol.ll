; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_nandflash.c_crisv32_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_nandflash.c_crisv32_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@gio = common dso_local global i32 0, align 4
@regi_gio = common dso_local global i32 0, align 4
@rw_pa_dout = common dso_local global i32 0, align 4
@PIN_BITMASK = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@CE_BIT = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@CLE_BIT = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@ALE_BIT = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@CTRL_BITMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @crisv32_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crisv32_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  store %struct.nand_chip* %13, %struct.nand_chip** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %3
  %21 = load i32, i32* @gio, align 4
  %22 = load i32, i32* @regi_gio, align 4
  %23 = load i32, i32* @rw_pa_dout, align 4
  %24 = call i32 @REG_RD(i32 %21, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.TYPE_4__* %8 to i8*
  %27 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i32, i32* @PIN_BITMASK, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NAND_NCE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @CE_BIT, align 4
  %39 = shl i32 1, %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %20
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NAND_CLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @CLE_BIT, align 4
  %50 = shl i32 1, %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NAND_ALE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @ALE_BIT, align 4
  %61 = shl i32 1, %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @gio, align 4
  %67 = load i32, i32* @regi_gio, align 4
  %68 = load i32, i32* @rw_pa_dout, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @REG_WR(i32 %66, i32 %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %3
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @NAND_CMD_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @writeb(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @local_irq_restore(i64 %83)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @REG_RD(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_WR(i32, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
