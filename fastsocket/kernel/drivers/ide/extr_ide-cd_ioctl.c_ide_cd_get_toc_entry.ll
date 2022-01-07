; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_get_toc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_get_toc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.atapi_toc* }
%struct.atapi_toc = type { %struct.TYPE_4__, %struct.atapi_toc_entry* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atapi_toc_entry = type { i32 }

@IDE_AFLAG_TOC_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CDROM_LEADOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, %struct.atapi_toc_entry**)* @ide_cd_get_toc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_get_toc_entry(%struct.TYPE_5__* %0, i32 %1, %struct.atapi_toc_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atapi_toc_entry**, align 8
  %8 = alloca %struct.cdrom_info*, align 8
  %9 = alloca %struct.atapi_toc*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.atapi_toc_entry** %2, %struct.atapi_toc_entry*** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.cdrom_info*, %struct.cdrom_info** %12, align 8
  store %struct.cdrom_info* %13, %struct.cdrom_info** %8, align 8
  %14 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %15 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %14, i32 0, i32 0
  %16 = load %struct.atapi_toc*, %struct.atapi_toc** %15, align 8
  store %struct.atapi_toc* %16, %struct.atapi_toc** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IDE_AFLAG_TOC_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %28 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %32 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %30, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %38 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CDROM_LEADOUT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @CDROM_LEADOUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %50 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %49, i32 0, i32 1
  %51 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %51, i64 %53
  %55 = load %struct.atapi_toc_entry**, %struct.atapi_toc_entry*** %7, align 8
  store %struct.atapi_toc_entry* %54, %struct.atapi_toc_entry** %55, align 8
  br label %87

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %59 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %66 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63, %56
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %63
  %74 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %75 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %74, i32 0, i32 1
  %76 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.atapi_toc*, %struct.atapi_toc** %9, align 8
  %79 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %77, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %76, i64 %83
  %85 = load %struct.atapi_toc_entry**, %struct.atapi_toc_entry*** %7, align 8
  store %struct.atapi_toc_entry* %84, %struct.atapi_toc_entry** %85, align 8
  br label %86

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %48
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %70, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
