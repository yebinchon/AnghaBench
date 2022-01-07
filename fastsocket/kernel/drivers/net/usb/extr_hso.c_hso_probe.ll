; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.hso_device = type { i32 }
%struct.hso_shared_int = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Not our interface\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HSO_INTF_MASK = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_NETWORK = common dso_local global i32 0, align 4
@disable_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hso_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.hso_device*, align 8
  %12 = alloca %struct.hso_shared_int*, align 8
  %13 = alloca %struct.hso_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.hso_device* null, %struct.hso_device** %11, align 8
  store %struct.hso_device* null, %struct.hso_device** %13, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = call i32 @hso_get_config_data(%struct.usb_interface* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 255
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 2
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %159

50:                                               ; preds = %36
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = call i32 @interface_to_usbdev(%struct.usb_interface* %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @usb_set_interface(i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %62 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HSO_INTF_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %149 [
    i32 128, label %66
    i32 129, label %127
  ]

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @HSO_PORT_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @HSO_PORT_NETWORK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* @disable_net, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %76, i32 %77)
  store %struct.hso_device* %78, %struct.hso_device** %11, align 8
  %79 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %80 = icmp ne %struct.hso_device* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %154

82:                                               ; preds = %75
  %83 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  store %struct.hso_device* %83, %struct.hso_device** %13, align 8
  br label %84

84:                                               ; preds = %82, %72
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %87 = call i32 @hso_get_mux_ports(%struct.usb_interface* %86, i8* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %154

90:                                               ; preds = %85
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = call %struct.hso_shared_int* @hso_create_shared_int(%struct.usb_interface* %91)
  store %struct.hso_shared_int* %92, %struct.hso_shared_int** %12, align 8
  %93 = load %struct.hso_shared_int*, %struct.hso_shared_int** %12, align 8
  %94 = icmp ne %struct.hso_shared_int* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %154

96:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 256
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load i8, i8* %10, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.hso_shared_int*, %struct.hso_shared_int** %12, align 8
  %110 = call %struct.hso_device* @hso_create_mux_serial_device(%struct.usb_interface* %107, i32 %108, %struct.hso_shared_int* %109)
  store %struct.hso_device* %110, %struct.hso_device** %11, align 8
  %111 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %112 = icmp ne %struct.hso_device* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %154

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %100
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = shl i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %97

121:                                              ; preds = %97
  %122 = load %struct.hso_device*, %struct.hso_device** %13, align 8
  %123 = icmp ne %struct.hso_device* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load %struct.hso_device*, %struct.hso_device** %13, align 8
  store %struct.hso_device* %125, %struct.hso_device** %11, align 8
  br label %126

126:                                              ; preds = %124, %121
  br label %150

127:                                              ; preds = %60
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @HSO_PORT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @HSO_PORT_NETWORK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* @disable_net, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %137, i32 %138)
  store %struct.hso_device* %139, %struct.hso_device** %11, align 8
  br label %144

140:                                              ; preds = %133, %127
  %141 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface* %141, i32 %142)
  store %struct.hso_device* %143, %struct.hso_device** %11, align 8
  br label %144

144:                                              ; preds = %140, %136
  %145 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %146 = icmp ne %struct.hso_device* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %154

148:                                              ; preds = %144
  br label %150

149:                                              ; preds = %60
  br label %154

150:                                              ; preds = %148, %126
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %153 = call i32 @usb_set_intfdata(%struct.usb_interface* %151, %struct.hso_device* %152)
  store i32 0, i32* %3, align 4
  br label %159

154:                                              ; preds = %149, %147, %113, %95, %89, %81
  %155 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %156 = call i32 @hso_free_interface(%struct.usb_interface* %155)
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %150, %44
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @hso_get_config_data(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hso_device* @hso_create_net_device(%struct.usb_interface*, i32) #1

declare dso_local i32 @hso_get_mux_ports(%struct.usb_interface*, i8*) #1

declare dso_local %struct.hso_shared_int* @hso_create_shared_int(%struct.usb_interface*) #1

declare dso_local %struct.hso_device* @hso_create_mux_serial_device(%struct.usb_interface*, i32, %struct.hso_shared_int*) #1

declare dso_local %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hso_device*) #1

declare dso_local i32 @hso_free_interface(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
