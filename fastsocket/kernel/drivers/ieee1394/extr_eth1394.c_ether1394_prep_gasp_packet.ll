; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_prep_gasp_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_prep_gasp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32, i32*, i32, i32, i32, i8** }
%struct.eth1394_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }

@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@ETHER1394_GASP_SPECIFIER_ID_HI = common dso_local global i32 0, align 4
@ETHER1394_GASP_SPECIFIER_ID_LO = common dso_local global i32 0, align 4
@ETHER1394_GASP_VERSION = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@ALL_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*, %struct.eth1394_priv*, %struct.sk_buff*, i32)* @ether1394_prep_gasp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_prep_gasp_packet(%struct.hpsb_packet* %0, %struct.eth1394_priv* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca %struct.eth1394_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %5, align 8
  store %struct.eth1394_priv* %1, %struct.eth1394_priv** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %10 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %9, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %12 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %13 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %15, 49152
  %17 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %18 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 8
  %21 = or i32 %16, %20
  %22 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %23 = shl i32 %22, 4
  %24 = or i32 %21, %23
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %26 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %31 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8**
  %36 = getelementptr inbounds i8*, i8** %35, i64 -2
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %38 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %37, i32 0, i32 6
  store i8** %36, i8*** %38, align 8
  %39 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %40 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* @ETHER1394_GASP_SPECIFIER_ID_HI, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %49 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %48, i32 0, i32 6
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* @ETHER1394_GASP_SPECIFIER_ID_LO, align 4
  %53 = shl i32 %52, 24
  %54 = load i32, i32* @ETHER1394_GASP_VERSION, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %58 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %57, i32 0, i32 6
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %56, i8** %60, align 8
  %61 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %62 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %65 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @LOCAL_BUS, align 4
  %67 = load i32, i32* @ALL_NODES, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %70 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
