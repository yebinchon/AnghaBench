; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"erublk1\00", align 1
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@ZFCP_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_unit*, i32)* @zfcp_erp_unit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_unit_block(%struct.zfcp_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_unit*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %6 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %7 = load i32, i32* %4, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ZFCP_CLEAR, align 4
  %10 = call i32 @zfcp_erp_modify_unit_status(%struct.zfcp_unit* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @zfcp_erp_modify_unit_status(%struct.zfcp_unit*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
