; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_ioctl_process_job_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_ioctl_process_job_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_operation = type { i32 }
%struct.ioctl_job_cb_ctx = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"ioctl_process_job_callback: op=0x%p, cb_data=0x%p\0A\00", align 1
@cryptocop_ioc_process_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptocop_operation*, i8*)* @ioctl_process_job_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_process_job_callback(%struct.cryptocop_operation* %0, i8* %1) #0 {
  %3 = alloca %struct.cryptocop_operation*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ioctl_job_cb_ctx*, align 8
  store %struct.cryptocop_operation* %0, %struct.cryptocop_operation** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ioctl_job_cb_ctx*
  store %struct.ioctl_job_cb_ctx* %7, %struct.ioctl_job_cb_ctx** %5, align 8
  %8 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.cryptocop_operation* %8, i8* %9)
  %11 = call i32 @DEBUG(i32 %10)
  %12 = load %struct.ioctl_job_cb_ctx*, %struct.ioctl_job_cb_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.ioctl_job_cb_ctx, %struct.ioctl_job_cb_ctx* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = call i32 @wake_up(i32* @cryptocop_ioc_process_wq)
  ret void
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, %struct.cryptocop_operation*, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
