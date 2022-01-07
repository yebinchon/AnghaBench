; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_generic_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_generic_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.packet_command = type { i64, i64, i32*, i32, i32 }
%struct.request_queue = type { i32 }
%struct.request = type { i32, i64, i32, i32, i32, i32, i32 }

@CGC_DATA_WRITE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CDROM_PACKET_SIZE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, %struct.packet_command*)* @pkt_generic_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_generic_packet(%struct.pktcdvd_device* %0, %struct.packet_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca %struct.packet_command*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store %struct.packet_command* %1, %struct.packet_command** %5, align 8
  %9 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %10 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_2__* %11)
  store %struct.request_queue* %12, %struct.request_queue** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CGC_DATA_WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @WRITE, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @READ, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* @__GFP_WAIT, align 4
  %26 = call %struct.request* @blk_get_request(%struct.request_queue* %13, i32 %24, i32 %25)
  store %struct.request* %26, %struct.request** %7, align 8
  %27 = load %struct.request*, %struct.request** %7, align 8
  %28 = icmp ne %struct.request* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %108

32:                                               ; preds = %23
  %33 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = load %struct.request*, %struct.request** %7, align 8
  %40 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %41 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @__GFP_WAIT, align 4
  %47 = call i64 @blk_rq_map_kern(%struct.request_queue* %38, %struct.request* %39, i32 %42, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %104

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @COMMAND_SIZE(i32 %56)
  %58 = load %struct.request*, %struct.request** %7, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.request*, %struct.request** %7, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %64 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @CDROM_PACKET_SIZE, align 4
  %67 = call i32 @memcpy(i32 %62, i32* %65, i32 %66)
  %68 = load i32, i32* @HZ, align 4
  %69 = mul nsw i32 60, %68
  %70 = load %struct.request*, %struct.request** %7, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %76 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %51
  %80 = load i32, i32* @REQ_QUIET, align 4
  %81 = load %struct.request*, %struct.request** %7, align 8
  %82 = getelementptr inbounds %struct.request, %struct.request* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %51
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %90 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.request*, %struct.request** %7, align 8
  %95 = call i32 @blk_execute_rq(i32 %88, i32 %93, %struct.request* %94, i32 0)
  %96 = load %struct.request*, %struct.request** %7, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %85
  br label %104

104:                                              ; preds = %103, %49
  %105 = load %struct.request*, %struct.request** %7, align 8
  %106 = call i32 @blk_put_request(%struct.request* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %29
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_2__*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
