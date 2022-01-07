; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32*, i32, i32 }

@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i32 0, align 4
@MODE_SELECT = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@BLKPREP_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @ide_cdrom_prep_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cdrom_prep_pc(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @READ_6, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WRITE_6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13, %1
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 224
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @READ_10, align 4
  %48 = load i32, i32* @READ_6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  store i32 10, i32* %55, align 8
  %56 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %56, i32* %2, align 4
  br label %76

57:                                               ; preds = %13
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MODE_SENSE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MODE_SELECT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %71 = load %struct.request*, %struct.request** %3, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %69, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
