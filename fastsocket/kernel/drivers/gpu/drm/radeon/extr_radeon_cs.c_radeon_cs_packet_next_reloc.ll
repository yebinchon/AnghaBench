; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_next_reloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_next_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*, i32, %struct.radeon_cs_chunk* }
%struct.radeon_cs_reloc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_cs_chunk = type { i32, i32* }
%struct.radeon_cs_packet = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"No relocation chunk !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PACKET_TYPE3 = common dso_local global i64 0, align 8
@RADEON_PACKET3_NOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"No packet3 for relocation for packet at %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %0, %struct.radeon_cs_reloc** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_reloc**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cs_chunk*, align 8
  %9 = alloca %struct.radeon_cs_packet, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_reloc** %1, %struct.radeon_cs_reloc*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %133

20:                                               ; preds = %3
  %21 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %6, align 8
  store %struct.radeon_cs_reloc* null, %struct.radeon_cs_reloc** %21, align 8
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 4
  %24 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %23, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %24, i64 %28
  store %struct.radeon_cs_chunk* %29, %struct.radeon_cs_chunk** %8, align 8
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %31 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %30, %struct.radeon_cs_packet* %9, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %133

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 2
  %43 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RADEON_PACKET_TYPE3, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RADEON_PACKET3_NOP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %39
  %59 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %63 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %62, %struct.radeon_cs_packet* %9)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %133

66:                                               ; preds = %53
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  %71 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %67, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp uge i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %84 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %83, %struct.radeon_cs_packet* %9)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %133

87:                                               ; preds = %66
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %92 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %91, i32 0, i32 2
  %93 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %92, align 8
  %94 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %6, align 8
  store %struct.radeon_cs_reloc* %93, %struct.radeon_cs_reloc** %94, align 8
  %95 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %96 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 3
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 32
  %104 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %6, align 8
  %105 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %104, align 8
  %106 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %109 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, 0
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %6, align 8
  %117 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %116, align 8
  %118 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %115
  store i32 %121, i32* %119, align 4
  br label %132

122:                                              ; preds = %87
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %124 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %123, i32 0, i32 1
  %125 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = udiv i32 %126, 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %125, i64 %128
  %130 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %129, align 8
  %131 = load %struct.radeon_cs_reloc**, %struct.radeon_cs_reloc*** %6, align 8
  store %struct.radeon_cs_reloc* %130, %struct.radeon_cs_reloc** %131, align 8
  br label %132

132:                                              ; preds = %122, %90
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %77, %58, %37, %16
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
