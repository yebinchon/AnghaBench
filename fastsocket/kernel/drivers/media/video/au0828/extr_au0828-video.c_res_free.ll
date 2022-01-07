; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_fh = type { i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"res: put %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_fh*, i32)* @res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_free(%struct.au0828_fh* %0, i32 %1) #0 {
  %3 = alloca %struct.au0828_fh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_fh* %0, %struct.au0828_fh** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.au0828_fh*, %struct.au0828_fh** %3, align 8
  %7 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %6, i32 0, i32 1
  %8 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  store %struct.au0828_dev* %8, %struct.au0828_dev** %5, align 8
  %9 = load %struct.au0828_fh*, %struct.au0828_fh** %3, align 8
  %10 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %19 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.au0828_fh*, %struct.au0828_fh** %3, align 8
  %24 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %30 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %36 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
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
