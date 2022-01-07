; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_viocd.c_viocd_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_viocd.c_viocd_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i32, i32*, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.rwrt_feature_desc = type { i32, i8* }

@EIO = common dso_local global i32 0, align 4
@CDC_DVD_RAM = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@CDF_RWRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.packet_command*)* @viocd_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viocd_packet(%struct.cdrom_device_info* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.rwrt_feature_desc*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  %9 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %10 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %95 [
    i32 128, label %19
    i32 129, label %53
  ]

19:                                               ; preds = %2
  %20 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp uge i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = call i8* @cpu_to_be16(i32 1)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i32, i32* %5, align 4
  %32 = icmp uge i32 %31, 3
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %35 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %40 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i32, i32* @CDC_DVD_RAM, align 4
  %45 = load i32, i32* @CDC_RAM, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %33, %30
  br label %114

53:                                               ; preds = %2
  %54 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %55 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CDF_RWRT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %53
  %62 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %63 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 4
  %66 = inttoptr i64 %65 to %struct.rwrt_feature_desc*
  store %struct.rwrt_feature_desc* %66, %struct.rwrt_feature_desc** %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp uge i64 %68, 20
  br i1 %69, label %70, label %93

70:                                               ; preds = %61
  %71 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %72 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %77 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %78, -1
  %80 = and i32 %75, %79
  %81 = load i32, i32* @CDC_DVD_RAM, align 4
  %82 = load i32, i32* @CDC_RAM, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %70
  %87 = load i32, i32* @CDF_RWRT, align 4
  %88 = call i8* @cpu_to_be16(i32 %87)
  %89 = load %struct.rwrt_feature_desc*, %struct.rwrt_feature_desc** %8, align 8
  %90 = getelementptr inbounds %struct.rwrt_feature_desc, %struct.rwrt_feature_desc* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.rwrt_feature_desc*, %struct.rwrt_feature_desc** %8, align 8
  %92 = getelementptr inbounds %struct.rwrt_feature_desc, %struct.rwrt_feature_desc* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %70, %61
  br label %94

94:                                               ; preds = %93, %53
  br label %114

95:                                               ; preds = %2
  %96 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %97 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %102 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 5, i32* %104, align 4
  %105 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %106 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 32, i32* %108, align 4
  %109 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %110 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %100, %95
  br label %114

114:                                              ; preds = %113, %94, %52
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %117 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
