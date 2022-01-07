; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_track_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_track_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i32*, i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_TRACK_RZONE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i32, i32, %struct.TYPE_4__*)* @pkt_get_track_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_get_track_info(%struct.pktcdvd_device* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.packet_command, align 8
  %11 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* @CGC_DATA_READ, align 4
  %14 = call i32 @init_cdrom_command(%struct.packet_command* %10, %struct.TYPE_4__* %12, i32 8, i32 %13)
  %15 = load i32, i32* @GPCMD_READ_TRACK_RZONE_INFO, align 4
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 3
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 65280
  %26 = ashr i32 %25, 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 8, i32* %37, align 4
  %38 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %40 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %39, %struct.packet_command* %10)
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %67

44:                                               ; preds = %4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  store i32 4, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %44
  %60 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  store i32 %61, i32* %64, align 4
  %65 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %66 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %65, %struct.packet_command* %10)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %42
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pkt_generic_packet(%struct.pktcdvd_device*, %struct.packet_command*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
