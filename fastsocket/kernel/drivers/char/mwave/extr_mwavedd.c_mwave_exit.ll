; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_mwavedd.c_mwave_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_mwavedd.c_mwave_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i64, i64, i64, i64 }

@mwave_s_mdd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TRACE_MWAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mwavedd::mwave_exit entry\0A\00", align 1
@mwave_misc_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mwavedd::mwave_exit exit\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@i = common dso_local global i64 0, align 8
@mwave_dev_attrs = common dso_local global i32* null, align 8
@mwave_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mwave_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwave_exit() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* @mwave_s_mdd, %struct.TYPE_3__** %1, align 8
  %2 = load i32, i32* @TRACE_MWAVE, align 4
  %3 = call i32 @PRINTK_1(i32 %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @serial8250_unregister_port(i64 %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @misc_deregister(i32* @mwave_misc_dev)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = call i32 @tp3780I_DisableDSP(i32* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @tp3780I_ReleaseResources(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = call i32 @tp3780I_Cleanup(i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* @TRACE_MWAVE, align 4
  %49 = call i32 @PRINTK_1(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PRINTK_1(i32, i8*) #1

declare dso_local i32 @serial8250_unregister_port(i64) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @tp3780I_DisableDSP(i32*) #1

declare dso_local i32 @tp3780I_ReleaseResources(i32*) #1

declare dso_local i32 @tp3780I_Cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
