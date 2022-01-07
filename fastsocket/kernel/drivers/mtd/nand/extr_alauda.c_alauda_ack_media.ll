; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_ack_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_ack_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda = type { i32, i32 }

@ALAUDA_ACK_XD_MEDIA_CHANGE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alauda*)* @alauda_ack_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_ack_media(%struct.alauda* %0) #0 {
  %2 = alloca %struct.alauda*, align 8
  %3 = alloca i32, align 4
  store %struct.alauda* %0, %struct.alauda** %2, align 8
  %4 = load %struct.alauda*, %struct.alauda** %2, align 8
  %5 = getelementptr inbounds %struct.alauda, %struct.alauda* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.alauda*, %struct.alauda** %2, align 8
  %8 = getelementptr inbounds %struct.alauda, %struct.alauda* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.alauda*, %struct.alauda** %2, align 8
  %11 = getelementptr inbounds %struct.alauda, %struct.alauda* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_sndctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* @ALAUDA_ACK_XD_MEDIA_CHANGE, align 4
  %15 = load i32, i32* @HZ, align 4
  %16 = call i32 @usb_control_msg(i32 %9, i32 %13, i32 %14, i32 64, i32 0, i32 1, i32* null, i32 0, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.alauda*, %struct.alauda** %2, align 8
  %18 = getelementptr inbounds %struct.alauda, %struct.alauda* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
