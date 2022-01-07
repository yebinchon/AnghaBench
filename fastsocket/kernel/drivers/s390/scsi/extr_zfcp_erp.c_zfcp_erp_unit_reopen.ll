; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_reopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_unit_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.zfcp_unit = type { %struct.zfcp_port* }
%struct.zfcp_port = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_unit_reopen(%struct.zfcp_unit* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.zfcp_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.zfcp_unit*, %struct.zfcp_unit** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %12, i32 0, i32 0
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  store %struct.zfcp_port* %14, %struct.zfcp_port** %10, align 8
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %16 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %15, i32 0, i32 0
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %16, align 8
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @read_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %18)
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = call i32 @write_lock(i32* %21)
  %23 = load %struct.zfcp_unit*, %struct.zfcp_unit** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @_zfcp_erp_unit_reopen(%struct.zfcp_unit* %23, i32 %24, i8* %25, i8* %26)
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %29 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %28, i32 0, i32 0
  %30 = call i32 @write_unlock(i32* %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @read_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %31)
  ret void
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @_zfcp_erp_unit_reopen(%struct.zfcp_unit*, i32, i8*, i8*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
