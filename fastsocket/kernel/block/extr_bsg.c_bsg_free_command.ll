; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_free_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_free_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_command = type { %struct.bsg_device* }
%struct.bsg_device = type { i32, i32, i32 }

@bsg_cmd_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsg_command*)* @bsg_free_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsg_free_command(%struct.bsg_command* %0) #0 {
  %2 = alloca %struct.bsg_command*, align 8
  %3 = alloca %struct.bsg_device*, align 8
  %4 = alloca i64, align 8
  store %struct.bsg_command* %0, %struct.bsg_command** %2, align 8
  %5 = load %struct.bsg_command*, %struct.bsg_command** %2, align 8
  %6 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %5, i32 0, i32 0
  %7 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  store %struct.bsg_device* %7, %struct.bsg_device** %3, align 8
  %8 = load i32, i32* @bsg_cmd_cachep, align 4
  %9 = load %struct.bsg_command*, %struct.bsg_command** %2, align 8
  %10 = call i32 @kmem_cache_free(i32 %8, %struct.bsg_command* %9)
  %11 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %12 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %16 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %20 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %19, i32 0, i32 1
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %24 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.bsg_command*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
