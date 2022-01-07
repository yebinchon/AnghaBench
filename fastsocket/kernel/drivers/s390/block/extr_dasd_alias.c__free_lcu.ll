; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__free_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__free_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { %struct.alias_lcu*, %struct.alias_lcu*, %struct.alias_lcu*, %struct.alias_lcu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_lcu*)* @_free_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_free_lcu(%struct.alias_lcu* %0) #0 {
  %2 = alloca %struct.alias_lcu*, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %2, align 8
  %3 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  %4 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %3, i32 0, i32 1
  %5 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %6 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %5, i32 0, i32 3
  %7 = load %struct.alias_lcu*, %struct.alias_lcu** %6, align 8
  %8 = call i32 @kfree(%struct.alias_lcu* %7)
  %9 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  %10 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %9, i32 0, i32 1
  %11 = load %struct.alias_lcu*, %struct.alias_lcu** %10, align 8
  %12 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %11, i32 0, i32 2
  %13 = load %struct.alias_lcu*, %struct.alias_lcu** %12, align 8
  %14 = call i32 @kfree(%struct.alias_lcu* %13)
  %15 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  %16 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %15, i32 0, i32 1
  %17 = load %struct.alias_lcu*, %struct.alias_lcu** %16, align 8
  %18 = call i32 @kfree(%struct.alias_lcu* %17)
  %19 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  %20 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %19, i32 0, i32 0
  %21 = load %struct.alias_lcu*, %struct.alias_lcu** %20, align 8
  %22 = call i32 @kfree(%struct.alias_lcu* %21)
  %23 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  %24 = call i32 @kfree(%struct.alias_lcu* %23)
  ret void
}

declare dso_local i32 @kfree(%struct.alias_lcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
