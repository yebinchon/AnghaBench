; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_fm93c56a_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_fm93c56a_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@AUBURN_EEPROM_DO_1 = common dso_local global i32 0, align 4
@AUBURN_EEPROM_CLK_RISE = common dso_local global i32 0, align 4
@AUBURN_EEPROM_CLK_FALL = common dso_local global i32 0, align 4
@FM93C56A_CMD_BITS = common dso_local global i32 0, align 4
@AUBURN_EEPROM_DO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32)* @fm93c56a_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm93c56a_cmd(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AUBURN_EEPROM_DO_1, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %17 = call i32 @eeprom_cmd(i32 %15, %struct.scsi_qla_host* %16)
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AUBURN_EEPROM_DO_1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AUBURN_EEPROM_CLK_RISE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %26 = call i32 @eeprom_cmd(i32 %24, %struct.scsi_qla_host* %25)
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AUBURN_EEPROM_DO_1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AUBURN_EEPROM_CLK_FALL, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %35 = call i32 @eeprom_cmd(i32 %33, %struct.scsi_qla_host* %34)
  %36 = load i32, i32* @FM93C56A_CMD_BITS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = shl i32 1, %37
  store i32 %38, i32* %8, align 4
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %87, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FM93C56A_CMD_BITS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @AUBURN_EEPROM_DO_1, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @AUBURN_EEPROM_DO_0, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %64 = call i32 @eeprom_cmd(i32 %62, %struct.scsi_qla_host* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @AUBURN_EEPROM_CLK_RISE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %75 = call i32 @eeprom_cmd(i32 %73, %struct.scsi_qla_host* %74)
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AUBURN_EEPROM_CLK_FALL, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %84 = call i32 @eeprom_cmd(i32 %82, %struct.scsi_qla_host* %83)
  %85 = load i32, i32* %5, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %39

90:                                               ; preds = %39
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %92 = call i32 @eeprom_no_addr_bits(%struct.scsi_qla_host* %91)
  %93 = sub nsw i32 %92, 1
  %94 = shl i32 1, %93
  store i32 %94, i32* %8, align 4
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %144, %90
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %98 = call i32 @eeprom_no_addr_bits(%struct.scsi_qla_host* %97)
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %147

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @AUBURN_EEPROM_DO_1, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @AUBURN_EEPROM_DO_0, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %116 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %121 = call i32 @eeprom_cmd(i32 %119, %struct.scsi_qla_host* %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %114, %109
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %125 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @AUBURN_EEPROM_CLK_RISE, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %132 = call i32 @eeprom_cmd(i32 %130, %struct.scsi_qla_host* %131)
  %133 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %134 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @AUBURN_EEPROM_CLK_FALL, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %141 = call i32 @eeprom_cmd(i32 %139, %struct.scsi_qla_host* %140)
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %123
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %95

147:                                              ; preds = %95
  ret i32 1
}

declare dso_local i32 @eeprom_cmd(i32, %struct.scsi_qla_host*) #1

declare dso_local i32 @eeprom_no_addr_bits(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
