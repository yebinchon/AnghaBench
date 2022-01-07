; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32 }
%struct.file = type { %struct.saa7146_fh* }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.file*)* @vbi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_close(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  store %struct.saa7146_fh* %9, %struct.saa7146_fh** %5, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %10, i32 0, i32 0
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  store %struct.saa7146_vv* %12, %struct.saa7146_vv** %6, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %15 = bitcast %struct.saa7146_fh* %14 to i8*
  %16 = call i32 @DEB_VBI(i8* %15)
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %18 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %19 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %18, i32 0, i32 0
  %20 = load %struct.saa7146_fh*, %struct.saa7146_fh** %19, align 8
  %21 = icmp eq %struct.saa7146_fh* %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call i32 @vbi_stop(%struct.saa7146_fh* %23, %struct.file* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %28 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %29 = call i32 @saa7146_res_free(%struct.saa7146_fh* %27, i32 %28)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @vbi_stop(%struct.saa7146_fh*, %struct.file*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
