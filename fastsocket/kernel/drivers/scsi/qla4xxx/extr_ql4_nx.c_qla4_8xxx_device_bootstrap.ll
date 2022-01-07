; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_bootstrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}*, {}*, {}* }

@QLA_ERROR = common dso_local global i32 0, align 4
@QLA8XXX_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QLA8XXX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"HW State: INITIALIZING\0A\00", align 1
@QLA8XXX_DEV_INITIALIZING = common dso_local global i32 0, align 4
@QLA83XX_IDC_DRV_CTRL = common dso_local global i32 0, align 4
@GRACEFUL_RESET_BIT1 = common dso_local global i64 0, align 8
@AF_83XX_NO_FW_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HW State: FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"HW State: READY\0A\00", align 1
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_device_bootstrap(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %12 = load i32, i32* @QLA_ERROR, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.scsi_qla_host*)**
  %18 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %17, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = call i32 %18(%struct.scsi_qla_host* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = load i32, i32* @QLA8XXX_PEG_ALIVE_COUNTER, align 4
  %23 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = call i32 @msleep_interruptible(i32 200)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %33 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %34 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %35 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %167

37:                                               ; preds = %27
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %39 = load i32, i32* @QLA8XXX_PEG_ALIVE_COUNTER, align 4
  %40 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %38, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = bitcast {}** %59 to i32 (%struct.scsi_qla_host*)**
  %61 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %60, align 8
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %63 = call i32 %61(%struct.scsi_qla_host* %62)
  br label %64

64:                                               ; preds = %55, %52
  br label %79

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = bitcast {}** %72 to i32 (%struct.scsi_qla_host*)**
  %74 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %73, align 8
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %76 = call i32 %74(%struct.scsi_qla_host* %75)
  br label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %78, i32* %4, align 4
  br label %158

79:                                               ; preds = %68, %64
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %82 = call i32 @ql4_printk(i32 %80, %struct.scsi_qla_host* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %84 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %85 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %86 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %83, i32 %84, i32 %85)
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %88 = call i64 @is_qla8032(%struct.scsi_qla_host* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %79
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = load i32, i32* @QLA83XX_IDC_DRV_CTRL, align 4
  %93 = call i64 @qla4_83xx_rd_reg(%struct.scsi_qla_host* %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @GRACEFUL_RESET_BIT1, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %100 = load i32, i32* @QLA83XX_IDC_DRV_CTRL, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @GRACEFUL_RESET_BIT1, align 8
  %103 = xor i64 %102, -1
  %104 = and i64 %101, %103
  %105 = call i32 @qla4_83xx_wr_reg(%struct.scsi_qla_host* %99, i32 %100, i64 %104)
  %106 = load i32, i32* @AF_83XX_NO_FW_DUMP, align 4
  %107 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %108 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %107, i32 0, i32 1
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %98, %90
  br label %111

111:                                              ; preds = %110, %79
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = bitcast {}** %115 to i32 (%struct.scsi_qla_host*)**
  %117 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %116, align 8
  %118 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %119 = call i32 %117(%struct.scsi_qla_host* %118)
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %121 = call i64 @is_qla8022(%struct.scsi_qla_host* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %125 = call i32 @qla4_8xxx_get_minidump(%struct.scsi_qla_host* %124)
  br label %126

126:                                              ; preds = %123, %111
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %128 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = bitcast {}** %130 to i32 (%struct.scsi_qla_host*)**
  %132 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %131, align 8
  %133 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %134 = call i32 %132(%struct.scsi_qla_host* %133)
  store i32 %134, i32* %4, align 4
  %135 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %136 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = bitcast {}** %138 to i32 (%struct.scsi_qla_host*)**
  %140 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %139, align 8
  %141 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %142 = call i32 %140(%struct.scsi_qla_host* %141)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @QLA_SUCCESS, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %126
  %147 = load i32, i32* @KERN_INFO, align 4
  %148 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %149 = call i32 @ql4_printk(i32 %147, %struct.scsi_qla_host* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %151 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %150)
  %152 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %153 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %154 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %155 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %152, i32 %153, i32 %154)
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %167

157:                                              ; preds = %126
  br label %158

158:                                              ; preds = %157, %77
  %159 = load i32, i32* @KERN_INFO, align 4
  %160 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %161 = call i32 @ql4_printk(i32 %159, %struct.scsi_qla_host* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %162 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %163 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %164 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %165 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %162, i32 %163, i32 %164)
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %158, %146, %31
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla4_83xx_rd_reg(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4_83xx_wr_reg(%struct.scsi_qla_host*, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_get_minidump(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
