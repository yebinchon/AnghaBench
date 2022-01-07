; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_command_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_command_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32, i32, i64, i32 }

@ONENAND_REG_START_ADDRESS1 = common dso_local global i64 0, align 8
@ONENAND_DDP_SHIFT = common dso_local global i32 0, align 4
@ONENAND_CMD_ERASE = common dso_local global i32 0, align 4
@ONENAND_REG_START_ADDRESS8 = common dso_local global i64 0, align 8
@ONENAND_FPA_SHIFT = common dso_local global i32 0, align 4
@ONENAND_REG_START_BUFFER = common dso_local global i64 0, align 8
@ONENAND_BSA_SHIFT = common dso_local global i32 0, align 4
@ONENAND_BSA_DATARAM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.onenand_chip*, i32)* @onenand_command_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_command_handle(%struct.onenand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %16 [
    i32 129, label %11
    i32 131, label %11
    i32 130, label %11
    i32 128, label %11
    i32 132, label %15
  ]

11:                                               ; preds = %2, %2, %2, %2
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @onenand_lock_handle(%struct.onenand_chip* %12, i32 %13)
  br label %79

15:                                               ; preds = %2
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %18 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ONENAND_REG_START_ADDRESS1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readw(i64 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ONENAND_DDP_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %16
  %30 = load i32, i32* @ONENAND_DDP_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = ashr i32 %37, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %29, %16
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ONENAND_CMD_ERASE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %79

50:                                               ; preds = %45
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %52 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ONENAND_REG_START_ADDRESS8, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @readw(i64 %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @ONENAND_FPA_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %62 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ONENAND_REG_START_BUFFER, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i64 @readw(i64 %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @ONENAND_BSA_SHIFT, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @ONENAND_BSA_DATARAM1, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ONENAND_BSA_DATARAM1, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %50, %49, %11
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @onenand_addr(%struct.onenand_chip* %83, i32 %84)
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %92 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %89, %86
  %99 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @onenand_data_handle(%struct.onenand_chip* %99, i32 %100, i32 %101, i64 %102)
  %104 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @onenand_update_interrupt(%struct.onenand_chip* %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %15
  ret void
}

declare dso_local i32 @onenand_lock_handle(%struct.onenand_chip*, i32) #1

declare dso_local i64 @readw(i64) #1

declare dso_local i64 @onenand_addr(%struct.onenand_chip*, i32) #1

declare dso_local i32 @onenand_data_handle(%struct.onenand_chip*, i32, i32, i64) #1

declare dso_local i32 @onenand_update_interrupt(%struct.onenand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
