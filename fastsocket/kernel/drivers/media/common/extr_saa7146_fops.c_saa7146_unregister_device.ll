; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_unregister_device(%struct.video_device** %0, %struct.saa7146_dev* %1) #0 {
  %3 = alloca %struct.video_device**, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  store %struct.video_device** %0, %struct.video_device*** %3, align 8
  store %struct.saa7146_dev* %1, %struct.saa7146_dev** %4, align 8
  %5 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %6 = bitcast %struct.saa7146_dev* %5 to i8*
  %7 = call i32 @DEB_EE(i8* %6)
  %8 = load %struct.video_device**, %struct.video_device*** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %8, align 8
  %10 = call i32 @video_unregister_device(%struct.video_device* %9)
  %11 = load %struct.video_device**, %struct.video_device*** %3, align 8
  store %struct.video_device* null, %struct.video_device** %11, align 8
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
