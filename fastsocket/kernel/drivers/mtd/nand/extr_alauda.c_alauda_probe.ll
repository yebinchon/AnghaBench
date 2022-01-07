; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.alauda = type { i32, i32, i32, i32, i8*, i32, i8*, %struct.usb_interface* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ALAUDA_PORT_XD = common dso_local global i32 0, align 4
@ALAUDA_PORT_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"alauda probed\0A\00", align 1
@alauda_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @alauda_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.alauda*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %9, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %10, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %11, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.alauda* @kzalloc(i32 96, i32 %16)
  store %struct.alauda* %17, %struct.alauda** %6, align 8
  %18 = load %struct.alauda*, %struct.alauda** %6, align 8
  %19 = icmp ne %struct.alauda* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %141

21:                                               ; preds = %2
  %22 = load %struct.alauda*, %struct.alauda** %6, align 8
  %23 = getelementptr inbounds %struct.alauda, %struct.alauda* %22, i32 0, i32 0
  %24 = call i32 @kref_init(i32* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = load %struct.alauda*, %struct.alauda** %6, align 8
  %27 = call i32 @usb_set_intfdata(%struct.usb_interface* %25, %struct.alauda* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = call i32 @usb_get_dev(i32 %29)
  %31 = load %struct.alauda*, %struct.alauda** %6, align 8
  %32 = getelementptr inbounds %struct.alauda, %struct.alauda* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = load %struct.alauda*, %struct.alauda** %6, align 8
  %35 = getelementptr inbounds %struct.alauda, %struct.alauda* %34, i32 0, i32 7
  store %struct.usb_interface* %33, %struct.usb_interface** %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 1
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %37, align 8
  store %struct.usb_host_interface* %38, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %73, %21
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %48 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %53, %struct.usb_endpoint_descriptor** %8, align 8
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %55 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_endpoint_descriptor* %58, %struct.usb_endpoint_descriptor** %9, align 8
  br label %72

59:                                               ; preds = %46
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %61 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_endpoint_descriptor* %67, %struct.usb_endpoint_descriptor** %11, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_endpoint_descriptor* %69, %struct.usb_endpoint_descriptor** %10, align 8
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %39

76:                                               ; preds = %39
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %80 = icmp ne %struct.usb_endpoint_descriptor* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %83 = icmp ne %struct.usb_endpoint_descriptor* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %86 = icmp ne %struct.usb_endpoint_descriptor* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84, %81, %76
  br label %141

88:                                               ; preds = %84
  %89 = load %struct.alauda*, %struct.alauda** %6, align 8
  %90 = getelementptr inbounds %struct.alauda, %struct.alauda* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %93 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %92)
  %94 = call i8* @usb_sndbulkpipe(i32 %91, i32 %93)
  %95 = load %struct.alauda*, %struct.alauda** %6, align 8
  %96 = getelementptr inbounds %struct.alauda, %struct.alauda* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.alauda*, %struct.alauda** %6, align 8
  %98 = getelementptr inbounds %struct.alauda, %struct.alauda* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %101 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %100)
  %102 = call i32 @usb_rcvbulkpipe(i32 %99, i32 %101)
  %103 = load %struct.alauda*, %struct.alauda** %6, align 8
  %104 = getelementptr inbounds %struct.alauda, %struct.alauda* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.alauda*, %struct.alauda** %6, align 8
  %106 = getelementptr inbounds %struct.alauda, %struct.alauda* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %109 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %108)
  %110 = call i8* @usb_sndbulkpipe(i32 %107, i32 %109)
  %111 = load %struct.alauda*, %struct.alauda** %6, align 8
  %112 = getelementptr inbounds %struct.alauda, %struct.alauda* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.alauda*, %struct.alauda** %6, align 8
  %114 = getelementptr inbounds %struct.alauda, %struct.alauda* %113, i64 1
  %115 = load %struct.alauda*, %struct.alauda** %6, align 8
  %116 = call i32 @memcpy(%struct.alauda* %114, %struct.alauda* %115, i32 48)
  %117 = load %struct.alauda*, %struct.alauda** %6, align 8
  %118 = getelementptr inbounds %struct.alauda, %struct.alauda* %117, i64 0
  %119 = getelementptr inbounds %struct.alauda, %struct.alauda* %118, i32 0, i32 2
  %120 = call i32 @mutex_init(i32* %119)
  %121 = load %struct.alauda*, %struct.alauda** %6, align 8
  %122 = getelementptr inbounds %struct.alauda, %struct.alauda* %121, i64 1
  %123 = getelementptr inbounds %struct.alauda, %struct.alauda* %122, i32 0, i32 2
  %124 = call i32 @mutex_init(i32* %123)
  %125 = load i32, i32* @ALAUDA_PORT_XD, align 4
  %126 = load %struct.alauda*, %struct.alauda** %6, align 8
  %127 = getelementptr inbounds %struct.alauda, %struct.alauda* %126, i64 0
  %128 = getelementptr inbounds %struct.alauda, %struct.alauda* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @ALAUDA_PORT_SM, align 4
  %130 = load %struct.alauda*, %struct.alauda** %6, align 8
  %131 = getelementptr inbounds %struct.alauda, %struct.alauda* %130, i64 1
  %132 = getelementptr inbounds %struct.alauda, %struct.alauda* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  %135 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.alauda*, %struct.alauda** %6, align 8
  %137 = call i32 @alauda_check_media(%struct.alauda* %136)
  %138 = load %struct.alauda*, %struct.alauda** %6, align 8
  %139 = getelementptr inbounds %struct.alauda, %struct.alauda* %138, i64 1
  %140 = call i32 @alauda_check_media(%struct.alauda* %139)
  store i32 0, i32* %3, align 4
  br label %151

141:                                              ; preds = %87, %20
  %142 = load %struct.alauda*, %struct.alauda** %6, align 8
  %143 = icmp ne %struct.alauda* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.alauda*, %struct.alauda** %6, align 8
  %146 = getelementptr inbounds %struct.alauda, %struct.alauda* %145, i32 0, i32 0
  %147 = load i32, i32* @alauda_delete, align 4
  %148 = call i32 @kref_put(i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %88
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.alauda* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.alauda*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @memcpy(%struct.alauda*, %struct.alauda*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @alauda_check_media(%struct.alauda*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
