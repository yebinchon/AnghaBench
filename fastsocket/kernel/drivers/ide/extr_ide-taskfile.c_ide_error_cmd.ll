; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_ide_error_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_ide_error_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ide_cmd = type { i32, i32, i32, i64 }

@IDE_TFLAG_FS = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i64 0, align 8
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@IDE_TFLAG_MULTI_PIO = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.ide_cmd*)* @ide_error_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_error_cmd(%struct.TYPE_4__* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ide_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %4, align 8
  %6 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IDE_TFLAG_FS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  %13 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATA_PROT_PIO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %12
  %26 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32, %25
  %38 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDE_TFLAG_MULTI_PIO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 9
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %57

51:                                               ; preds = %37
  %52 = load i64, i64* @SECTOR_SIZE, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57, %32, %12
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ide_complete_rq(%struct.TYPE_4__* %62, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %2
  ret void
}

declare dso_local i32 @ide_complete_rq(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
