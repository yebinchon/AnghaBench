; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_ide_tf_set_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_ide_tf_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ide_cmd = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IDE_TFLAG_LBA48 = common dso_local global i32 0, align 4
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@IDE_TFLAG_MULTI_PIO = common dso_local global i32 0, align 4
@ide_rw_cmds = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.ide_cmd*, i64)* @ide_tf_set_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_tf_set_cmd(%struct.TYPE_5__* %0, %struct.ide_cmd* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ide_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IDE_TFLAG_LBA48, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 0
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @ATA_PROT_DMA, align 4
  %32 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  store i64 8, i64* %7, align 8
  br label %50

34:                                               ; preds = %3
  %35 = load i32, i32* @ATA_PROT_PIO, align 4
  %36 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @IDE_TFLAG_MULTI_PIO, align 4
  %44 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i64 0, i64* %7, align 8
  br label %49

48:                                               ; preds = %34
  store i64 4, i64* %7, align 8
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32*, i32** @ide_rw_cmds, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
