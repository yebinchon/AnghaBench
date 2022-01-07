; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_recv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth1394_priv = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ETHER1394_GASP_BUFFERS = common dso_local global i32 0, align 4
@HPSB_ISO_DMA_PACKET_PER_BUFFER = common dso_local global i32 0, align 4
@ether1394_iso = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate IR context\0A\00", align 1
@ETHER1394_BC_ERROR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETHER1394_BC_STOPPED = common dso_local global i32 0, align 4
@ETHER1394_BC_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth1394_priv*)* @ether1394_recv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_recv_init(%struct.eth1394_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eth1394_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.eth1394_priv* %0, %struct.eth1394_priv** %3, align 8
  %5 = load i64, i64* @PAGE_SIZE, align 8
  %6 = trunc i64 %5 to i32
  %7 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %8 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = mul i32 2, %14
  %16 = call i32 @min(i32 %6, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %18 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* @ETHER1394_GASP_BUFFERS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* @ETHER1394_GASP_BUFFERS, align 4
  %24 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %25 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HPSB_ISO_DMA_PACKET_PER_BUFFER, align 4
  %28 = load i32, i32* @ether1394_iso, align 4
  %29 = call i32* @hpsb_iso_recv_init(%struct.TYPE_4__* %19, i32 %22, i32 %23, i32 %26, i32 %27, i32 1, i32 %28)
  %30 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %31 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %33 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = call i32 @ETH1394_PRINT_G(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ETHER1394_BC_ERROR, align 4
  %40 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %41 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %1
  %45 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %46 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @hpsb_iso_recv_start(i32* %47, i32 -1, i32 8, i32 -1)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @ETHER1394_BC_STOPPED, align 4
  %52 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %53 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @ETHER1394_BC_RUNNING, align 4
  %56 = load %struct.eth1394_priv*, %struct.eth1394_priv** %3, align 8
  %57 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @hpsb_iso_recv_init(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ETH1394_PRINT_G(i32, i8*) #1

declare dso_local i64 @hpsb_iso_recv_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
