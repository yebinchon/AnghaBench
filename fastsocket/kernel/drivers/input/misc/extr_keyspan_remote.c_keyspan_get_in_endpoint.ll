; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_keyspan_remote.c_keyspan_get_in_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_keyspan_remote.c_keyspan_get_in_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_endpoint_descriptor* (%struct.usb_host_interface*)* @keyspan_get_in_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_endpoint_descriptor* @keyspan_get_in_endpoint(%struct.usb_host_interface* %0) #0 {
  %2 = alloca %struct.usb_endpoint_descriptor*, align 8
  %3 = alloca %struct.usb_host_interface*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %9 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %3, align 8
  %15 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %20, %struct.usb_endpoint_descriptor** %4, align 8
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %22 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  store %struct.usb_endpoint_descriptor* %25, %struct.usb_endpoint_descriptor** %2, align 8
  br label %31

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %2, align 8
  ret %struct.usb_endpoint_descriptor* %32
}

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
