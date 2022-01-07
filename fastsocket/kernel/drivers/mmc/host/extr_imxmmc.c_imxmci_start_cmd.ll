; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_start_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i64, i32, i32, i32, i64, i32, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@CMD_DAT_CONT_BUSY = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_FORMAT_R1 = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_FORMAT_R2 = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_FORMAT_R3 = common dso_local global i32 0, align 4
@IMXMCI_PEND_SET_INIT_b = common dso_local global i32 0, align 4
@CMD_DAT_CONT_INIT = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@CMD_DAT_CONT_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_REG_CMD = common dso_local global i64 0, align 8
@MMC_REG_ARGH = common dso_local global i64 0, align 8
@MMC_REG_ARGL = common dso_local global i64 0, align 8
@MMC_REG_CMD_DAT_CONT = common dso_local global i64 0, align 8
@IMXMCI_PEND_WAIT_RESP_b = common dso_local global i32 0, align 4
@IMXMCI_INT_MASK_DEFAULT = common dso_local global i32 0, align 4
@INT_MASK_END_CMD_RES = common dso_local global i32 0, align 4
@CMD_DAT_CONT_DATA_ENABLE = common dso_local global i32 0, align 4
@INT_MASK_DATA_TRAN = common dso_local global i32 0, align 4
@CMD_DAT_CONT_WRITE = common dso_local global i32 0, align 4
@INT_MASK_WRITE_OP_DONE = common dso_local global i32 0, align 4
@IMXMCI_PEND_CPU_DATA_b = common dso_local global i32 0, align 4
@INT_MASK_BUF_READY = common dso_local global i32 0, align 4
@MMC_REG_INT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CMD%02d (0x%02x) mask set to 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxmci_host*, %struct.mmc_command*, i32)* @imxmci_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_start_cmd(%struct.imxmci_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca %struct.imxmci_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %10 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %9, i32 0, i32 7
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %12 = icmp ne %struct.mmc_command* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %16 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %17 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %16, i32 0, i32 7
  store %struct.mmc_command* %15, %struct.mmc_command** %17, align 8
  %18 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %19 = call i32 @imxmci_stop_clock(%struct.imxmci_host* %18)
  %20 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_RSP_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @CMD_DAT_CONT_BUSY, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %32 = call i32 @mmc_resp_type(%struct.mmc_command* %31)
  switch i32 %32, label %45 [
    i32 131, label %33
    i32 130, label %33
    i32 129, label %37
    i32 128, label %41
  ]

33:                                               ; preds = %30, %30
  %34 = load i32, i32* @CMD_DAT_CONT_RESPONSE_FORMAT_R1, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @CMD_DAT_CONT_RESPONSE_FORMAT_R2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @CMD_DAT_CONT_RESPONSE_FORMAT_R3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %41, %37, %33
  %47 = load i32, i32* @IMXMCI_PEND_SET_INIT_b, align 4
  %48 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %49 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %48, i32 0, i32 5
  %50 = call i64 @test_and_clear_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @CMD_DAT_CONT_INIT, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %58 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @CMD_DAT_CONT_BUS_WIDTH_4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %71 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MMC_REG_CMD, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writew(i32 %69, i64 %74)
  %76 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 16
  %80 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %81 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MMC_REG_ARGH, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writew(i32 %79, i64 %84)
  %86 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %87 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 65535
  %90 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %91 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MMC_REG_ARGL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writew(i32 %89, i64 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %98 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MMC_REG_CMD_DAT_CONT, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writew(i32 %96, i64 %101)
  %103 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %104 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %103, i32 0, i32 6
  %105 = call i32 @atomic_set(i32* %104, i32 0)
  %106 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %107 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %108 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %107, i32 0, i32 5
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  %110 = load i32, i32* @IMXMCI_INT_MASK_DEFAULT, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @INT_MASK_END_CMD_RES, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @CMD_DAT_CONT_DATA_ENABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %66
  %120 = load i32, i32* @INT_MASK_DATA_TRAN, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @CMD_DAT_CONT_WRITE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load i32, i32* @INT_MASK_WRITE_OP_DONE, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %128, %119
  %134 = load i32, i32* @IMXMCI_PEND_CPU_DATA_b, align 4
  %135 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %136 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %135, i32 0, i32 5
  %137 = call i64 @test_bit(i32 %134, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @INT_MASK_BUF_READY, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %139, %133
  br label %145

145:                                              ; preds = %144, %66
  %146 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %147 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %146, i32 0, i32 3
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %152 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %154 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %157 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MMC_REG_INT_MASK, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writew(i32 %155, i64 %160)
  %162 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %163 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %162, i32 0, i32 3
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %167 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @mmc_dev(i32 %168)
  %170 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %171 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %174 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @dev_dbg(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %175, i32 %176)
  %178 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %179 = call i32 @imxmci_start_clock(%struct.imxmci_host* %178)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @imxmci_stop_clock(%struct.imxmci_host*) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @imxmci_start_clock(%struct.imxmci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
