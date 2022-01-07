; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vivi_fh* }
%struct.vivi_fh = type { i32, %struct.vivi_dev* }
%struct.vivi_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"mmap called, vma=0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"vma start=0x%08lx, size=%ld, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vivi_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivi_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vivi_fh*, align 8
  %6 = alloca %struct.vivi_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  store %struct.vivi_fh* %10, %struct.vivi_fh** %5, align 8
  %11 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %12 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %11, i32 0, i32 1
  %13 = load %struct.vivi_dev*, %struct.vivi_dev** %12, align 8
  store %struct.vivi_dev* %13, %struct.vivi_dev** %6, align 8
  %14 = load %struct.vivi_dev*, %struct.vivi_dev** %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = ptrtoint %struct.vm_area_struct* %15 to i64
  %17 = call i32 (%struct.vivi_dev*, i32, i8*, i64, ...) @dprintk(%struct.vivi_dev* %14, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %19 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %18, i32 0, i32 0
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = call i32 @videobuf_mmap_mapper(i32* %19, %struct.vm_area_struct* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.vivi_dev*, %struct.vivi_dev** %6, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.vivi_dev*, i32, i8*, i64, ...) @dprintk(%struct.vivi_dev* %22, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @dprintk(%struct.vivi_dev*, i32, i8*, i64, ...) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
