; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_openprom.c_openprom_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_openprom.c_openprom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i64 }
%struct.TYPE_2__ = type { i32* }

@FMODE_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@options_node = common dso_local global i32* null, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @openprom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openprom_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %117 [
    i32 138, label %16
    i32 135, label %16
    i32 130, label %33
    i32 129, label %33
    i32 136, label %50
    i32 142, label %50
    i32 137, label %50
    i32 134, label %50
    i32 128, label %69
    i32 140, label %69
    i32 139, label %69
    i32 141, label %69
    i32 131, label %69
    i32 132, label %69
    i32 133, label %69
    i32 148, label %85
    i32 144, label %85
    i32 145, label %85
    i32 146, label %85
    i32 147, label %85
    i32 143, label %101
  ]

16:                                               ; preds = %4, %4
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FMODE_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %120

26:                                               ; preds = %16
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i32*, i32** @options_node, align 8
  %32 = call i32 @openprom_sunos_ioctl(%struct.inode* %27, %struct.file* %28, i32 %29, i64 %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %120

33:                                               ; preds = %4, %4
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMODE_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %120

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.file*, %struct.file** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** @options_node, align 8
  %49 = call i32 @openprom_sunos_ioctl(%struct.inode* %44, %struct.file* %45, i32 %46, i64 %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %120

50:                                               ; preds = %4, %4, %4, %4
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FMODE_READ, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %120

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @openprom_sunos_ioctl(%struct.inode* %61, %struct.file* %62, i32 %63, i64 %64, i32* %67)
  store i32 %68, i32* %5, align 4
  br label %120

69:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FMODE_READ, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %120

79:                                               ; preds = %69
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @openprom_sunos_ioctl(%struct.inode* %80, %struct.file* %81, i32 %82, i64 %83, i32* null)
  store i32 %84, i32* %5, align 4
  br label %120

85:                                               ; preds = %4, %4, %4, %4, %4
  %86 = load %struct.file*, %struct.file** %7, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FMODE_READ, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EBADF, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %120

95:                                               ; preds = %85
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.file*, %struct.file** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @openprom_bsd_ioctl(%struct.inode* %96, %struct.file* %97, i32 %98, i64 %99)
  store i32 %100, i32* %5, align 4
  br label %120

101:                                              ; preds = %4
  %102 = load %struct.file*, %struct.file** %7, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FMODE_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EBADF, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %120

111:                                              ; preds = %101
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = load %struct.file*, %struct.file** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @openprom_bsd_ioctl(%struct.inode* %112, %struct.file* %113, i32 %114, i64 %115)
  store i32 %116, i32* %5, align 4
  br label %120

117:                                              ; preds = %4
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %111, %108, %95, %92, %79, %76, %60, %57, %43, %40, %26, %23
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @openprom_sunos_ioctl(%struct.inode*, %struct.file*, i32, i64, i32*) #1

declare dso_local i32 @openprom_bsd_ioctl(%struct.inode*, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
