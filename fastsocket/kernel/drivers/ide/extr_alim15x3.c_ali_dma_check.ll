; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_dma_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_dma_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ide_cmd = type { i32 }

@m5229_revision = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.ide_cmd*)* @ali_dma_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali_dma_check(%struct.TYPE_3__* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %5, align 8
  %6 = load i32, i32* @m5229_revision, align 4
  %7 = icmp slt i32 %6, 194
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ide_disk, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %24

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %8, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
