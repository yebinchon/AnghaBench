; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_misc.c_ubi_check_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_misc.c_ubi_check_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.ubi_volume** }
%struct.ubi_volume = type { i64, i32, i32, i32 }

@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_check_volume(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 0
  %13 = load %struct.ubi_volume**, %struct.ubi_volume*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %13, i64 %15
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  store %struct.ubi_volume* %17, %struct.ubi_volume** %9, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

24:                                               ; preds = %2
  %25 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %26 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @vmalloc(i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %38 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %44 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ubi_eba_read_leb(%struct.ubi_device* %57, %struct.ubi_volume* %58, i32 %59, i8* %60, i32 0, i32 %61, i32 1)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @EBADMSG, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %76

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %35

76:                                               ; preds = %71, %35
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @vfree(i8* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %31, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @ubi_eba_read_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
