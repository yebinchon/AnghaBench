; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.req_msg* }
%struct.req_msg = type { i32 }

@IMR0 = common dso_local global i64 0, align 8
@MU_INBOUND_DOORBELL_REQHEADCHANGED = common dso_local global i32 0, align 4
@IDBL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, %struct.req_msg*, i64)* @stex_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_send_cmd(%struct.st_hba* %0, %struct.req_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.st_hba*, align 8
  %5 = alloca %struct.req_msg*, align 8
  %6 = alloca i64, align 8
  store %struct.st_hba* %0, %struct.st_hba** %4, align 8
  store %struct.req_msg* %1, %struct.req_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @cpu_to_le16(i64 %7)
  %9 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %10 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %12 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.req_msg* %11, %struct.req_msg** %17, align 8
  %18 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %19 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %23 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %26 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IMR0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* @MU_INBOUND_DOORBELL_REQHEADCHANGED, align 4
  %32 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %33 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IDBL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %39 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IDBL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  ret void
}

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
