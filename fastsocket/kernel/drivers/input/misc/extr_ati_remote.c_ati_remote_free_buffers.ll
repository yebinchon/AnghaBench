; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote = type { i32, i32, i32, i32, i32, i32, i32 }

@DATA_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ati_remote*)* @ati_remote_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote_free_buffers(%struct.ati_remote* %0) #0 {
  %2 = alloca %struct.ati_remote*, align 8
  store %struct.ati_remote* %0, %struct.ati_remote** %2, align 8
  %3 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %4 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_free_urb(i32 %5)
  %7 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %8 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_free_urb(i32 %9)
  %11 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %12 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DATA_BUFSIZE, align 4
  %15 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %16 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %19 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_buffer_free(i32 %13, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %23 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DATA_BUFSIZE, align 4
  %26 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %27 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ati_remote*, %struct.ati_remote** %2, align 8
  %30 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_buffer_free(i32 %24, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
