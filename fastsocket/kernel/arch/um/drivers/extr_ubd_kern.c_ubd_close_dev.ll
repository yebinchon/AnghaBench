; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_close_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_close_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubd*)* @ubd_close_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubd_close_dev(%struct.ubd* %0) #0 {
  %2 = alloca %struct.ubd*, align 8
  store %struct.ubd* %0, %struct.ubd** %2, align 8
  %3 = load %struct.ubd*, %struct.ubd** %2, align 8
  %4 = getelementptr inbounds %struct.ubd, %struct.ubd* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @os_close_file(i32 %5)
  %7 = load %struct.ubd*, %struct.ubd** %2, align 8
  %8 = getelementptr inbounds %struct.ubd, %struct.ubd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.ubd*, %struct.ubd** %2, align 8
  %15 = getelementptr inbounds %struct.ubd, %struct.ubd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @os_close_file(i32 %17)
  %19 = load %struct.ubd*, %struct.ubd** %2, align 8
  %20 = getelementptr inbounds %struct.ubd, %struct.ubd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @vfree(i32* %22)
  %24 = load %struct.ubd*, %struct.ubd** %2, align 8
  %25 = getelementptr inbounds %struct.ubd, %struct.ubd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
