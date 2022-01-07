; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}*, {}*, {}* }
%struct.TYPE_3__ = type { i32 }

@CSR_EEPROM_GP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"NVM size = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EEPROM not found, EEPROM_GP=0x%08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to acquire EEPROM semaphore.\0A\00", align 1
@CSR_EEPROM_REG = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_MSK_ADDR = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_READ_VALID_MSK = common dso_local global i32 0, align 4
@IL_EEPROM_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Time out reading EEPROM[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"NVM Type: %s, version: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@EEPROM_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_eeprom_init(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @CSR_EEPROM_GP, align 4
  %11 = call i32 @_il_rd(%struct.il_priv* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @D_EEPROM(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @kzalloc(i32 %19, i32 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %132

31:                                               ; preds = %1
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %3, align 8
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = bitcast {}** %39 to i32 (%struct.il_priv*)**
  %41 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %40, align 8
  %42 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %43 = call i32 %41(%struct.il_priv* %42)
  %44 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %45 = call i32 @il_eeprom_verify_signature(%struct.il_priv* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %123

53:                                               ; preds = %31
  %54 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %55 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.il_priv*)**
  %59 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %58, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = call i32 %59(%struct.il_priv* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %123

68:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %69
  %74 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %75 = load i32, i32* @CSR_EEPROM_REG, align 4
  %76 = load i32, i32* @CSR_EEPROM_REG_MSK_ADDR, align 4
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 1
  %79 = and i32 %76, %78
  %80 = call i32 @_il_wr(%struct.il_priv* %74, i32 %75, i32 %79)
  %81 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %82 = load i32, i32* @CSR_EEPROM_REG, align 4
  %83 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %84 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %85 = load i32, i32* @IL_EEPROM_ACCESS_TIMEOUT, align 4
  %86 = call i32 @_il_poll_bit(%struct.il_priv* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %114

92:                                               ; preds = %73
  %93 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %94 = load i32, i32* @CSR_EEPROM_REG, align 4
  %95 = call i32 @_il_rd(%struct.il_priv* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = ashr i32 %96, 16
  %98 = call i32 @cpu_to_le16(i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  br label %69

109:                                              ; preds = %69
  %110 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %111 = load i32, i32* @EEPROM_VERSION, align 4
  %112 = call i32 @il_eeprom_query16(%struct.il_priv* %110, i32 %111)
  %113 = call i32 (i8*, ...) @D_EEPROM(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %89
  %115 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = bitcast {}** %118 to i32 (%struct.il_priv*)**
  %120 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %119, align 8
  %121 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %122 = call i32 %120(%struct.il_priv* %121)
  br label %123

123:                                              ; preds = %114, %64, %48
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %128 = call i32 @il_eeprom_free(%struct.il_priv* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %131 = call i32 @il_apm_stop(%struct.il_priv* %130)
  br label %132

132:                                              ; preds = %129, %28
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @D_EEPROM(i8*, ...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @il_eeprom_verify_signature(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @il_eeprom_query16(%struct.il_priv*, i32) #1

declare dso_local i32 @il_eeprom_free(%struct.il_priv*) #1

declare dso_local i32 @il_apm_stop(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
