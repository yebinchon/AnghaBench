; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_disable_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_disable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac = type { i32 }
%struct.idmac_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipu = type { i32, i32 }

@IDMAC_SDC_1 = common dso_local global i32 0, align 4
@IDMAC_SDC_0 = common dso_local global i32 0, align 4
@IDMAC_CHA_BUSY = common dso_local global i32 0, align 4
@TASK_STAT_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [118 x i8] c"Warning: timeout waiting for channel %u to stop: buf0_rdy = 0x%08X, buf1_rdy = 0x%08X, busy = 0x%08X, tstat = 0x%08X\0A\00", align 1
@IPU_CHA_BUF0_RDY = common dso_local global i32 0, align 4
@IPU_CHA_BUF1_RDY = common dso_local global i32 0, align 4
@IPU_TASKS_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"timeout = %d * 10ms\0A\00", align 1
@IDMAC_CHA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac*, %struct.idmac_channel*, i32)* @ipu_disable_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_disable_channel(%struct.idmac* %0, %struct.idmac_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.idmac*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.idmac* %0, %struct.idmac** %4, align 8
  store %struct.idmac_channel* %1, %struct.idmac_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %14 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.idmac*, %struct.idmac** %4, align 8
  %18 = call %struct.ipu* @to_ipu(%struct.idmac* %17)
  store %struct.ipu* %18, %struct.ipu** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IDMAC_SDC_1, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IDMAC_SDC_0, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %28
  store i32 40, i32* %12, align 4
  br label %33

33:                                               ; preds = %72, %32
  %34 = load %struct.ipu*, %struct.ipu** %8, align 8
  %35 = load i32, i32* @IDMAC_CHA_BUSY, align 4
  %36 = call i64 @idmac_read_icreg(%struct.ipu* %34, i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.ipu*, %struct.ipu** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ipu_channel_status(%struct.ipu* %41, i32 %42)
  %44 = load i64, i64* @TASK_STAT_ACTIVE, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i1 [ true, %33 ], [ %45, %40 ]
  br i1 %47, label %48, label %73

48:                                               ; preds = %46
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %12, align 4
  %51 = call i32 @msleep(i32 10)
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = load %struct.ipu*, %struct.ipu** %8, align 8
  %56 = getelementptr inbounds %struct.ipu, %struct.ipu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ipu*, %struct.ipu** %8, align 8
  %60 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %61 = call i64 @idmac_read_ipureg(%struct.ipu* %59, i32 %60)
  %62 = load %struct.ipu*, %struct.ipu** %8, align 8
  %63 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %64 = call i64 @idmac_read_ipureg(%struct.ipu* %62, i32 %63)
  %65 = load %struct.ipu*, %struct.ipu** %8, align 8
  %66 = load i32, i32* @IDMAC_CHA_BUSY, align 4
  %67 = call i64 @idmac_read_icreg(%struct.ipu* %65, i32 %66)
  %68 = load %struct.ipu*, %struct.ipu** %8, align 8
  %69 = load i32, i32* @IPU_TASKS_STAT, align 4
  %70 = call i64 @idmac_read_ipureg(%struct.ipu* %68, i32 %69)
  %71 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %61, i64 %64, i64 %67, i64 %70)
  br label %73

72:                                               ; preds = %48
  br label %33

73:                                               ; preds = %54, %46
  %74 = load %struct.ipu*, %struct.ipu** %8, align 8
  %75 = getelementptr inbounds %struct.ipu, %struct.ipu* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 40, %77
  %79 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %28, %24, %3
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @IDMAC_SDC_0, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @IDMAC_SDC_1, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87, %83
  store i32 5, i32* %12, align 4
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %97 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ipu_irq_status(i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %95, %92
  %103 = phi i1 [ false, %92 ], [ %101, %95 ]
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = call i32 @msleep(i32 5)
  br label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %12, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %12, align 4
  br label %92

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %87, %80
  %111 = load %struct.ipu*, %struct.ipu** %8, align 8
  %112 = getelementptr inbounds %struct.ipu, %struct.ipu* %111, i32 0, i32 0
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.ipu*, %struct.ipu** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @ipu_ic_disable_task(%struct.ipu* %115, i32 %116)
  %118 = load %struct.ipu*, %struct.ipu** %8, align 8
  %119 = load i32, i32* @IDMAC_CHA_EN, align 4
  %120 = call i64 @idmac_read_icreg(%struct.ipu* %118, i32 %119)
  store i64 %120, i64* %9, align 8
  %121 = load %struct.ipu*, %struct.ipu** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %11, align 8
  %124 = xor i64 %123, -1
  %125 = and i64 %122, %124
  %126 = load i32, i32* @IDMAC_CHA_EN, align 4
  %127 = call i32 @idmac_write_icreg(%struct.ipu* %121, i64 %125, i32 %126)
  %128 = load %struct.ipu*, %struct.ipu** %8, align 8
  %129 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %130 = call i64 @idmac_read_ipureg(%struct.ipu* %128, i32 %129)
  store i64 %130, i64* %9, align 8
  %131 = load %struct.ipu*, %struct.ipu** %8, align 8
  %132 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %133 = call i32 @idmac_write_ipureg(%struct.ipu* %131, i64 0, i32 %132)
  %134 = load %struct.ipu*, %struct.ipu** %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = shl i64 1, %137
  %139 = xor i64 %138, -1
  %140 = and i64 %135, %139
  %141 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %142 = call i32 @idmac_write_ipureg(%struct.ipu* %134, i64 %140, i32 %141)
  %143 = load %struct.ipu*, %struct.ipu** %8, align 8
  %144 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %145 = call i64 @idmac_read_ipureg(%struct.ipu* %143, i32 %144)
  store i64 %145, i64* %9, align 8
  %146 = load %struct.ipu*, %struct.ipu** %8, align 8
  %147 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %148 = call i32 @idmac_write_ipureg(%struct.ipu* %146, i64 0, i32 %147)
  %149 = load %struct.ipu*, %struct.ipu** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i32, i32* %7, align 4
  %152 = zext i32 %151 to i64
  %153 = shl i64 1, %152
  %154 = xor i64 %153, -1
  %155 = and i64 %150, %154
  %156 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %157 = call i32 @idmac_write_ipureg(%struct.ipu* %149, i64 %155, i32 %156)
  %158 = load %struct.ipu*, %struct.ipu** %8, align 8
  %159 = getelementptr inbounds %struct.ipu, %struct.ipu* %158, i32 0, i32 0
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  ret i32 0
}

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

declare dso_local i64 @idmac_read_icreg(%struct.ipu*, i32) #1

declare dso_local i64 @ipu_channel_status(%struct.ipu*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @idmac_read_ipureg(%struct.ipu*, i32) #1

declare dso_local i32 @ipu_irq_status(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_disable_task(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_write_icreg(%struct.ipu*, i64, i32) #1

declare dso_local i32 @idmac_write_ipureg(%struct.ipu*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
