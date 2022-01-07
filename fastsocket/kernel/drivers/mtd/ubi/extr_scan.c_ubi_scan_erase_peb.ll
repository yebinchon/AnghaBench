; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_ubi_scan_erase_peb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_ubi_scan_erase_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_scan_info = type { i32 }
%struct.ubi_ec_hdr = type { i32 }

@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"erase counter overflow at PEB %d, EC %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_scan_erase_peb(%struct.ubi_device* %0, %struct.ubi_scan_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_scan_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_ec_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_scan_info* %1, %struct.ubi_scan_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @ubi_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ubi_ec_hdr* @kzalloc(i32 %25, i32 %26)
  store %struct.ubi_ec_hdr* %27, %struct.ubi_ec_hdr** %11, align 8
  %28 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %29 = icmp ne %struct.ubi_ec_hdr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_be64(i32 %34)
  %36 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ubi_io_sync_erase(%struct.ubi_device* %38, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %48 = call i32 @ubi_io_write_ec_hdr(%struct.ubi_device* %45, i32 %46, %struct.ubi_ec_hdr* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %51 = call i32 @kfree(%struct.ubi_ec_hdr* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %30, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ubi_err(i8*, i32, i32) #1

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_io_sync_erase(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_io_write_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
