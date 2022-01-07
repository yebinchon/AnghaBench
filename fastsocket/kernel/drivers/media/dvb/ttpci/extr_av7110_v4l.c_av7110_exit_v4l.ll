; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_exit_v4l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_exit_v4l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.saa7146_dev*, i32, i32 }
%struct.saa7146_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_exit_v4l(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %4 = load %struct.av7110*, %struct.av7110** %2, align 8
  %5 = getelementptr inbounds %struct.av7110, %struct.av7110* %4, i32 0, i32 0
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  store %struct.saa7146_dev* %6, %struct.saa7146_dev** %3, align 8
  %7 = load %struct.av7110*, %struct.av7110** %2, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 2
  %9 = load %struct.av7110*, %struct.av7110** %2, align 8
  %10 = getelementptr inbounds %struct.av7110, %struct.av7110* %9, i32 0, i32 0
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %12 = call i32 @saa7146_unregister_device(i32* %8, %struct.saa7146_dev* %11)
  %13 = load %struct.av7110*, %struct.av7110** %2, align 8
  %14 = getelementptr inbounds %struct.av7110, %struct.av7110* %13, i32 0, i32 1
  %15 = load %struct.av7110*, %struct.av7110** %2, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  %18 = call i32 @saa7146_unregister_device(i32* %14, %struct.saa7146_dev* %17)
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %20 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %19)
  ret i32 0
}

declare dso_local i32 @saa7146_unregister_device(i32*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
