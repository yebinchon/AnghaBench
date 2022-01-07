; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irtty-sir.c_irtty_start_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irtty-sir.c_irtty_start_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sir_dev = type { %struct.sirtty_cb* }
%struct.sirtty_cb = type { i64, %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@irtty_mutex = common dso_local global i32 0, align 4
@IRTTY_MAGIC = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sir_dev*)* @irtty_start_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irtty_start_dev(%struct.sir_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sir_dev*, align 8
  %4 = alloca %struct.sirtty_cb*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.sir_dev* %0, %struct.sir_dev** %3, align 8
  %6 = call i32 @mutex_lock(i32* @irtty_mutex)
  %7 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %8 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %7, i32 0, i32 0
  %9 = load %struct.sirtty_cb*, %struct.sirtty_cb** %8, align 8
  store %struct.sirtty_cb* %9, %struct.sirtty_cb** %4, align 8
  %10 = load %struct.sirtty_cb*, %struct.sirtty_cb** %4, align 8
  %11 = icmp ne %struct.sirtty_cb* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.sirtty_cb*, %struct.sirtty_cb** %4, align 8
  %14 = getelementptr inbounds %struct.sirtty_cb, %struct.sirtty_cb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IRTTY_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @mutex_unlock(i32* @irtty_mutex)
  %25 = load i32, i32* @ESTALE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %18
  %28 = load %struct.sirtty_cb*, %struct.sirtty_cb** %4, align 8
  %29 = getelementptr inbounds %struct.sirtty_cb, %struct.sirtty_cb* %28, i32 0, i32 1
  %30 = load %struct.tty_struct*, %struct.tty_struct** %29, align 8
  store %struct.tty_struct* %30, %struct.tty_struct** %5, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %34, align 8
  %36 = icmp ne i32 (%struct.tty_struct*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %41, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %44 = call i32 %42(%struct.tty_struct* %43)
  br label %45

45:                                               ; preds = %37, %27
  %46 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @irtty_stop_receiver(%struct.tty_struct* %46, i32 %47)
  %49 = call i32 @mutex_unlock(i32* @irtty_mutex)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %23
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irtty_stop_receiver(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
