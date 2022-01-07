; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote = type { %struct.TYPE_7__*, %struct.TYPE_8__*, i32, %struct.TYPE_6__*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_5__*, i32, i32, %struct.usb_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@DATA_BUFSIZE = common dso_local global i32 0, align 4
@ati_remote_irq_in = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ati_remote_irq_out = common dso_local global i32 0, align 4
@init1 = common dso_local global i32 0, align 4
@init2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Initializing ati_remote hardware failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_remote*)* @ati_remote_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_initialize(%struct.ati_remote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ati_remote*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ati_remote* %0, %struct.ati_remote** %3, align 8
  %7 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %8 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %7, i32 0, i32 10
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %11 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %10, i32 0, i32 9
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %15 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %14, i32 0, i32 7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvintpipe(%struct.usb_device* %13, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @usb_pipeout(i32 %22)
  %24 = call i32 @usb_maxpacket(%struct.usb_device* %20, i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DATA_BUFSIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @DATA_BUFSIZE, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %35 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %40 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ati_remote_irq_in, align 4
  %44 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %45 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %46 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %45, i32 0, i32 7
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_fill_int_urb(%struct.TYPE_8__* %36, %struct.usb_device* %37, i32 %38, i32 %41, i32 %42, i32 %43, %struct.ati_remote* %44, i32 %49)
  %51 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %52 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %55 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %54, i32 0, i32 5
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %59 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %60 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %67 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_sndintpipe(%struct.usb_device* %65, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @usb_pipeout(i32 %74)
  %76 = call i32 @usb_maxpacket(%struct.usb_device* %72, i32 %73, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @DATA_BUFSIZE, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %32
  %81 = load i32, i32* @DATA_BUFSIZE, align 4
  br label %84

82:                                               ; preds = %32
  %83 = load i32, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %6, align 4
  %86 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %87 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %92 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @ati_remote_irq_out, align 4
  %96 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %97 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %98 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @usb_fill_int_urb(%struct.TYPE_8__* %88, %struct.usb_device* %89, i32 %90, i32 %93, i32 %94, i32 %95, %struct.ati_remote* %96, i32 %101)
  %103 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %104 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %107 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %111 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %112 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  %117 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %118 = load i32, i32* @init1, align 4
  %119 = call i64 @ati_remote_sendpacket(%struct.ati_remote* %117, i32 32772, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %84
  %122 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %123 = load i32, i32* @init2, align 4
  %124 = call i64 @ati_remote_sendpacket(%struct.ati_remote* %122, i32 32775, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121, %84
  %127 = load %struct.ati_remote*, %struct.ati_remote** %3, align 8
  %128 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_8__*, %struct.usb_device*, i32, i32, i32, i32, %struct.ati_remote*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @ati_remote_sendpacket(%struct.ati_remote*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
