; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_radio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_radio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bttv_fh* }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { i32, i32 }
%struct.saa6588_command = type { i32 }

@core = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@SAA6588_CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @radio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.bttv_fh*, align 8
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.saa6588_command, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  store %struct.bttv_fh* %8, %struct.bttv_fh** %3, align 8
  %9 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %10 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %9, i32 0, i32 1
  %11 = load %struct.bttv*, %struct.bttv** %10, align 8
  store %struct.bttv* %11, %struct.bttv** %4, align 8
  %12 = load %struct.bttv*, %struct.bttv** %4, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 1
  %14 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %15 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @v4l2_prio_close(i32* %13, i32 %16)
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  store %struct.bttv_fh* null, %struct.bttv_fh** %19, align 8
  %20 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %21 = call i32 @kfree(%struct.bttv_fh* %20)
  %22 = load %struct.bttv*, %struct.bttv** %4, align 8
  %23 = getelementptr inbounds %struct.bttv, %struct.bttv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.bttv*, %struct.bttv** %4, align 8
  %27 = load i32, i32* @core, align 4
  %28 = load i32, i32* @ioctl, align 4
  %29 = load i32, i32* @SAA6588_CMD_CLOSE, align 4
  %30 = call i32 @bttv_call_all(%struct.bttv* %26, i32 %27, i32 %28, i32 %29, %struct.saa6588_command* %5)
  ret i32 0
}

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

declare dso_local i32 @kfree(%struct.bttv_fh*) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, i32, %struct.saa6588_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
