; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_sync_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_sync_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i32 }
%struct.ubi_wl_entry = type { i64, i32 }
%struct.ubi_ec_hdr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"erase PEB %d, old EC %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"erase counter overflow at PEB %d, EC %llu\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"erased PEB %d, new EC %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*, i32)* @sync_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_erase(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_ec_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %12 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %15 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @dbg_wl(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %20 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %21 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %24 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @paranoid_check_ec(%struct.ubi_device* %19, i32 %22, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %116

32:                                               ; preds = %3
  %33 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call %struct.ubi_ec_hdr* @kzalloc(i32 %35, i32 %36)
  store %struct.ubi_ec_hdr* %37, %struct.ubi_ec_hdr** %9, align 8
  %38 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %39 = icmp ne %struct.ubi_ec_hdr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %116

43:                                               ; preds = %32
  %44 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %45 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %46 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ubi_io_sync_erase(%struct.ubi_device* %44, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %112

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %63 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @ubi_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %112

69:                                               ; preds = %53
  %70 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %71 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @dbg_wl(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @cpu_to_be64(i64 %75)
  %77 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %78 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %80 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %81 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %84 = call i32 @ubi_io_write_ec_hdr(%struct.ubi_device* %79, i32 %82, %struct.ubi_ec_hdr* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %69
  br label %112

88:                                               ; preds = %69
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %91 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %93 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %92, i32 0, i32 1
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %96 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %99 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ugt i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %88
  %103 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %104 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %107 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %88
  %109 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %110 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock(i32* %110)
  br label %112

112:                                              ; preds = %108, %87, %61, %52
  %113 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %114 = call i32 @kfree(%struct.ubi_ec_hdr* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %40, %29
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @dbg_wl(i8*, i32, i64) #1

declare dso_local i32 @paranoid_check_ec(%struct.ubi_device*, i32, i64) #1

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @ubi_io_sync_erase(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_err(i8*, i32, i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @ubi_io_write_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
