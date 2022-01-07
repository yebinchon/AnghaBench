; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_cleanup_glue_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_cleanup_glue_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kobject = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.kobject*)* @cleanup_glue_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_glue_dir(%struct.device* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobject*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobject* %1, %struct.kobject** %4, align 8
  %5 = load %struct.kobject*, %struct.kobject** %4, align 8
  %6 = icmp ne %struct.kobject* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.kobject*, %struct.kobject** %4, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = icmp ne i32* %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12, %7, %2
  br label %27

24:                                               ; preds = %12
  %25 = load %struct.kobject*, %struct.kobject** %4, align 8
  %26 = call i32 @kobject_put(%struct.kobject* %25)
  br label %27

27:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
