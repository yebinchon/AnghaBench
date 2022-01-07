; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cardstate = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32*, i32*, i64, i32*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"disconnecting Gigaset base\0A\00", align 1
@BAS_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @gigaset_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bas_cardstate*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.cardstate* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.cardstate* %7, %struct.cardstate** %3, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  store %struct.bas_cardstate* %11, %struct.bas_cardstate** %4, align 8
  %12 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %17 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BAS_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @gigaset_bchannel_down(i64 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %35 = call i32 @gigaset_stop(%struct.cardstate* %34)
  %36 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %37 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %36, i32 0, i32 6
  %38 = call i32 @del_timer_sync(i32* %37)
  %39 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %40 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %39, i32 0, i32 5
  %41 = call i32 @del_timer_sync(i32* %40)
  %42 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %43 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %42, i32 0, i32 4
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %46 = call i32 @freeurbs(%struct.cardstate* %45)
  %47 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %48 = call i32 @usb_set_intfdata(%struct.usb_interface* %47, i32* null)
  %49 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %50 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %54 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %56 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %58 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @usb_put_dev(i32* %59)
  %61 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %62 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %64 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %66 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %68 = call i32 @gigaset_freecs(%struct.cardstate* %67)
  ret void
}

declare dso_local %struct.cardstate* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @gigaset_bchannel_down(i64) #1

declare dso_local i32 @gigaset_stop(%struct.cardstate*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @freeurbs(%struct.cardstate*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_put_dev(i32*) #1

declare dso_local i32 @gigaset_freecs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
