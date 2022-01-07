; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_setup_usb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_setup_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { %struct.st5481_intr, %struct.st5481_ctrl, %struct.usb_device* }
%struct.st5481_intr = type { %struct.urb* }
%struct.urb = type { i32 }
%struct.st5481_ctrl = type { %struct.TYPE_5__, %struct.urb* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_4__ }
%struct.usb_host_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"reset_configuration failed,status=%d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"expecting 7 got %d endpoints!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"usb_set_interface failed,status=%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_ctrl_complete = common dso_local global i32 0, align 4
@INT_PKT_SIZE = common dso_local global i32 0, align 4
@EP_INT = common dso_local global i32 0, align 4
@usb_int_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st5481_setup_usb(%struct.st5481_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st5481_adapter*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.st5481_ctrl*, align 8
  %6 = alloca %struct.st5481_intr*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i32*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %3, align 8
  %13 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %16, i32 0, i32 1
  store %struct.st5481_ctrl* %17, %struct.st5481_ctrl** %5, align 8
  %18 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %18, i32 0, i32 0
  store %struct.st5481_intr* %19, %struct.st5481_intr** %6, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %8, align 8
  %20 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = call i32 @usb_reset_configuration(%struct.usb_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %150

28:                                               ; preds = %1
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %29, i32 0)
  store %struct.usb_interface* %30, %struct.usb_interface** %7, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %32 = icmp ne %struct.usb_interface* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %35 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %34, i32 3)
  store %struct.usb_host_interface* %35, %struct.usb_host_interface** %8, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %38 = icmp ne %struct.usb_host_interface* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %150

42:                                               ; preds = %36
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 7
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %50 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %150

56:                                               ; preds = %42
  %57 = call i8* @__constant_cpu_to_le16(i32 32)
  %58 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %59 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %58, i32 0, i32 0
  %60 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %59, align 8
  %61 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %60, i64 3
  %62 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i8* %57, i8** %63, align 8
  %64 = call i8* @__constant_cpu_to_le16(i32 32)
  %65 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %66 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %65, i32 0, i32 0
  %67 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %66, align 8
  %68 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %67, i64 4
  %69 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i8* %64, i8** %70, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %72 = call i32 @usb_set_interface(%struct.usb_device* %71, i32 0, i32 3)
  store i32 %72, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %56
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %79)
  store %struct.urb* %80, %struct.urb** %11, align 8
  %81 = load %struct.urb*, %struct.urb** %11, align 8
  %82 = icmp ne %struct.urb* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %150

86:                                               ; preds = %78
  %87 = load %struct.urb*, %struct.urb** %11, align 8
  %88 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %89 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %88, i32 0, i32 1
  store %struct.urb* %87, %struct.urb** %89, align 8
  %90 = load %struct.urb*, %struct.urb** %11, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %92 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %93 = call i32 @usb_sndctrlpipe(%struct.usb_device* %92, i32 0)
  %94 = load i32, i32* @usb_ctrl_complete, align 4
  %95 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %96 = call i32 @usb_fill_control_urb(%struct.urb* %90, %struct.usb_device* %91, i32 %93, i32* null, i32* null, i32 0, i32 %94, %struct.st5481_adapter* %95)
  %97 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %98 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %101 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ARRAY_SIZE(i32 %103)
  %105 = call i32 @fifo_init(i32* %99, i32 %104)
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %106)
  store %struct.urb* %107, %struct.urb** %11, align 8
  %108 = load %struct.urb*, %struct.urb** %11, align 8
  %109 = icmp ne %struct.urb* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %86
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %150

113:                                              ; preds = %86
  %114 = load %struct.urb*, %struct.urb** %11, align 8
  %115 = load %struct.st5481_intr*, %struct.st5481_intr** %6, align 8
  %116 = getelementptr inbounds %struct.st5481_intr, %struct.st5481_intr* %115, i32 0, i32 0
  store %struct.urb* %114, %struct.urb** %116, align 8
  %117 = load i32, i32* @INT_PKT_SIZE, align 4
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32* @kmalloc(i32 %117, i32 %118)
  store i32* %119, i32** %12, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %150

125:                                              ; preds = %113
  %126 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %127 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %126, i32 0, i32 0
  %128 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %127, align 8
  %129 = load i32, i32* @EP_INT, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %128, i64 %131
  store %struct.usb_host_endpoint* %132, %struct.usb_host_endpoint** %9, align 8
  %133 = load %struct.urb*, %struct.urb** %11, align 8
  %134 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %135 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %136 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %137 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @usb_rcvintpipe(%struct.usb_device* %135, i32 %139)
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* @INT_PKT_SIZE, align 4
  %143 = load i32, i32* @usb_int_complete, align 4
  %144 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %145 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %146 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @usb_fill_int_urb(%struct.urb* %133, %struct.usb_device* %134, i32 %140, i32* %141, i32 %142, i32 %143, %struct.st5481_adapter* %144, i32 %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %125, %122, %110, %83, %74, %48, %39, %24
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @WARNING(i8*, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i8* @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32*, i32, i32, %struct.st5481_adapter*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @fifo_init(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.st5481_adapter*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
