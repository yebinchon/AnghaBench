; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c___set_isoc_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c___set_isoc_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.btusb_data* }
%struct.btusb_data = type { i32, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, i32, %struct.usb_interface* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s setting interface failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s invalid SCO descriptors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @__set_isoc_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_isoc_interface(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load %struct.btusb_data*, %struct.btusb_data** %12, align 8
  store %struct.btusb_data* %13, %struct.btusb_data** %6, align 8
  %14 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %15 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %14, i32 0, i32 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %7, align 8
  %17 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %18 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %17, i32 0, i32 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  %20 = icmp ne %struct.usb_interface* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %114

24:                                               ; preds = %2
  %25 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %26 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @usb_set_interface(i32 %27, i32 1, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %114

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %43 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %45 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %44, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %45, align 8
  %46 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %47 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %46, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %47, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %93, %40
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %48
  %58 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %66, %struct.usb_endpoint_descriptor** %8, align 8
  %67 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %68 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %67, i32 0, i32 2
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %68, align 8
  %70 = icmp ne %struct.usb_endpoint_descriptor* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %57
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %73 = call i64 @usb_endpoint_is_isoc_out(%struct.usb_endpoint_descriptor* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %77 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %78 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %77, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %76, %struct.usb_endpoint_descriptor** %78, align 8
  br label %93

79:                                               ; preds = %71, %57
  %80 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %81 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %80, i32 0, i32 1
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %81, align 8
  %83 = icmp ne %struct.usb_endpoint_descriptor* %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %86 = call i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %90 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %91 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %90, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %89, %struct.usb_endpoint_descriptor** %91, align 8
  br label %93

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %88, %75
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %48

96:                                               ; preds = %48
  %97 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %98 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %97, i32 0, i32 2
  %99 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %98, align 8
  %100 = icmp ne %struct.usb_endpoint_descriptor* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %103 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %102, i32 0, i32 1
  %104 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %103, align 8
  %105 = icmp ne %struct.usb_endpoint_descriptor* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %106, %32, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i64 @usb_endpoint_is_isoc_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
