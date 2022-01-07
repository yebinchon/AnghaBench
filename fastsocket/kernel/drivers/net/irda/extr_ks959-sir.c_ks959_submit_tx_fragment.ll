; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_submit_tx_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_submit_tx_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks959_cb = type { i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8*, i8* }

@KINGSUN_SND_PACKET_SIZE = common dso_local global i32 0, align 4
@ks959_send_irq = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks959_cb*)* @ks959_submit_tx_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks959_submit_tx_fragment(%struct.ks959_cb* %0) #0 {
  %2 = alloca %struct.ks959_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ks959_cb* %0, %struct.ks959_cb** %2, align 8
  %6 = load i32, i32* @KINGSUN_SND_PACKET_SIZE, align 4
  %7 = and i32 %6, -8
  %8 = sub nsw i32 %7, 16
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %11 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %16 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %20 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %24 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @KINGSUN_SND_PACKET_SIZE, align 4
  %27 = call i32 @obfuscate_tx_buffer(i32 %21, i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %31 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %37 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %41 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %44 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %47 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_sndctrlpipe(i32 %48, i32 0)
  %50 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %51 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = bitcast %struct.TYPE_4__* %52 to i8*
  %54 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %55 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ks959_send_irq, align 4
  %59 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %60 = call i32 @usb_fill_control_urb(%struct.TYPE_5__* %42, i32 %45, i32 %49, i8* %53, i32 %56, i32 %57, i32 %58, %struct.ks959_cb* %59)
  %61 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %62 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %66 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @usb_submit_urb(%struct.TYPE_5__* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %18
  %73 = load i32, i32* %4, align 4
  br label %75

74:                                               ; preds = %18
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load %struct.ks959_cb*, %struct.ks959_cb** %2, align 8
  %78 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @obfuscate_tx_buffer(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_5__*, i32, i32, i8*, i32, i32, i32, %struct.ks959_cb*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
