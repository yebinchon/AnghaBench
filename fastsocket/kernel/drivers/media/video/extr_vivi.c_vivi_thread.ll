; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivi_fh = type { %struct.vivi_dev* }
%struct.vivi_dev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"thread started\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"thread: exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vivi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vivi_fh*, align 8
  %4 = alloca %struct.vivi_dev*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vivi_fh*
  store %struct.vivi_fh* %6, %struct.vivi_fh** %3, align 8
  %7 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %8 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %7, i32 0, i32 0
  %9 = load %struct.vivi_dev*, %struct.vivi_dev** %8, align 8
  store %struct.vivi_dev* %9, %struct.vivi_dev** %4, align 8
  %10 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %11 = call i32 @dprintk(%struct.vivi_dev* %10, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @set_freezable()
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %15 = call i32 @vivi_sleep(%struct.vivi_fh* %14)
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %13

20:                                               ; preds = %18
  %21 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %22 = call i32 @dprintk(%struct.vivi_dev* %21, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(%struct.vivi_dev*, i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @vivi_sleep(%struct.vivi_fh*) #1

declare dso_local i64 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
