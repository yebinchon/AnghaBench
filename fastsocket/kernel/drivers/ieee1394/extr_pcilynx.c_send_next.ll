; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_send_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_send_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i32, i32, %struct.lynx_send_data, %struct.lynx_send_data }
%struct.lynx_send_data = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ti_pcl = type { %struct.TYPE_4__*, i64, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.hpsb_packet = type { i32, i32, i32, i32, i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"trying to queue a new packet in nonempty fifo\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCL_NEXT_INVALID = common dso_local global i8* null, align 8
@PCL_BIGENDIAN = common dso_local global i32 0, align 4
@PCL_LAST_BUFF = common dso_local global i32 0, align 4
@PCL_CMD_XMT = common dso_local global i32 0, align 4
@PCL_CMD_UNFXMT = common dso_local global i32 0, align 4
@PCL_ISOMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_lynx*, i32)* @send_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_next(%struct.ti_lynx* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_lynx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_pcl, align 8
  %6 = alloca %struct.lynx_send_data*, align 8
  %7 = alloca %struct.hpsb_packet*, align 8
  store %struct.ti_lynx* %0, %struct.ti_lynx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %9 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %8, i32 0, i32 2
  store %struct.lynx_send_data* %9, %struct.lynx_send_data** %6, align 8
  %10 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %11 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %10, i32 0, i32 5
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %17 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PRINT(i32 %15, i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %23 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.hpsb_packet* @driver_packet(i32 %25)
  store %struct.hpsb_packet* %26, %struct.hpsb_packet** %7, align 8
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %28 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %27, i32 0, i32 6
  %29 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %30 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %29, i32 0, i32 5
  %31 = call i32 @list_move_tail(i32* %28, i32* %30)
  %32 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %33 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %36 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %39 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %42 = call i8* @pci_map_single(i32 %34, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %44 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %46 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %21
  %50 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %51 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %54 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %57 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %60 = call i8* @pci_map_single(i32 %52, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %62 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %66

63:                                               ; preds = %21
  %64 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %65 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %64, i32 0, i32 3
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %49
  %67 = load i8*, i8** @PCL_NEXT_INVALID, align 8
  %68 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** @PCL_NEXT_INVALID, align 8
  %70 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %73 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 14
  %76 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %77 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @PCL_BIGENDIAN, align 4
  %85 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 8
  %91 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %92 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* @PCL_LAST_BUFF, align 4
  %99 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %100 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  %107 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %108 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %115 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %133 [
    i32 130, label %117
    i32 128, label %125
  ]

117:                                              ; preds = %66
  %118 = load i32, i32* @PCL_CMD_XMT, align 4
  %119 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 8
  br label %133

125:                                              ; preds = %66
  %126 = load i32, i32* @PCL_CMD_UNFXMT, align 4
  %127 = getelementptr inbounds %struct.ti_pcl, %struct.ti_pcl* %5, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %66, %125, %117
  %134 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %135 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %136 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @put_pcl(%struct.ti_lynx* %134, i32 %137, %struct.ti_pcl* %5)
  %139 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %140 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %141 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.lynx_send_data*, %struct.lynx_send_data** %6, align 8
  %144 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @run_pcl(%struct.ti_lynx* %139, i32 %142, i32 %145)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @PRINT(i32, i32, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.hpsb_packet* @driver_packet(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i8* @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @put_pcl(%struct.ti_lynx*, i32, %struct.ti_pcl*) #1

declare dso_local i32 @run_pcl(%struct.ti_lynx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
