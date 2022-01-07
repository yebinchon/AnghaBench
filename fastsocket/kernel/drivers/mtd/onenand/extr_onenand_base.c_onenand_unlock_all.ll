; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_unlock_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_unlock_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32 (i64)*, i32, i64, i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (i32, i64)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque

@ONENAND_HAS_UNLOCK_ALL = common dso_local global i32 0, align 4
@ONENAND_REG_START_BLOCK_ADDRESS = common dso_local global i64 0, align 8
@ONENAND_CMD_UNLOCK_ALL = common dso_local global i32 0, align 4
@FL_LOCKING = common dso_local global i32 0, align 4
@ONENAND_REG_CTRL_STATUS = common dso_local global i64 0, align 8
@ONENAND_CTRL_ONGO = common dso_local global i32 0, align 4
@ONENAND_SKIP_UNLOCK_CHECK = common dso_local global i32 0, align 4
@ONENAND_CMD_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @onenand_unlock_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_unlock_all(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 1
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  store %struct.onenand_chip* %8, %struct.onenand_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ONENAND_HAS_UNLOCK_ALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %1
  %19 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %19, i32 0, i32 6
  %21 = load i32 (i32, i64)*, i32 (i32, i64)** %20, align 8
  %22 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ONENAND_REG_START_BLOCK_ADDRESS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 %21(i32 0, i64 %26)
  %28 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %28, i32 0, i32 5
  %30 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %32 = bitcast %struct.mtd_info* %31 to %struct.mtd_info.1*
  %33 = load i32, i32* @ONENAND_CMD_UNLOCK_ALL, align 4
  %34 = call i32 %30(%struct.mtd_info.1* %32, i32 %33, i32 0, i32 0)
  %35 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %35, i32 0, i32 4
  %37 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %36, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %39 = bitcast %struct.mtd_info* %38 to %struct.mtd_info.0*
  %40 = load i32, i32* @FL_LOCKING, align 4
  %41 = call i32 %37(%struct.mtd_info.0* %39, i32 %40)
  br label %42

42:                                               ; preds = %55, %18
  %43 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %43, i32 0, i32 1
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ONENAND_REG_CTRL_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 %45(i64 %50)
  %52 = load i32, i32* @ONENAND_CTRL_ONGO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ONENAND_SKIP_UNLOCK_CHECK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %93

64:                                               ; preds = %56
  %65 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %66 = call i64 @onenand_check_lock_status(%struct.onenand_chip* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %93

69:                                               ; preds = %64
  %70 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %71 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %75 = call i32 @FLEXONENAND(%struct.onenand_chip* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %79 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %83 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %73, %69
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ONENAND_CMD_UNLOCK, align 4
  %92 = call i32 @onenand_do_lock_cmd(%struct.mtd_info* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %68, %63
  ret void
}

declare dso_local i64 @onenand_check_lock_status(%struct.onenand_chip*) #1

declare dso_local i64 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

declare dso_local i32 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_do_lock_cmd(%struct.mtd_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
