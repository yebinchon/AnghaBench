; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }

@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"mgslpc_release(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mgslpc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgslpc_release(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcmcia_device*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.pcmcia_device*
  store %struct.pcmcia_device* %5, %struct.pcmcia_device** %3, align 8
  %6 = load i64, i64* @debug_level, align 8
  %7 = load i64, i64* @DEBUG_LEVEL_INFO, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %13)
  ret void
}

declare dso_local i32 @printk(i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
