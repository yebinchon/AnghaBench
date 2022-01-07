; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_free_one_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_free_one_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chan*, i32)* @free_one_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_one_chan(%struct.chan* %0, i32 %1) #0 {
  %3 = alloca %struct.chan*, align 8
  %4 = alloca i32, align 4
  store %struct.chan* %0, %struct.chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.chan*, %struct.chan** %3, align 8
  %6 = getelementptr inbounds %struct.chan, %struct.chan* %5, i32 0, i32 5
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.chan*, %struct.chan** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @close_one_chan(%struct.chan* %8, i32 %9)
  %11 = load %struct.chan*, %struct.chan** %3, align 8
  %12 = getelementptr inbounds %struct.chan, %struct.chan* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.chan*, %struct.chan** %3, align 8
  %19 = getelementptr inbounds %struct.chan, %struct.chan* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.chan*, %struct.chan** %3, align 8
  %24 = getelementptr inbounds %struct.chan, %struct.chan* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.chan*, %struct.chan** %3, align 8
  %29 = getelementptr inbounds %struct.chan, %struct.chan* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.chan*, %struct.chan** %3, align 8
  %34 = getelementptr inbounds %struct.chan, %struct.chan* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.chan*, %struct.chan** %3, align 8
  %39 = getelementptr inbounds %struct.chan, %struct.chan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ignore_sigio_fd(i32 %40)
  br label %42

42:                                               ; preds = %37, %32, %27
  %43 = load %struct.chan*, %struct.chan** %3, align 8
  %44 = call i32 @kfree(%struct.chan* %43)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @close_one_chan(%struct.chan*, i32) #1

declare dso_local i32 @ignore_sigio_fd(i32) #1

declare dso_local i32 @kfree(%struct.chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
