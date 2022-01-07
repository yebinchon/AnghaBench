; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_init.c_disconnect_st5481.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_init.c_disconnect_st5481.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.st5481_adapter = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @disconnect_st5481 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect_st5481(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.st5481_adapter*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.st5481_adapter* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.st5481_adapter* %5, %struct.st5481_adapter** %3, align 8
  %6 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %10 = icmp ne %struct.st5481_adapter* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %17 = call i32 @st5481_stop(%struct.st5481_adapter* %16)
  %18 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @st5481_release_b(i32* %21)
  %23 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @st5481_release_b(i32* %26)
  %28 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %29 = call i32 @st5481_release_d(%struct.st5481_adapter* %28)
  %30 = call i32 @mdelay(i32 2)
  %31 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %32 = call i32 @st5481_release_usb(%struct.st5481_adapter* %31)
  %33 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %33, i32 0, i32 0
  %35 = call i32 @hisax_unregister(i32* %34)
  %36 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %37 = call i32 @kfree(%struct.st5481_adapter* %36)
  br label %38

38:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.st5481_adapter* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @st5481_stop(%struct.st5481_adapter*) #1

declare dso_local i32 @st5481_release_b(i32*) #1

declare dso_local i32 @st5481_release_d(%struct.st5481_adapter*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @st5481_release_usb(%struct.st5481_adapter*) #1

declare dso_local i32 @hisax_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.st5481_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
