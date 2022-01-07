; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_dma_cs_next_reloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_dma_cs_next_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, i32, %struct.radeon_cs_reloc**, %struct.radeon_cs_chunk* }
%struct.radeon_cs_chunk = type { i32 }
%struct.radeon_cs_reloc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"No relocation chunk !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_cs_next_reloc(%struct.radeon_cs_parser* %0, %struct.radeon_cs_reloc** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_reloc**, align 8
  %6 = alloca %struct.radeon_cs_chunk*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_reloc** %1, %struct.radeon_cs_reloc*** %5, align 8
  %8 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %5, align 8
  store %struct.radeon_cs_reloc* null, %struct.radeon_cs_reloc** %8, align 8
  %9 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %18, i32 0, i32 4
  %20 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %19, align 8
  %21 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %20, i64 %24
  store %struct.radeon_cs_chunk* %25, %struct.radeon_cs_chunk** %6, align 8
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %17
  %43 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %43, i32 0, i32 3
  %45 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %45, i64 %47
  %49 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %48, align 8
  %50 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %5, align 8
  store %struct.radeon_cs_reloc* %49, %struct.radeon_cs_reloc** %50, align 8
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %34, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
