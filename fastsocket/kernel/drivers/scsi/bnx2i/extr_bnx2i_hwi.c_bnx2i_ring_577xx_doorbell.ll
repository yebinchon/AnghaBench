; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_ring_577xx_doorbell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_ring_577xx_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2i_5771x_dbell = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@B577XX_ISCSI_CONNECTION_TYPE = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_conn*)* @bnx2i_ring_577xx_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_ring_577xx_doorbell(%struct.bnx2i_conn* %0) #0 {
  %2 = alloca %struct.bnx2i_conn*, align 8
  %3 = alloca %struct.bnx2i_5771x_dbell, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %2, align 8
  %5 = call i32 @memset(%struct.bnx2i_5771x_dbell* %3, i32 0, i32 4)
  %6 = load i32, i32* @B577XX_ISCSI_CONNECTION_TYPE, align 4
  %7 = load i32, i32* @B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = getelementptr inbounds %struct.bnx2i_5771x_dbell, %struct.bnx2i_5771x_dbell* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = bitcast %struct.bnx2i_5771x_dbell* %3 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writel(i32 %14, i32 %20)
  ret void
}

declare dso_local i32 @memset(%struct.bnx2i_5771x_dbell*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
