; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_dmaqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dev:%p, dmaq:%p, state:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"q->curr:%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"aiii. no current buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_buffer_finish(%struct.saa7146_dev* %0, %struct.saa7146_dmaqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_dmaqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_dmaqueue* %1, %struct.saa7146_dmaqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @DEB_EE(i8* %14)
  %16 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %17 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = bitcast %struct.TYPE_4__* %18 to i8*
  %20 = call i32 @DEB_EE(i8* %19)
  %21 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %22 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %29 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp eq %struct.TYPE_4__* null, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @DEB_D(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %55

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %37 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %42 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = call i32 @do_gettimeofday(i32* %45)
  %47 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %48 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @wake_up(i32* %51)
  %53 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %54 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %53, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %54, align 8
  br label %55

55:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
