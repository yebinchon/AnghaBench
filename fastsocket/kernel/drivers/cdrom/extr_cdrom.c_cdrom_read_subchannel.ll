; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_read_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_read_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32* }
%struct.cdrom_subchnl = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_SUBCHANNEL = common dso_local global i32 0, align 4
@CDROM_MSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_subchnl*, i32)* @cdrom_read_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_subchannel(%struct.cdrom_device_info* %0, %struct.cdrom_subchnl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.cdrom_subchnl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdrom_device_ops*, align 8
  %9 = alloca %struct.packet_command, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.cdrom_subchnl* %1, %struct.cdrom_subchnl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  store %struct.cdrom_device_ops* %14, %struct.cdrom_device_ops** %8, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %16 = load i32, i32* @CGC_DATA_READ, align 4
  %17 = call i32 @init_cdrom_command(%struct.packet_command* %9, i8* %15, i32 16, i32 %16)
  %18 = load i32, i32* @GPCMD_READ_SUBCHANNEL, align 4
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 2, i32* %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 64, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 2, i32 1
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 16, i32* %37, align 4
  %38 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %8, align 8
  %39 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %39, align 8
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %42 = bitcast %struct.cdrom_device_info* %41 to %struct.cdrom_device_info.0*
  %43 = call i32 %40(%struct.cdrom_device_info.0* %42, %struct.packet_command* %9)
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %124

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %53 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @CDROM_MSF, align 4
  %55 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %56 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %63 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %69 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %75 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 13
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %81 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 14
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %89 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 15
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %97 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %105 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 10
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %113 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 11
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %121 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %47, %45
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
