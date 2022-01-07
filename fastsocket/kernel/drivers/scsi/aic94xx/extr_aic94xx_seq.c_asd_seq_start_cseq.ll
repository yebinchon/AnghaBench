; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_start_cseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_start_cseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@CPRGMCNT = common dso_local global i32 0, align 4
@cseq_idle_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_seq_start_cseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_seq_start_cseq(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %3 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %4 = load i32, i32* @CPRGMCNT, align 4
  %5 = load i32, i32* @cseq_idle_loop, align 4
  %6 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %3, i32 %4, i32 %5)
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %8 = call i32 @asd_unpause_cseq(%struct.asd_ha_struct* %7)
  ret i32 %8
}

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_unpause_cseq(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
