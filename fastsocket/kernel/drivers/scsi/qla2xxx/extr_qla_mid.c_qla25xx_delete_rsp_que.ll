; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_rsp_que.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_rsp_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { i32 }

@BIT_0 = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.rsp_que*)* @qla25xx_delete_rsp_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %7 = icmp ne %struct.rsp_que* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @BIT_0, align 4
  %10 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %11 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %16 = call i32 @qla25xx_init_rsp_que(%struct.scsi_qla_host* %14, %struct.rsp_que* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %23 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %24 = call i32 @qla25xx_free_rsp_que(%struct.scsi_qla_host* %22, %struct.rsp_que* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @qla25xx_init_rsp_que(%struct.scsi_qla_host*, %struct.rsp_que*) #1

declare dso_local i32 @qla25xx_free_rsp_que(%struct.scsi_qla_host*, %struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
