; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i64, i32, i32, i32, i32 }

@TTY_CLOSED = common dso_local global i32 0, align 4
@IUCV_DISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_iucv_private*)* @hvc_iucv_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_cleanup(%struct.hvc_iucv_private* %0) #0 {
  %2 = alloca %struct.hvc_iucv_private*, align 8
  store %struct.hvc_iucv_private* %0, %struct.hvc_iucv_private** %2, align 8
  %3 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %4 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %3, i32 0, i32 4
  %5 = call i32 @destroy_tty_buffer_list(i32* %4)
  %6 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %7 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %6, i32 0, i32 3
  %8 = call i32 @destroy_tty_buffer_list(i32* %7)
  %9 = load i32, i32* @TTY_CLOSED, align 4
  %10 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %11 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @IUCV_DISCONN, align 4
  %13 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %14 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %2, align 8
  %16 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @destroy_tty_buffer_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
