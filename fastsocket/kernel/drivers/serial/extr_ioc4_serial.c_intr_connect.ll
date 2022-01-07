; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_intr_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_intr_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_soft = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ioc4_intr_info*, i32 }
%struct.ioc4_intr_info = type { i8*, i32*, i32 }

@IOC4_SIO_INTR_TYPE = common dso_local global i32 0, align 4
@IOC4_OTHER_INTR_TYPE = common dso_local global i32 0, align 4
@MAX_IOC4_INTR_ENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"i %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc4_soft*, i32, i32, i32*, i8*)* @intr_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_connect(%struct.ioc4_soft* %0, i32 %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.ioc4_soft*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ioc4_intr_info*, align 8
  store %struct.ioc4_soft* %0, %struct.ioc4_soft** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IOC4_SIO_INTR_TYPE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IOC4_OTHER_INTR_TYPE, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i1 [ true, %5 ], [ %19, %16 ]
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ioc4_soft*, %struct.ioc4_soft** %6, align 8
  %26 = getelementptr inbounds %struct.ioc4_soft, %struct.ioc4_soft* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MAX_IOC4_INTR_ENTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %20
  %41 = phi i1 [ true, %20 ], [ false, %37 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ioc4_soft*, %struct.ioc4_soft** %6, align 8
  %46 = getelementptr inbounds %struct.ioc4_soft, %struct.ioc4_soft* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.ioc4_intr_info*, %struct.ioc4_intr_info** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ioc4_intr_info, %struct.ioc4_intr_info* %52, i64 %54
  store %struct.ioc4_intr_info* %55, %struct.ioc4_intr_info** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ioc4_intr_info*, %struct.ioc4_intr_info** %12, align 8
  %58 = getelementptr inbounds %struct.ioc4_intr_info, %struct.ioc4_intr_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.ioc4_intr_info*, %struct.ioc4_intr_info** %12, align 8
  %61 = getelementptr inbounds %struct.ioc4_intr_info, %struct.ioc4_intr_info* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.ioc4_intr_info*, %struct.ioc4_intr_info** %12, align 8
  %64 = getelementptr inbounds %struct.ioc4_intr_info, %struct.ioc4_intr_info* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
