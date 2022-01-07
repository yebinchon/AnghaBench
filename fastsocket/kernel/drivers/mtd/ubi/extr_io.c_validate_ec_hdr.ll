; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_validate_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_validate_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_ec_hdr = type { i64, i32, i32, i32 }

@UBI_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"node with incompatible UBI version found: this UBI version is %d, image version is %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"bad VID header offset %d, expected %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bad data offset %d, expected %d\00", align 1
@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"bad erase counter %lld\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad EC header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_ec_hdr*)* @validate_ec_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ec_hdr(%struct.ubi_device* %0, %struct.ubi_ec_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_ec_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_ec_hdr* %1, %struct.ubi_ec_hdr** %5, align 8
  %9 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @be64_to_cpu(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UBI_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i64, i64* @UBI_VERSION, align 8
  %28 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %31)
  br label %68

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  br label %68

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55)
  br label %68

57:                                               ; preds = %45
  %58 = load i64, i64* %6, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %57
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %64, %51, %39, %26
  %69 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %71 = call i32 @ubi_dbg_dump_ec_hdr(%struct.ubi_ec_hdr* %70)
  %72 = call i32 (...) @ubi_dbg_dump_stack()
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %67
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(i8*, ...) #1

declare dso_local i32 @ubi_dbg_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i32 @ubi_dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
