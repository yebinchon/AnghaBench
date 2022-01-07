; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }
%struct.cx8800_fh = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"res: put %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8800_dev*, %struct.cx8800_fh*, i32)* @res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_free(%struct.cx8800_dev* %0, %struct.cx8800_fh* %1, i32 %2) #0 {
  %4 = alloca %struct.cx8800_dev*, align 8
  %5 = alloca %struct.cx8800_fh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx88_core*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %4, align 8
  store %struct.cx8800_fh* %1, %struct.cx8800_fh** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %8, i32 0, i32 1
  %10 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  store %struct.cx88_core* %10, %struct.cx88_core** %7, align 8
  %11 = load %struct.cx8800_fh*, %struct.cx8800_fh** %5, align 8
  %12 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.cx8800_fh*, %struct.cx8800_fh** %5, align 8
  %26 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %32 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %38 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
