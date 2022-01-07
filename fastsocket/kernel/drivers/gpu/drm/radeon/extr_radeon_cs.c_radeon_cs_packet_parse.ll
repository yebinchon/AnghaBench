; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.radeon_device*, %struct.radeon_cs_chunk* }
%struct.radeon_device = type { i32 }
%struct.radeon_cs_chunk = type { i32 }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Can not parse packet at %d after CS end %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown packet type %d at %d !\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Packet (%d:%d:%d) end after CS buffer (%d) !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cs_chunk*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 2
  %13 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %12, align 8
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %13, i64 %16
  store %struct.radeon_cs_chunk* %17, %struct.radeon_cs_chunk** %8, align 8
  %18 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %18, i32 0, i32 1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i64, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %124

35:                                               ; preds = %3
  %36 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @RADEON_CP_PACKET_GET_TYPE(i32 %42)
  %44 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @RADEON_CP_PACKET_GET_COUNT(i32 %46)
  %48 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %84 [
    i32 130, label %55
    i32 128, label %76
    i32 129, label %81
  ]

55:                                               ; preds = %35
  %56 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CHIP_R600, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @R100_CP_PACKET0_GET_REG(i32 %62)
  %64 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @RADEON_CP_PACKET0_GET_ONE_REG_WR(i32 %66)
  %68 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  br label %75

70:                                               ; preds = %55
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @R600_CP_PACKET0_GET_REG(i32 %71)
  %73 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %61
  br label %93

76:                                               ; preds = %35
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @RADEON_CP_PACKET3_GET_OPCODE(i32 %77)
  %79 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %93

81:                                               ; preds = %35
  %82 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 4
  br label %93

84:                                               ; preds = %35
  %85 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %86 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i8*, i64, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %124

93:                                               ; preds = %81, %76, %75
  %94 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  %98 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %99 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add i32 %97, %100
  %102 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp uge i32 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %93
  %107 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %108 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %112 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %115 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %118 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i64, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %110, i32 %113, i32 %116, i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %106, %84, %26
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @DRM_ERROR(i8*, i64, i32, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @R100_CP_PACKET0_GET_REG(i32) #1

declare dso_local i64 @RADEON_CP_PACKET0_GET_ONE_REG_WR(i32) #1

declare dso_local i32 @R600_CP_PACKET0_GET_REG(i32) #1

declare dso_local i32 @RADEON_CP_PACKET3_GET_OPCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
