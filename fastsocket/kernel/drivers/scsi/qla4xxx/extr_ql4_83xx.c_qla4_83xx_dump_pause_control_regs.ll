; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_dump_pause_control_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_dump_pause_control_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA83XX_SRE_SHIM_CONTROL = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SRE-Shim Ctrl:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Port 0 Rx Buffer Pause Threshold Registers[TC7..TC0]:\00", align 1
@QLA83XX_PORT0_RXB_PAUSE_THRS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Port 1 Rx Buffer Pause Threshold Registers[TC7..TC0]:\00", align 1
@QLA83XX_PORT1_RXB_PAUSE_THRS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%x  \00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Port 0 RxB Traffic Class Max Cell Registers[3..0]:\00", align 1
@QLA83XX_PORT0_RXB_TC_MAX_CELL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"Port 1 RxB Traffic Class Max Cell Registers[3..0]:\00", align 1
@QLA83XX_PORT1_RXB_TC_MAX_CELL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"Port 0 RxB Rx Traffic Class Stats [TC7..TC0]\00", align 1
@QLA83XX_PORT0_RXB_TC_STATS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"Port 1 RxB Rx Traffic Class Stats [TC7..TC0]\00", align 1
@QLA83XX_PORT1_RXB_TC_STATS = common dso_local global i64 0, align 8
@QLA83XX_PORT2_IFB_PAUSE_THRS = common dso_local global i64 0, align 8
@QLA83XX_PORT3_IFB_PAUSE_THRS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [48 x i8] c"IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4_83xx_dump_pause_control_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_dump_pause_control_regs(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = load i64, i64* @QLA83XX_SRE_SHIM_CONTROL, align 8
  %10 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %8, i64 %9, i32* %3)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %11, %struct.scsi_qla_host* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @DEBUG2(i32 %14)
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %16, %struct.scsi_qla_host* %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @DEBUG2(i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %25 = load i64, i64* @QLA83XX_PORT0_RXB_PAUSE_THRS, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %24, i64 %29, i32* %3)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @DEBUG2(i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %20

37:                                               ; preds = %20
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @DEBUG2(i32 %38)
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %42 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %40, %struct.scsi_qla_host* %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @DEBUG2(i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %58, %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = load i64, i64* @QLA83XX_PORT1_RXB_PAUSE_THRS, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %48, i64 %53, i32* %3)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = call i32 @DEBUG2(i32 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %44

61:                                               ; preds = %44
  %62 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @DEBUG2(i32 %62)
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %66 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %64, %struct.scsi_qla_host* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @DEBUG2(i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %82, %61
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %73 = load i64, i64* @QLA83XX_PORT0_RXB_TC_MAX_CELL, align 8
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %72, i64 %77, i32* %3)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = call i32 @DEBUG2(i32 %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %68

85:                                               ; preds = %68
  %86 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @DEBUG2(i32 %86)
  %88 = load i32, i32* @KERN_INFO, align 4
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %90 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %88, %struct.scsi_qla_host* %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %91 = call i32 @DEBUG2(i32 %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %106, %85
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %97 = load i64, i64* @QLA83XX_PORT1_RXB_TC_MAX_CELL, align 8
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  %102 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %96, i64 %101, i32* %3)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = call i32 @DEBUG2(i32 %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %92

109:                                              ; preds = %92
  %110 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @DEBUG2(i32 %110)
  %112 = load i32, i32* @KERN_INFO, align 4
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %114 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %112, %struct.scsi_qla_host* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %115 = call i32 @DEBUG2(i32 %114)
  store i32 7, i32* %5, align 4
  br label %116

116:                                              ; preds = %138, %109
  %117 = load i32, i32* %5, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %116
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %121 = load i64, i64* @QLA83XX_PORT0_RXB_TC_STATS, align 8
  %122 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %120, i64 %121, i32* %3)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 536870911
  store i32 %124, i32* %3, align 4
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %126 = load i64, i64* @QLA83XX_PORT0_RXB_TC_STATS, align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %5, align 4
  %129 = shl i32 %128, 29
  %130 = or i32 %127, %129
  %131 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %125, i64 %126, i32 %130)
  %132 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %133 = load i64, i64* @QLA83XX_PORT0_RXB_TC_STATS, align 8
  %134 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %132, i64 %133, i32* %3)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = call i32 @DEBUG2(i32 %136)
  br label %138

138:                                              ; preds = %119
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %5, align 4
  br label %116

141:                                              ; preds = %116
  %142 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %143 = call i32 @DEBUG2(i32 %142)
  %144 = load i32, i32* @KERN_INFO, align 4
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %146 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %144, %struct.scsi_qla_host* %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %147 = call i32 @DEBUG2(i32 %146)
  store i32 7, i32* %5, align 4
  br label %148

148:                                              ; preds = %170, %141
  %149 = load i32, i32* %5, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %153 = load i64, i64* @QLA83XX_PORT1_RXB_TC_STATS, align 8
  %154 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %152, i64 %153, i32* %3)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %3, align 4
  %156 = and i32 %155, 536870911
  store i32 %156, i32* %3, align 4
  %157 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %158 = load i64, i64* @QLA83XX_PORT1_RXB_TC_STATS, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %5, align 4
  %161 = shl i32 %160, 29
  %162 = or i32 %159, %161
  %163 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %157, i64 %158, i32 %162)
  %164 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %165 = load i64, i64* @QLA83XX_PORT1_RXB_TC_STATS, align 8
  %166 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %164, i64 %165, i32* %3)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %3, align 4
  %168 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = call i32 @DEBUG2(i32 %168)
  br label %170

170:                                              ; preds = %151
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %5, align 4
  br label %148

173:                                              ; preds = %148
  %174 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %175 = call i32 @DEBUG2(i32 %174)
  %176 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %177 = load i64, i64* @QLA83XX_PORT2_IFB_PAUSE_THRS, align 8
  %178 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %176, i64 %177, i32* %3)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %180 = load i64, i64* @QLA83XX_PORT3_IFB_PAUSE_THRS, align 8
  %181 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %179, i64 %180, i32* %4)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* @KERN_INFO, align 4
  %183 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* %4, align 4
  %186 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %182, %struct.scsi_qla_host* %183, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %184, i32 %185)
  %187 = call i32 @DEBUG2(i32 %186)
  ret void
}

declare dso_local i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host*, i64, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
