; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_vv_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_vv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.saa7146_dev*, i32)* }
%struct.saa7146_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.saa7146_dev*, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"dev:%p, isr:0x%08x\0A\00", align 1
@MASK_27 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"irq: RPS0 (0x%08x).\0A\00", align 1
@saa7146_video_uops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MASK_28 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_15 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"irq: RPS1 vbi workaround (0x%08x).\0A\00", align 1
@MASK_31 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"irq: RPS1 (0x%08x).\0A\00", align 1
@saa7146_vbi_uops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i64)* @vv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vv_callback(%struct.saa7146_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @DEB_INT(i8* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MASK_27, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 0, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DEB_INT(i8* %22)
  %24 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saa7146_video_uops, i32 0, i32 0), align 8
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %24(%struct.saa7146_dev* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MASK_28, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 0, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %35 = load i32, i32* @MC2, align 4
  %36 = call i32 @saa7146_read(%struct.saa7146_dev* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MASK_15, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 0, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DEB_INT(i8* %44)
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %47 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @wake_up(i32* %49)
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %52 = load i32, i32* @MC2, align 4
  %53 = load i32, i32* @MASK_31, align 4
  %54 = call i32 @saa7146_write(%struct.saa7146_dev* %51, i32 %52, i32 %53)
  br label %64

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @DEB_INT(i8* %58)
  %60 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 %60(%struct.saa7146_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %41, %55, %28
  ret void
}

declare dso_local i32 @DEB_INT(i8*) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
