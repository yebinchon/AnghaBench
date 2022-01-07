; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_disable_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_disable_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@MC1 = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_disable_overlay(%struct.saa7146_fh* %0) #0 {
  %2 = alloca %struct.saa7146_fh*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %2, align 8
  %4 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %5 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %4, i32 0, i32 0
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  store %struct.saa7146_dev* %6, %struct.saa7146_dev** %3, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %8 = call i32 @saa7146_disable_clipping(%struct.saa7146_dev* %7)
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = load i32, i32* @MC1, align 4
  %11 = load i32, i32* @MASK_22, align 4
  %12 = call i32 @saa7146_write(%struct.saa7146_dev* %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @saa7146_disable_clipping(%struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
