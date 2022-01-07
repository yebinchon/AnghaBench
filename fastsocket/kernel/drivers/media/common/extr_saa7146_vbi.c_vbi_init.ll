; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_vv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.saa7146_dev*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@saa7146_buffer_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.saa7146_vv*)* @vbi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_init(%struct.saa7146_dev* %0, %struct.saa7146_vv* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_vv* %1, %struct.saa7146_vv** %4, align 8
  %5 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %6 = bitcast %struct.saa7146_dev* %5 to i8*
  %7 = call i32 @DEB_VBI(i8* %6)
  %8 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %9 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @init_timer(%struct.TYPE_4__* %14)
  %16 = load i32, i32* @saa7146_buffer_timeout, align 4
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 8
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %22 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %21, i32 0, i32 1
  %23 = ptrtoint %struct.TYPE_3__* %22 to i64
  %24 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %25 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %29 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %30 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.saa7146_dev* %28, %struct.saa7146_dev** %31, align 8
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 0
  %34 = call i32 @init_waitqueue_head(i32* %33)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
