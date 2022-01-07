; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_ib_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_ib_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i64, i32* }
%struct.radeon_cs_packet = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Packet0 not allowed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_ib_parse(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
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

8:                                                ; preds = %74, %2
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RADEON_CP_PACKET_GET_TYPE(i32 %16)
  %18 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %19, i32 0, i32 1
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
  switch i32 %29, label %60 [
    i32 130, label %30
    i32 129, label %37
    i32 128, label %40
  ]

30:                                               ; preds = %8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %69

37:                                               ; preds = %8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %69

40:                                               ; preds = %8
  %41 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RADEON_CP_PACKET3_GET_OPCODE(i32 %46)
  %48 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @evergreen_vm_packet3_check(%struct.radeon_device* %49, i32* %52, %struct.radeon_cs_packet* %7)
  store i32 %53, i32* %5, align 4
  %54 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %69

60:                                               ; preds = %8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %60, %40, %37, %30
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %80

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %77 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %8, label %80

80:                                               ; preds = %74, %72
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @RADEON_CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @RADEON_CP_PACKET3_GET_OPCODE(i32) #1

declare dso_local i32 @evergreen_vm_packet3_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
