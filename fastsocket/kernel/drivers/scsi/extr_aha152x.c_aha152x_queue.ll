; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_aha152x_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_aha152x_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i64 }

@REQUEST_SENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, void (%struct.TYPE_7__*)*)* @aha152x_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha152x_queue(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*)* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca void (%struct.TYPE_7__*)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store void (%struct.TYPE_7__*)* %1, void (%struct.TYPE_7__*)** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %4, align 8
  %7 = call i32 @aha152x_internal_queue(%struct.TYPE_7__* %5, i32* null, i32 0, void (%struct.TYPE_7__*)* %6)
  ret i32 %7
}

declare dso_local i32 @aha152x_internal_queue(%struct.TYPE_7__*, i32*, i32, void (%struct.TYPE_7__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
