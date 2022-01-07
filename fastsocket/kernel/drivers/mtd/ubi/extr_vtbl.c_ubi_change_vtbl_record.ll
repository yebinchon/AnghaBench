; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_ubi_change_vtbl_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_ubi_change_vtbl_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vtbl_record = type { i32 }
%struct.ubi_device = type { i32, i32, i32*, %struct.ubi_volume** }
%struct.ubi_volume = type { i32 }

@UBI_LAYOUT_VOLUME_ID = common dso_local global i32 0, align 4
@empty_vtbl_record = common dso_local global %struct.ubi_vtbl_record zeroinitializer, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE_CRC = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_EBS = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device* %0, i32 %1, %struct.ubi_vtbl_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vtbl_record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ubi_vtbl_record* %2, %struct.ubi_vtbl_record** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ false, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubi_assert(i32 %22)
  %24 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 3
  %26 = load %struct.ubi_volume**, %struct.ubi_volume*** %25, align 8
  %27 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %28 = load i32, i32* @UBI_LAYOUT_VOLUME_ID, align 4
  %29 = call i64 @vol_id2idx(%struct.ubi_device* %27, i32 %28)
  %30 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %26, i64 %29
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %30, align 8
  store %struct.ubi_volume* %31, %struct.ubi_volume** %11, align 8
  %32 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %33 = icmp ne %struct.ubi_vtbl_record* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  store %struct.ubi_vtbl_record* @empty_vtbl_record, %struct.ubi_vtbl_record** %7, align 8
  br label %44

35:                                               ; preds = %20
  %36 = load i32, i32* @UBI_CRC32_INIT, align 4
  %37 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %38 = load i32, i32* @UBI_VTBL_RECORD_SIZE_CRC, align 4
  %39 = call i32 @crc32(i32 %36, %struct.ubi_vtbl_record* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cpu_to_be32(i32 %40)
  %42 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %43 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %34
  %45 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %52 = call i32 @memcpy(i32* %50, %struct.ubi_vtbl_record* %51, i32 4)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %83, %44
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UBI_LAYOUT_VOLUME_EBS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %58, %struct.ubi_volume* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %89

66:                                               ; preds = %57
  %67 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %71 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %74 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @UBI_LONGTERM, align 4
  %77 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %67, %struct.ubi_volume* %68, i32 %69, i32* %72, i32 0, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %89

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %53

86:                                               ; preds = %53
  %87 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %88 = call i32 @paranoid_vtbl_check(%struct.ubi_device* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %80, %64
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i64 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @paranoid_vtbl_check(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
