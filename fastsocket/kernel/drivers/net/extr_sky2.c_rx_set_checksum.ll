; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_rx_set_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_rx_set_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i32, i32 }
%struct.sky2_rx_le = type { i32, i64, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@OP_TCPSTART = common dso_local global i32 0, align 4
@HW_OWNER = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@SKY2_FLAG_RX_CHECKSUM = common dso_local global i32 0, align 4
@BMU_ENA_RX_CHKSUM = common dso_local global i32 0, align 4
@BMU_DIS_RX_CHKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @rx_set_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_set_checksum(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_rx_le*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %4 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %5 = call %struct.sky2_rx_le* @sky2_next_rx(%struct.sky2_port* %4)
  store %struct.sky2_rx_le* %5, %struct.sky2_rx_le** %3, align 8
  %6 = load i32, i32* @ETH_HLEN, align 4
  %7 = shl i32 %6, 16
  %8 = load i32, i32* @ETH_HLEN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_rx_le, %struct.sky2_rx_le* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %3, align 8
  %14 = getelementptr inbounds %struct.sky2_rx_le, %struct.sky2_rx_le* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @OP_TCPSTART, align 4
  %16 = load i32, i32* @HW_OWNER, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.sky2_rx_le*, %struct.sky2_rx_le** %3, align 8
  %19 = getelementptr inbounds %struct.sky2_rx_le, %struct.sky2_rx_le* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %21 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @rxqaddr, align 8
  %24 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %25 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @Q_CSR, align 4
  %30 = call i32 @Q_ADDR(i32 %28, i32 %29)
  %31 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %32 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SKY2_FLAG_RX_CHECKSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @BMU_ENA_RX_CHKSUM, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @BMU_DIS_RX_CHKSUM, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @sky2_write32(i32 %22, i32 %30, i32 %42)
  ret void
}

declare dso_local %struct.sky2_rx_le* @sky2_next_rx(%struct.sky2_port*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sky2_write32(i32, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
