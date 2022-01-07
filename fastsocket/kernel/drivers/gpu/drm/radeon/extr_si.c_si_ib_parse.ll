; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_ib_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_ib_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i64, i32, i32*, i32 }
%struct.radeon_cs_packet = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Packet0 not allowed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Non-PM4 ring %d !\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_ib_parse(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.radeon_cs_packet, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %107, %2
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RADEON_CP_PACKET_GET_TYPE(i32 %16)
  %18 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @RADEON_CP_PACKET_GET_COUNT(i32 %24)
  %26 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %93 [
    i32 131, label %30
    i32 130, label %37
    i32 129, label %40
  ]

30:                                               ; preds = %8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %102

37:                                               ; preds = %8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %102

40:                                               ; preds = %8
  %41 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RADEON_CP_PACKET3_GET_OPCODE(i32 %46)
  %48 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @si_vm_packet3_ce_check(%struct.radeon_device* %54, i32* %57, %struct.radeon_cs_packet* %7)
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %40
  %60 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %75 [
    i32 128, label %63
    i32 133, label %69
    i32 132, label %69
  ]

63:                                               ; preds = %59
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @si_vm_packet3_gfx_check(%struct.radeon_device* %64, i32* %67, %struct.radeon_cs_packet* %7)
  store i32 %68, i32* %5, align 4
  br label %85

69:                                               ; preds = %59, %59
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @si_vm_packet3_compute_check(%struct.radeon_device* %70, i32* %73, %struct.radeon_cs_packet* %7)
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %59
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %75, %69, %63
  br label %86

86:                                               ; preds = %85, %53
  %87 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %6, align 8
  br label %102

93:                                               ; preds = %8
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %93, %86, %37, %30
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %113

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %110 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %8, label %113

113:                                              ; preds = %107, %105
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @RADEON_CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @RADEON_CP_PACKET3_GET_OPCODE(i32) #1

declare dso_local i32 @si_vm_packet3_ce_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @si_vm_packet3_gfx_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @si_vm_packet3_compute_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
