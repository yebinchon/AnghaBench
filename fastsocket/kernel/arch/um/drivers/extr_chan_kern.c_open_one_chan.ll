; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_open_one_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_open_one_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chan*)* @open_one_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_one_chan(%struct.chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.chan* %0, %struct.chan** %3, align 8
  %6 = load %struct.chan*, %struct.chan** %3, align 8
  %7 = getelementptr inbounds %struct.chan, %struct.chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.chan*, %struct.chan** %3, align 8
  %13 = getelementptr inbounds %struct.chan, %struct.chan* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %15, align 8
  %17 = icmp eq i32 (i32, i32, i32, i32, i32*)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.chan*, %struct.chan** %3, align 8
  %21 = getelementptr inbounds %struct.chan, %struct.chan* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %23, align 8
  %25 = load %struct.chan*, %struct.chan** %3, align 8
  %26 = getelementptr inbounds %struct.chan, %struct.chan* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.chan*, %struct.chan** %3, align 8
  %29 = getelementptr inbounds %struct.chan, %struct.chan* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.chan*, %struct.chan** %3, align 8
  %32 = getelementptr inbounds %struct.chan, %struct.chan* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.chan*, %struct.chan** %3, align 8
  %35 = getelementptr inbounds %struct.chan, %struct.chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.chan*, %struct.chan** %3, align 8
  %38 = getelementptr inbounds %struct.chan, %struct.chan* %37, i32 0, i32 4
  %39 = call i32 %24(i32 %27, i32 %30, i32 %33, i32 %36, i32* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %19, %18
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @os_set_fd_block(i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.chan*, %struct.chan** %3, align 8
  %52 = getelementptr inbounds %struct.chan, %struct.chan* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.chan*, %struct.chan** %3, align 8
  %58 = getelementptr inbounds %struct.chan, %struct.chan* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %55(i32 %56, i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %45
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.chan*, %struct.chan** %3, align 8
  %65 = getelementptr inbounds %struct.chan, %struct.chan* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.chan*, %struct.chan** %3, align 8
  %67 = getelementptr inbounds %struct.chan, %struct.chan* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %50, %43, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @os_set_fd_block(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
